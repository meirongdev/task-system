//

import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { urlPath } from "@/utils/url-helpers";
import { TICKET_STATUS } from "@/utils/constants";

import Link from "next/link";

export async function TaskList({ tenant }) {
  const supabase = getSupabaseCookiesUtilClient();
  const { data: tasks, error } = await supabase
    .from("tasks")
    .select()
    .eq("tenant", tenant);
  return (
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th></th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        {tasks.map((task) => (
          <tr key={task.id}>
            <td>{task.id}</td>
            <td>
              <Link href={urlPath(`/tasks/details/${task.id}`, tenant)}>
                {task.title}
              </Link>
            </td>
            <td>{TICKET_STATUS[task.status]}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
