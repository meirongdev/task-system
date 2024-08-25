//

import { urlPath } from "@/utils/url-helpers";
import Link from "next/link";

export function TaskList({ tasks, tenant }) {
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
              <Link href={urlPath(`/tasks/details/${task.id}`, tenant)}>{task.title}</Link>
            </td>
            <td>{task.status}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
