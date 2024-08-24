import TenantName from "./TenantName";
import Nav from "./Nav";

export default function TasksLayout({children}) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName TenantName="Acme Corp" />
        <Nav />
      </section>
      <section>{children}</section>
    </>
  );
}
