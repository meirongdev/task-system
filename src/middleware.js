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
  const sessionUser = session.data?.session?.user;
  if (requestedPath.startsWith("/tasks") && !sessionUser) {
    // https://nextjs.org/docs/messages/middleware-relative-urls
    response.value = NextResponse.redirect(new URL("/", request.url));
  } else if (requestedPath === "/"){
    if (sessionUser) {
      response.value = NextResponse.redirect(new URL("/tasks", request.url));
    }
  }
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
