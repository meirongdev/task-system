import { TaskList } from "./TaskList";

export default function TaskListPage({params}) {
  return (
    <>
      <h1>Tasks List</h1>
      <TaskList tenant={params.tenant} />
    </>
  );
}