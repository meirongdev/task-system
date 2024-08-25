import { notFound } from "next/navigation";
import {Login} from "./Login";
import { FORM_TYPES } from "./formTypes";

import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";

// This runs on the server
export default async function LoginPage({ searchParams, params }) {
  const supabaseAdmin = getSupabaseAdminClient();
  const {data, error} = await supabaseAdmin.from("tenants").select("*").eq("id", params.tenant).single();
  if (error || !data) {
    notFound();
  }

  const wantsMagicLink = searchParams.magicLink === "yes";
  const wantsPasswordRecovery = searchParams.passwordRecovery === "yes";


  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

 

  return <Login formType={formType} tenant={params.tenant} />;
}
