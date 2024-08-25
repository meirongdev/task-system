"use client";
import { useRef } from "react";

export default function CreateTask() {
  const taskTitleRef = useRef(null);
  const taskDescriptionRef = useRef(null);

  return (
    <article>
      <h3>Create a new task</h3>

      <form
        onSubmit={(event) => {
          event.preventDefault();
          alert("TODO: Add a new task");
        }}
      >
        <input ref={taskTitleRef} placeholder="Add a title" />
        <textarea ref={taskDescriptionRef} placeholder="Add a comment" />
        <button type="submit">Create task now</button>
      </form>
    </article>
  );
}
