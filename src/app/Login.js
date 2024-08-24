"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRef } from "react";
import { useRouter } from "next/navigation";

export const Login = ({ isPasswordLogin }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        if (isPasswordLogin) {
          supabase.auth.signInWithPassword({
            email: emailInputRef.current.value,
            password: passwordInputRef.current.value,
          }).then((response) => {
            if (response.data?.user) {
              // 这种方式用户体验不好，因为用户通过历史记录可以访问这个页面
              // 但是你没有权限，需要重新登录
              router.push("/tasks");
            } else {
              alert("User login failed");
            }
          });
        } else {
          alert("User wants to login with magic link " + emailInputRef.current.value);
        }
      }}
    >
      <article style={{ maxWidth: "400px", margin: "auto" }}>
        <header>Login</header>
        <fieldset>
          <label htmlFor="email">
            Email
            <input
              ref={emailInputRef}
              type="email"
              id="email"
              name="email"
              required
            />
          </label>
          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input
                ref={passwordInputRef}
                type="password"
                id="password"
                name="password"
                required
              />
            </label>
          )}
        </fieldset>
        <p>
          {isPasswordLogin ? (
            <Link
              href={{
                pathname: "/",
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          ) : (
            <Link
              href={{
                pathname: "/",
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
        </p>

        <button type="submit">
          Sign in with {isPasswordLogin ? " Password" : " Magic Link"}
        </button>
      </article>
    </form>
  );
};
