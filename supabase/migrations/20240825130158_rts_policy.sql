create policy "access own user data"
on "public"."app_users"
as permissive
for select
to authenticated
using ((supabase_user = auth.uid()));


create policy "access your own tenant_permissions"
on "public"."tenant_permissions"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT
   FROM app_users au
  WHERE ((au.id = tenant_permissions.app_user) AND (au.supabase_user = auth.uid())))));


create policy "can read tenant if has permission"
on "public"."tenants"
as permissive
for select
to public
using ((EXISTS ( SELECT
   FROM tenant_permissions tp
  WHERE (tp.tenant = tenants.id))));



