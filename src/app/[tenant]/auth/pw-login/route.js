import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

export async function POST(request, { params }) {
  const formData = await request.formData();
  const email = formData.get("email");
  const password = formData.get("password");
  const tenantUrl = (path) => buildUrl(path, params.tenant, request);

  const supabase = getSupabaseCookiesUtilClient();
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  const userData = data?.user;

  if (
    error ||
    !userData ||
    !userData.app_metadata?.tenants.includes(params.tenant)
  ) {
    return NextResponse.redirect(tenantUrl("/error?type=login-failed"), {
      status: 302,
    });
  }

  return NextResponse.redirect(tenantUrl("/tasks"), {
    status: 302,
  });
}
