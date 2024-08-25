import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import nodemailer from "nodemailer";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const supabaseAdmin = getSupabaseAdminClient();
  const type = formData.get("type") === "recovery" ? "recovery" : "magiclink";

  const tenantUrl = (path) => buildUrl(path, params.tenant, request);

  // 从AUTH Service获取一个OTP
  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink(
    {
      email,
      type,
    }
  );

  // prevent the magic link login for other tenants
  const user = linkData.user;
  if (error || !user.app_metadata?.tenants.includes(params.tenant)) {
    return NextResponse.redirect(tenantUrl(`/error?type=${type}`), 302);
  }

  const { hashed_token } = linkData.properties;

  // 构造包含OTP的链接
  const constructedLink = tenantUrl(
    `/auth/verify?hashed_token=${hashed_token}&type=${type}`
  );

  // in local development, send to supabase_inbucket_task-system
  // uncomment smtp_port = 54325 in supabase/config.toml
  const transporter = nodemailer.createTransport({
    host: "localhost",
    port: 54325,
  });

  const initialSentence =
    type === "recovery"
      ? "Hi there, you requested a password change!"
      : "Hi there, this is a custom magic link email!";
  const secondSentenceEnding = type === "recovery" ? "change it" : "log in";

  await transporter.sendMail({
    from: "Your Company <your@mail.whatever>",
    to: email,
    subject: "Magic Link",
    html: `
    <h1>${initialSentence}</h1>
    <p>Click <a href="${constructedLink.toString()}">here</a> to ${secondSentenceEnding}.</p>
    `,
  });

  const thanksUrl = tenantUrl(`/magic-thanks?type=${type}`);
  return NextResponse.redirect(thanksUrl, 302);
}
