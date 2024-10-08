"use client";
import Link from "next/link";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import { usePathname, useRouter } from "next/navigation";
import { useEffect } from "react";
import { urlPath } from "@/utils/url-helpers";

export default function Nav({tenant}) {
  const pathname = usePathname();
  const activeProps = { className: "contrast" };
  const inactiveProps = { className: "secondary outline" };
  const router = useRouter();

  const supabase = getSupabaseBrowserClient();

  const getPath = (subPath) => urlPath(subPath ?? "/", tenant);

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      console.log("onAuthStateChange", event);
      // 通过监控登录状态，实现用户登录后跳转到/页面
      if (event === "SIGNED_OUT") {
        router.push(getPath());
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  
  return (
    <nav>
      <ul>
        <li>
          <Link
            role="button"
            href={getPath("/tasks")}
            {...(pathname === getPath("/tasks") ? activeProps : inactiveProps)}
          >
            Task List
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={getPath("/tasks/new")}
            {...(pathname === getPath("/tasks/new") ? activeProps : inactiveProps)}
          >
            Create New Task
          </Link>
        </li>
        <li>
          <Link
            role="button"
            href={getPath("/tasks/users")}
            {...(pathname === getPath("/tasks/users") ? activeProps : inactiveProps)}
          >
            User List
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link
            role="button"
            href={getPath("/auth/logout")}
            prefetch={false}
            className="secondary"
            onClick={(event) => {
              // 不进行href跳转,通过
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
