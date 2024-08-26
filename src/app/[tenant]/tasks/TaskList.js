import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { urlPath } from "@/utils/url-helpers";
import { TASK_STATUS } from "@/utils/constants";

import Link from "next/link";

export async function TaskList({ tenant, searchParams }) {
  let page = 1;
  let pageSize = 10;
  if (process.env.OVERRIDE_PAGESIZE) {
    pageSize = Number(process.env.OVERRIDE_PAGESIZE);
  }
  if (
    Number.isInteger(Number(searchParams.page)) &&
    Number(searchParams.page) > 0
  ) {
    page = Number(searchParams.page);
  }

  const startingPoint = (page - 1) * pageSize;
  const supabase = getSupabaseCookiesUtilClient();
  let tasksStatement = supabase.from("tasks").select().eq("tenant", tenant);
  let countStatement = supabase
    .from("tasks")
    .select("*", { count: "exact", head: true })
    .eq("tenant", tenant);

  const searchValue = searchParams.search?.trim();
  if (searchValue) {
    const cleanSearchString = searchValue
      .replaceAll('"', "")
      .replaceAll("\\", "")
      .replaceAll("%", "");
    const postgrestSearchValue = '"%' + cleanSearchString + '%"';
    const postgrestFilterString =
      `title.ilike.${postgrestSearchValue}` +
      `, description.ilike.${postgrestSearchValue}`;

    countStatement = countStatement.or(postgrestFilterString);
    tasksStatement = tasksStatement.or(postgrestFilterString);
  }

  tasksStatement = tasksStatement
    .order("status", { ascending: true })
    .order("created_at", { ascending: false })
    .range(startingPoint, startingPoint + pageSize - 1);

  const { count } = await countStatement;
  const { data: tasks, error } = await tasksStatement;
  if (error) {
    // TODO handle error
    console.error(error);
  }
  const more = count - page * pageSize > 0;
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
