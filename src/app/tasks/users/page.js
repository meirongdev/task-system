import { IconCheck, IconUserOff } from "@tabler/icons-react";

const users = [
  {
    name: "Alice Ling",
    job: "Software Engineer",
    isAvailable: false,
  },
  {
    name: "Bob Smith",
    job: "Product Manager",
    isAvailable: true,
  },
  {
    name: "Charlie Brown",
    job: "Designer",
    isAvailable: true,
  },
  {
    name: "David Lee",
    job: "DevOps Engineer",
    isAvailable: false,
  },
  {
    name: "Eve Johnson",
    job: "QA Engineer",
    isAvailable: true,
  },
];

export default function UserList() {
  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
        </tr>
      </thead>
      <tbody>
        {users.map((user) => (
          <tr key={user.name}>
            <td style={{ color: !user.isAvailable ? "red" : undefined }}>
              {user.isAvailable ? <IconCheck /> : <IconUserOff />} {user.name}
            </td>
            <td>{user.job}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
