import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";


export async function GET(request) {
  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get("hashed_token");
  const isRecovery = searchParams.get("type") === "recovery";

  const tenantUrl = (path) => buildUrl(path, params.tenant, request);

  const supabase = getSupabaseCookiesUtilClient();

  let verifyType = "magiclink";
  if (isRecovery) verifyType = "recovery";

  const { error } = await supabase.auth.verifyOtp({
    type: verifyType,
    token_hash: hashed_token,
  });

  if (error) {
    return NextResponse.redirect(
      tenantUrl("/error?type=invalid_magiclink"),
    );
  } else {
    if (isRecovery) {
      return NextResponse.redirect(
        tenantUrl("/tasks/change-password"),
      );
    } else {
      return NextResponse.redirect(tenantUrl("/tasks"));
    }
  }
}
