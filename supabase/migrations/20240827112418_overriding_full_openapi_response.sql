set check_function_bodies = off;

create or replace function mock_openapi() returns json as $_$
declare
openapi json = $$
  {
    "swagger": "2.0",
    "info":{
      "title":"Overridden",
      "description":"This is my own API"
    }
  }
$$;
begin
return openapi;
end
$_$ language plpgsql;

ALTER ROLE authenticator
SET pgrst.db_root_spec TO 'public.mock_openapi';

NOTIFY pgrst, 'reload config';