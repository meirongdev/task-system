import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookieUtilClient";

export default async function TenantName({tenant}) {
  let tenantName = "Unknown";
  const supabase = getSupabaseCookiesUtilClient();

  // TODO 查询不到数据
  const selection = await supabase
    .from("tenants")
    .select("name")
    .eq("id", tenant)
    .single();
    // {
    //   tenant: undefined,
    //   data: null,
    //   error: {
    //     code: 'PGRST116',
    //     details: 'The result contains 0 rows',
    //     hint: null,
    //     message: 'JSON object requested, multiple (or no) rows returned'
    //   }
    // }

  const { data, error } = selection;
  console.log({ tenant, data, error})
  tenantName = data?.name ?? tenantName;

  return (
    <header style={{ marginBottom: "10px" }}>
      <div
        style={{
          borderLeft: "4px solid orange",
          display: "block",
          padding: "4px 10px",
          fontSize: "1.1em",
        }}
      >
        Task System
        <strong style={{ marginLeft: "1ex" }}>{tenantName}</strong>
      </div>
    </header>
  );
}
