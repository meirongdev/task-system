"use client";
import Link from "next/link";
import { usePathname } from "next/navigation";

export default function Nav() {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };

  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href="/tasks"
            {...(pathname === "/tasks" ? activeProps : inactiveProps)}
          >
            Ticket List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href="/tasks/new"
            {...(pathname === "/tasks/new" ? activeProps : inactiveProps)}
          >
            Create New Task
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href="/tasks/users"
            {...(pathname === "/tasks/users" ? activeProps : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link role="button" href="/logout" className="secondary">
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
