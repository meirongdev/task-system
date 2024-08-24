"use client";
import Link from "next/link";
import { useRef } from "react";

export const Login = ({ isPasswordLogin }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        if (isPasswordLogin) {
          alert("User wants to login with password " + passwordInputRef.current.value);
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
