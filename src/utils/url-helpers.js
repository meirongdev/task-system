export function urlPath(applicationPath, tenant) {
  // return `/${tenant}${applicationPath}`;
  return `${applicationPath}`;
}

export function buildUrl(applicationPath, tenant, request) {
  // return new URL(urlPath(applicationPath, tenant), request.url);
  const [hostname, port] = getHostnameAndPort(request);

  const portSuffix = port && port != "443" ? `:${port}` : "";
  const { protocol } = request.nextUrl;
  const tenantUrl = `${protocol}//${hostname}${portSuffix}/`;

  return new URL(urlPath(applicationPath, tenant), tenantUrl);
}

export function getHostnameAndPort(request) {
  // https://github.com/vercel/next.js/issues/37536#issuecomment-1154191063
  const hostnameWithPort = request.headers.get("host");
  const [realHostname, port] = hostnameWithPort.split(":");

  let hostname;
  // OVERRIDE_TENANT_DOMAIN is used for local development
  if (process.env.OVERRIDE_TENANT_DOMAIN) {
    hostname = process.env.OVERRIDE_TENANT_DOMAIN;
  } else {
    hostname = realHostname;
  }

  return [hostname, port];
}
