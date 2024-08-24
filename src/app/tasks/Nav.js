"use client";
import Link from "next/link";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { usePathname, useRouter } from "next/navigation";

export default function Nav() {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };
  const router = useRouter();

  const supabase = getSupabaseBrowserClient();

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
          <Link
            role="button"
            href="/logout"
            prefetch={false}
            className="secondary"
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut().then(() => {
                router.push("/");
              });
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
