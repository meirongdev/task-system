/** @type {import('next').NextConfig} */
const nextConfig = {
  output: "standalone",
  reactStrictMode: true,
  redirects: async () => [
    {
      source: "/:tenant/logout",
      destination: "/:tenant/auth/logout",
      permanent: true,
    },
  ],
};

export default nextConfig;
