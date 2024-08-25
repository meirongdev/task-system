import { getSupabaseReqResClient } from "@/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(request) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  // getSession() will load and refresh the session if needed
  // 它会返回session中的数据，但是这些数据只是从cookie中解析出来的，并未加密，容易被篡改
  // 此处更安全的做法是使用supabase.auth.getUser()，但该方法会有额外的api请求，相对比较慢
  // 此处能使用getSession()，是因为此处只是做重定向，如果用户不合法，重定向后仍然无法访问受保护的页面
  const session = await supabase.auth.getSession();
  const requestedPath = request.nextUrl.pathname;
  const [tenant, ...restOfPath] = requestedPath.substr(1).split("/");
  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL("/not-found", request.url));
  }
  const applicationPath = "/" + restOfPath.join("/");

  const sessionUser = session.data?.session?.user;
  if (applicationPath.startsWith("/tasks") && !sessionUser) {
    // https://nextjs.org/docs/messages/middleware-relative-urls
    response.value = NextResponse.redirect(new URL("/${tenant}/", request.url));
  } else if (applicationPath === "/") {
    if (sessionUser) {
      response.value = NextResponse.redirect(new URL("/${tenant}/tasks", request.url));
    }
  }
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
