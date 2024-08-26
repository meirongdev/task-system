import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import classes from "./TaskDetails.module.css";
import { notFound } from "next/navigation";
import { TaskComments } from "./TaskComments";
import { TICKET_STATUS } from "@/utils/constants";

export default async function TaskDetailsPage({ params }) {
  const supabase = getSupabaseCookiesUtilClient();
  const id = Number(params.id);
  const { data, error } = await supabase
    .from("tasks")
    .select("*")
    .eq("id", id)
    .single();
  if (error) {
    console.error(error);
    return notFound();
  }
  const {
    created_at,
    title,
    description,
    created_by,
    author_name,
    status
  } = data;

  const dateString = new Date(created_at).toLocaleString("en-US");

  return (
    <article className={classes.taskDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.taskStatusGreen}>{TICKET_STATUS[status]}</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{author_name}</strong> at{" "}
          <time>{dateString}</time>
        </small>
        <h2>{title}</h2>
      </header>

      <section>{description}</section>
      <TaskComments />
    </article>
  );
}
