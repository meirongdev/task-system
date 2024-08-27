import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { notFound } from "next/navigation";
import { TaskDetails } from "./TaskDetails";

export default async function TaskDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();
  const id = Number(params.id);
  const { data, error } = await supabase
    .from("tasks")
    .select("*, comments (*)")
    .eq("id", id)
    .order("created_at", { ascending: true, referencedTable: "comments" })
    .single();
  if (error) {
    console.error(error);
    return notFound();
  }

  const supabase_user_id = (await supabase.auth.getUser()).data.user.id;
  const { data: appUser } = await supabase
    .from("app_users")
    .select("id")
    .eq("supabase_user", supabase_user_id)
    .single();

  const isAuthor = appUser.id === data.created_by;

  return (
    <>
      <TaskDetails {...data} isAuthor={isAuthor} />
    </>
  );
}
