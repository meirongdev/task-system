create policy "owner can delete task"
on "public"."tasks"
as permissive
for delete
to public
using ((EXISTS ( SELECT
   FROM app_users
  WHERE ((app_users.id = tasks.created_by) AND (app_users.supabase_user = auth.uid())))));



