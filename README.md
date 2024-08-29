This is a supabase nextjs demo project.

## Prerequisites

- Node.js v21.6.2(can use nvm to manage node version)
- pnpm
- docker(for supabase local development)

## Demo 

http://tasksystemdemo.csdaomin.com/

- demo@demo.com/111111

## Local development

Setup supabase local development environment.
```bash
brew install supabase/tap/supabase
cd supabase
supabase start
```

Init the data (`supabase/migrations`, `supabase/seed.sql`).
```sh
supabase db reset
```
start next.js

```bash
pnpm dev
```

## Versioning your db

```bash
supa db diff --local -f your_filename
```
It will generate `timestamp+your_filename.sql` in `supabase/migration`.

```bash
supabase db dump --local --data-only --file=supabase/seed.sql 
```
It will dump db data.


## Notice

### External Configuration for Next.js  
- `.env.local` is used for local development.
- I can't mount `.env.production` for production build. So I use `command` in `k8s/deployment.yaml` to rebuild the project before starting the server.
  - [ ] May have a better way to do this.
