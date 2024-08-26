//

import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { urlPath } from "@/utils/url-helpers";
import { TASK_STATUS } from "@/utils/constants";

import Link from "next/link";

export async function TaskList({ tenant, searchParams }) {
  let page = 1;
  const pageSize = 1;
  if (
    Number.isInteger(Number(searchParams.page)) &&
    Number(searchParams.page) > 0
  ) {
    page = Number(searchParams.page);
  }

  const startingPoint = (page - 1) * pageSize;
  const supabase = getSupabaseCookiesUtilClient();
  const { data: tasks, error } = await supabase
    .from("tasks")
    .select()
    .eq("tenant", tenant)
    .order("status", {ascending: true})
    .order("created_at", {ascending: false})
    .range(startingPoint, startingPoint + pageSize - 1);

  const { count, countError } = await supabase
    .from("tasks")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);
  const more = count - page * pageSize > 0;
  console.log(count, countError, more, tasks, )
  return (
    <>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th></th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          {(tasks || []).map((task) => (
            <tr key={task.id}>
              <td>{task.id}</td>
              <td>
                <Link href={urlPath(`/tasks/details/${task.id}`, tenant)}>
                  {task.title}
                </Link>
              </td>
              <td>{TASK_STATUS[task.status]}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <div style={{ display: "flex" }}>
        {page > 1 && (
          <Link
            role="button"
            href={{
              query: {
                page: page - 1,
                r: Math.random(),
                search: searchParams.search,
              },
            }}
          >
            Previous page
          </Link>
        )}
        {more && (
          <Link
            style={{ marginLeft: "auto" }}
            role="button"
            href={{
              query: {
                page: page + 1,
                r: Math.random(),
                search: searchParams.search,
              },
            }}
          >
            Next page
          </Link>
        )}
      </div>
    </>
  );
}
