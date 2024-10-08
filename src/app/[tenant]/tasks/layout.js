import TenantName from "./TenantName";
import Nav from "./Nav";

export default function TasksLayout({children, params}) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenant={params.tenant} />
        <Nav tenant={params.tenant} />
      </section>
      <section>{children}</section>
    </>
  );
}
