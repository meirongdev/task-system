"use client";
import { urlPath } from "@/utils/url-helpers";
import { useRouter } from "next/navigation";
import { useEffect, useRef, useState } from "react";

import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";

export default function CreateTask({ params }) {
  const taskTitleRef = useRef(null);
  const taskDescriptionRef = useRef(null);
  const { tenant } = params;

  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();

  const supabase = getSupabaseBrowserClient();

  useEffect(() => {
    // details/loading.js
    router.prefetch(urlPath(`/tasks/details/[id]`));
  }, [router]);

  return (
    <article>
      <h3>Create a new task</h3>

      <form
        onSubmit={(event) => {
          event.preventDefault();
          const title = taskTitleRef.current.value.trim();
          const description = taskDescriptionRef.current.value.trim();
          if (title.length >= 4 && description.length >= 10) {
            // create task
            supabase
              .from("tasks")
              .insert({
                title,
                description,
                tenant,
              })
              .select()
              .single()
              .then(({ error, data }) => {
                if (error) {
                  setIsLoading(false);
                  alert("Could not create task");
                  console.error(error);
                } else {
                  router.push(urlPath(`/tasks/details/${data.id}`, tenant));
                }
              });
          } else {
            // TODO to improve
            alert(
              "A title must have at least 4 chars and a description at least 10."
            );
          }
        }}
      >
        <input
          ref={taskTitleRef}
          placeholder="Add a title"
          disabled={isLoading}
        />
        <textarea
          ref={taskDescriptionRef}
          placeholder="Add a description"
          disabled={isLoading}
        />
        <button type="submit" disabled={isLoading}>
          Create task
        </button>
      </form>
    </article>
  );
}
