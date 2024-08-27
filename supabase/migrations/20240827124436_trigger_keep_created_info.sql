set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.keep_created()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$BEGIN
NEW.created_at = OLD.created_at;
NEW.created_by = OLD.created_by;
RETURN NEW;
END;$function$
;

CREATE TRIGGER tr_comments_unchangeable BEFORE UPDATE ON public.comments FOR EACH ROW EXECUTE FUNCTION keep_created();

CREATE TRIGGER tr_tasks_unchangeable BEFORE UPDATE ON public.tasks FOR EACH ROW EXECUTE FUNCTION keep_created();


