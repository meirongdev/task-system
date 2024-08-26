alter table "public"."app_users" add column "is_available" boolean not null default true;

alter table "public"."app_users" add column "position" text;

alter table "public"."tasks" add column "assignee" bigint;

alter table "public"."tasks" add column "assignee_name" text;

alter table "public"."tasks" add constraint "tasks_assignee_fkey" FOREIGN KEY (assignee) REFERENCES app_users(id) not valid;

alter table "public"."tasks" validate constraint "tasks_assignee_fkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.get_tenant_userlist(tenant_id text)
 RETURNS json
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$declare
has_access bool;
begin
has_access = (exists(
	select from app_users au, tenant_permissions p
	where
	au.supabase_user=auth.uid()
	and au.id=p.app_user
	and p.tenant = tenant_id
));
if (has_access != true) then
raise exception 'no access to the data';
end if;
RETURN(
select jsonb_agg(sub) from 
(
  select au.id, au.full_name, au.position, au.is_available 
  from app_users au inner join tenant_permissions p 
  on p.app_user = au.id
  where p.tenant = tenant_id
) sub
);
END;$function$
;

CREATE OR REPLACE FUNCTION public.set_task_assignee_name()
 RETURNS trigger
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$begin
if (NEW.assignee is null) then
NEW.assignee_name = null;
else
NEW.assignee_name = (
  select full_name from app_users where id=NEW.assignee
  and exists (
    select from tenant_permissions p where
    p.tenant = NEW.tenant and p.app_user=NEW.assignee
  )
);
if (NEW.assignee_name IS NULL) THEN
NEW.assignee = NULL;
end if;
end if;
return NEW;
end;$function$
;

create policy "update on allowed tenant"
on "public"."tasks"
as permissive
for update
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? tenant), false));


CREATE TRIGGER tr_tasks_autoset_assignee_name BEFORE INSERT OR UPDATE ON public.tasks FOR EACH ROW EXECUTE FUNCTION set_task_assignee_name();


