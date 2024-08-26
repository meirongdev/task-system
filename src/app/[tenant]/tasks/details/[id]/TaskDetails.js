"use client";
import classes from "./TaskDetails.module.css";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { useRouter } from "next/navigation";

import { TaskComments } from "./TaskComments";
import { TASK_STATUS } from "@/utils/constants";
import { urlPath } from "@/utils/url-helpers";

export function TaskDetails({
  tenant,
  id,
  status,
  title,
  created_at,
  description,
  author_name,
  isAuthor,
}) {
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  const dateString = new Date(created_at).toLocaleString("en-US");

  return (
    <article className={classes.taskDetails}>
      <header>
        <div className="grid">
          <div>
            <strong>#{id}</strong> -{" "}
            <strong className={classes.taskStatusGreen}>
              {TASK_STATUS[status]}
            </strong>
          </div>

          {isAuthor && (
            <button
              role="button"
              className="little-danger"
              onClick={() => {
                supabase
                  .from("tasks")
                  .delete()
                  .eq("id", id)
                  .then((res) => {
                    console.log(res);
                    router.push(urlPath("/tasks", tenant)+"?r="+Math.random());
                  }).catch((err) => {
                    console.error(err);
                  });
              }}
            >
              Delete task
            </button>
          )}
        </div>

        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{author_name}</strong> at <time>{dateString}</time>
        </small>
        <h2>{title}</h2>
      </header>

      <section>{description}</section>
      <TaskComments />
    </article>
  );
}
