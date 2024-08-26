import { Suspense } from "react";
import { TaskList } from "./TaskList";
import { TaskFilters } from "./TaskFilters";

export const dynamic = "force-dynamic";

export default function TaskListPage({ params, searchParams }) {
  return (
    <>
      <h1>Tasks List</h1>
      <TaskFilters tenant={params.tenant} />
      <Suspense
        fallback={<div aria-busy="true">Loading Tasks...</div>}
        key={JSON.stringify(searchParams)}
      >
        <TaskList tenant={params.tenant} searchParams={searchParams} />
      </Suspense>
    </>
  );
}
