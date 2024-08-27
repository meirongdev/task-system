"use client";
import { useRef, useState, useEffect } from "react";
import classes from "./TaskDetails.module.css";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export function TaskComments({ taskID, initialComments }) {
  const commentRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const [comments, setComments] = useState(initialComments || []);

  useEffect(() => {
    const listener = (payload) => {
      console.log("comment payload", payload);
      const eventType = payload.eventType;
      if (eventType === "INSERT") {
        setComments((prevComments) => [...prevComments, payload.new]);
      } else if (eventType === "DELETE") {
        setComments((prevComments) =>
          prevComments.filter((comment) => comment.id !== payload.old.id)
        );
      } else if (eventType === "UPDATE") {
        setComments((prevComments) =>
          prevComments.map((comment) =>
            comment.id === payload.new.id ? payload.new : comment
          )
        );
      }
    };

    const subscription = supabase
      .channel("task-comments")
      .on(
        "postgres_changes",
        {
          event: "*",
          schema: "public",
          table: "comments",
          filter: `task=eq.${taskID}`,
        },
        listener
      )
      .subscribe();
    return () => {
      subscription.unsubscribe();
    };
  }, [taskID]);

  return (
    <footer>
      <h4>Comments ({comments.length})</h4>

      <form
        onSubmit={(event) => {
          event.preventDefault();
          const comment_text = commentRef.current.value.trim();
          if (!comment_text) {
            alert("Please enter a comment.");
          }
          commentRef.disabled = true;
          supabase
            .from("comments")
            .insert({
              task: taskID,
              comment_text,
            })
            .then(() => {
              commentRef.current.value = "";
              commentRef.disabled = false;
            });
        }}
      >
        <textarea ref={commentRef} placeholder="Add a comment" />
        <button type="submit">Add comment</button>
      </form>

      <section>
        {comments.map((comment) => (
          <article key={comment.id} className={classes.comment}>
            <strong>{comment.author_name} </strong>
            <time>{new Date(comment.created_at).toLocaleString("en-US")}</time>
            <p>{comment.comment_text}</p>
          </article>
        ))}
      </section>
    </footer>
  );
}
