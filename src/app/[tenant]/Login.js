"use client";
import { getSupabaseBrowserClient } from "@/supabase-utils/browserClient";
import Link from "next/link";
import { useRef, useEffect } from "react";
import { useRouter } from "next/navigation";
import { FORM_TYPES } from "./formTypes";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ formType = FORM_TYPES.PASSWORD_LOGIN, tenant }) => {
  const emailInputRef = useRef(null);
  const passwordInputRef = useRef(null);
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
  const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
  const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

  const getPath = (subPath) => urlPath(subPath ?? "", tenant);


  const formAction = getPath(
    isPasswordLogin ? `/auth/pw-login` : `/auth/magic-link`,
  );

  const loginBasePath = getPath("/");

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === "SIGNED_IN") {
        if (session.user.app_metadata?.tenants.includes(tenant)) {
          router.push(getPath("/tasks"));
        } else {
          supabase.auth.signOut();
          alert("Could not sign in, tenant does not match.");
        }
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  return (
    <form
      action={formAction}
      method="POST"
      onSubmit={(event) => {
        // password login won't send /auth/pw-login request if js is enabled
        isPasswordLogin && event.preventDefault();

        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: emailInputRef.current.value,
              password: passwordInputRef.current.value,
            })
            .then((response) => {
              !response.data?.user && alert("Could not sign in");

              // if (response.data?.user) {
              //   // 这种方式用户体验不好，因为用户通过历史记录可以访问这个页面
              //   // 但是你没有权限，需要重新登录
              //   router.push("/tasks");
              // } else {
              //   alert("User login failed");
              // }
            });
        }
        // magic link login will send /auth/magic-link request
      }}
    >
      {isPasswordRecovery && (
        <input type="hidden" name="type" value="recovery" />
      )}

      <article style={{ maxWidth: "400px", margin: "auto" }}>
        <header>
          {isPasswordRecovery && <strong>Request new password</strong>}
          {!isPasswordRecovery && <strong>Login</strong>}
        </header>
        <fieldset>
          <label htmlFor="email">
            Email{" "}
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
              Password{" "}
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
        <button type="submit">
          {isPasswordLogin && "Sign in with Password"}
          {isPasswordRecovery && "Request new password"}
          {isMagicLinkLogin && "Sign in with Magic Link"}
        </button>

        <div
          style={{
            display: "flex",
            justifyContent: "space-between",
            flexDirection: "column",
            gap: "6px",
            marginBottom: "20px",
          }}
        >
          {!isPasswordLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: loginBasePath,
                query: { magicLink: "no" },
              }}
            >
              Go to Password Login
            </Link>
          )}
          {!isMagicLinkLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: loginBasePath,
                query: { magicLink: "yes" },
              }}
            >
              Go to Magic Link Login
            </Link>
          )}

          {!isPasswordRecovery && (
            <Link
              href={{
                pathname: loginBasePath,
                query: { passwordRecovery: "yes" },
              }}
              style={{
                textAlign: "center",
                display: "block",
              }}
            >
              Go to Password Recovery
            </Link>
          )}
        </div>
      </article>
    </form>
  );
};
