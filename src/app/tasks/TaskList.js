//

import Link from "next/link";

export function TaskList({ tasks }) {
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
              <Link href={`/tasks/details/${task.id}`}>{task.title}</Link>
            </td>
            <td>{task.status}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
