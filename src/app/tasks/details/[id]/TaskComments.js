"use client";
import { useRef } from "react";
import classes from "./TaskDetails.module.css";

const comments = [
  {
    author: "Alice",
    date: "2027-01-02",
    content: "This is a comment from Alice",
  },{
    author: "Bob",
    date: "2027-01-03",
    content: "This is a comment from Bob",
  }
];

export function TaskComments() {
  const commentRef = useRef(null);

  return (
    <footer>
      <h4>Comments</h4>

      <form
        onSubmit={(event) => {
          event.preventDefault();
          alert("TODO: Add comment");
        }}
      >
        <textarea ref={commentRef} placeholder="Add a comment" />
        <button type="submit">Add comment</button>
      </form>

      {/* <section>We have {comments.length} comments.</section> */}
      <section>
        {comments.map((comment) => (
          <article key={comment.date} className={classes.comment}>
            <strong>{comment.author} </strong>
            <time>{comment.date}</time>
            <p>{comment.content}</p>
          </article>
        ))}
      </section>
    </footer>
  );
}
