import { TaskList } from "./TaskList";

const dummyTasks = [
  { id: 1, title: "Task 1", status: "OPEN" , author: "Alice" },
  { id: 2, title: "Task 2", status: "IN_PROGRESS", author: "Bob" },
  { id: 3, title: "Task 3", status: "DONE" , author: "Alice" },
  { id: 4, title: "Task 4", status: "DONE" , author: "Alice" },
];

export default function TaskListPage({params}) {
  return (
    <>
      <h1>Tasks List</h1>
      <TaskList tasks={dummyTasks} tenant={params.tenant} />
    </>
  );
}