import classes from "./TaskDetails.module.css";

export default function TaskDetailsPage({ params }) {
  return (
    <article className={classes.taskDetails}>
      <header>
        <strong>#{params.id}</strong> -{" "}
        <strong className={classes.taskStatusGreen}>Open</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>AuthorName</strong> at{" "}
          <time>December 10th 2025</time>
        </small>
        <h2>Task title should be here</h2>
      </header>

      <section>Some details about the task should be here.</section>

    </article>
  );
}