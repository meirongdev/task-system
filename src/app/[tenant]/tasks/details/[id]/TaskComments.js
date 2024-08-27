"use client";
import { useRef, useState, useEffect } from "react";
import classes from "./TaskDetails.module.css";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { getRandomHexString } from "@/utils/helpers";
import { urlPath } from "@/utils/url-helpers";

export function TaskComments({ taskID, tenant, initialComments }) {
  const commentRef = useRef(null);
  const fileInputRef = useRef(null);

  const supabase = getSupabaseBrowserClient();

  const [comments, setComments] = useState(initialComments || []);
  const [fileList, setFileList] = useState([]);

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

    const attachmentListener = (payload) => {
      console.log("attachment payload", payload);
      if (payload.eventType === "INSERT") {
        setComments((prevComments) =>
          prevComments.map((comment) => {
            if (comment.id === payload.comment_id) {
              return {
                ...comment,
                comment_attachments: [
                  ...(comment.comment_attachments || []),
                  payload.new,
                ],
              };
            }
            return comment;
          })
        );
      } else if (payload.eventType === "DELETE") {
        // TODO: Implement attachment deletion
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
      .on(
        "postgres_changes",
        {
          event: "*",
          schema: "public",
          table: "comment_attachments",
        },
        attachmentListener
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

          let uploadPromises = Promise.resolve();
          if (fileList.length) {
            uploadPromises = Promise.all(
              Array.from(fileList).map((file) => {
                return supabase.storage
                  .from("comment-attachments")
                  .upload(
                    [tenant, taskID, getRandomHexString(), file.name].join("/"),
                    file
                  );
              })
            );
          }

          uploadPromises.then((fileUploads) => {
            // Add comment after file uploads
            supabase
              .from("comments")
              .insert({
                task: taskID,
                comment_text,
              })
              .select()
              .single()
              .then(({ error, data: commentData }) => {
                // reset fields
                commentRef.current.value = "";
                commentRef.disabled = false;
                fileInputRef.current.value = "";
                setFileList([]);

                if (error) return alert("Error adding comment");

                if (fileUploads) {
                  supabase
                    .from("comment_attachments")
                    .insert(
                      fileUploads.map((file) => ({
                        comment: commentData.id,
                        file_path: file.data.path,
                      }))
                    )
                    .then(({ error }) => {
                      if (error) {
                        alert("Error adding attachments");
                      }
                    });
                }
              });
          });
        }}
      >
        <textarea ref={commentRef} placeholder="Add a comment" required />
        <label htmlFor="file">
          <input
            type="file"
            id="file"
            name="file"
            multiple
            ref={fileInputRef}
            onChange={(e) => {
              setFileList(e.target.files);
            }}
          />
        </label>
        <button type="submit">Add comment</button>
      </form>

      <section>
        {comments.map((comment) => (
          <article key={comment.id} className={classes.comment}>
            <strong>{comment.author_name} </strong>
            <time>{new Date(comment.created_at).toLocaleString("en-US")}</time>
            <p>{comment.comment_text}</p>

            {comment.comment_attachments?.length > 0 && (
              <>
                <small style={{ display: "block" }}>Attachments</small>
                {comment.comment_attachments.map((attachment) => (
                  <button
                    key={attachment.id}
                    className="file-badge"
                    onClick={() => {
                      supabase.storage
                        .from("comment-attachments")
                        .createSignedUrl(attachment.file_path, 60, {
                          download: false,
                        })
                        .then(({ data, error }) => {
                          window.open(data.signedUrl, "_blank");
                        });
                    }}
                  >
                    {attachment.file_path.split("/").pop()}

                    {(attachment.file_path.endsWith(".png")||attachment.file_path.endsWith(".jpg") ) && (
                      <img
                        style={{ marginLeft: "10px" }}
                        src={urlPath(
                          `/cdn?image=${attachment.file_path}`,
                          tenant
                        )}
                      />
                    )}
                  </button>
                ))}
              </>
            )}
          </article>
        ))}
      </section>
    </footer>
  );
}
