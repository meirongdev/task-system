SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '605af97a-4037-4ea9-8ad0-7f22fe57f27d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"meirongdev@gmail.com","user_id":"18e196b7-a5bb-4360-8100-3405f994978e","user_phone":""}}', '2024-08-24 08:17:44.255088+00', ''),
	('00000000-0000-0000-0000-000000000000', '3d149912-21d3-44d6-851f-4c704be2f58d', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 09:51:48.793683+00', ''),
	('00000000-0000-0000-0000-000000000000', '9574b598-52aa-490b-b870-8133c4d7bb5e', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 10:07:48.927878+00', ''),
	('00000000-0000-0000-0000-000000000000', '38eade92-6206-4867-bcb7-c3e2c3e7a9c2', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 10:46:17.049839+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f4e48ff-ecb0-4e66-9fbc-6d9c5cb96873', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 10:48:41.269131+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa77e2bd-2eaf-4b94-b3e7-1adea69a9ea9', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 10:48:44.967734+00', ''),
	('00000000-0000-0000-0000-000000000000', '9654ef82-abef-45a6-8f00-2a59dcddd4b4', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 10:49:35.866312+00', ''),
	('00000000-0000-0000-0000-000000000000', '279f7c1c-37eb-4fe6-9ea8-26a322275f17', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 10:49:38.999618+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f77898a3-c232-4c6a-8183-b48688ba9444', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 11:14:40.793213+00', ''),
	('00000000-0000-0000-0000-000000000000', '1bce3a6c-29a0-48b5-86d4-e19f6ddaedff', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 11:15:09.618941+00', ''),
	('00000000-0000-0000-0000-000000000000', '85decf12-e00f-4496-97ec-2ac6a4edef8f', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 11:50:31.91171+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cc392a2e-5a70-41c1-aa93-8ff5a642cb7f', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 11:50:34.23884+00', ''),
	('00000000-0000-0000-0000-000000000000', '04b28d5b-f509-470b-b846-4496951f73cb', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 11:50:35.327916+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb2cab5e-4bca-4670-adde-4921800cf12d', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 11:51:15.088016+00', ''),
	('00000000-0000-0000-0000-000000000000', '54f58f00-a55e-49cb-a187-2e2286a053b1', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 11:53:16.756259+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca45a94d-11da-42d3-a4ee-6f1a8311dbb6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 11:53:19.368557+00', ''),
	('00000000-0000-0000-0000-000000000000', '5727c4a7-a904-46dc-bbb0-2f55d1d42f84', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 12:11:44.477787+00', ''),
	('00000000-0000-0000-0000-000000000000', '84fa425d-82bd-4e77-a3e2-da75f6fa16b6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 12:22:58.537932+00', ''),
	('00000000-0000-0000-0000-000000000000', '55608216-b0cf-4499-9f79-9a60dbf8be72', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 12:23:40.512806+00', ''),
	('00000000-0000-0000-0000-000000000000', '381f6569-cbb3-419f-bb3c-dca446c1619a', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 12:26:34.624145+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bfbe5ba-83a4-4d2a-9cd1-27255c8443eb', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 13:17:26.172942+00', ''),
	('00000000-0000-0000-0000-000000000000', '52523827-b01f-4727-939c-3fc6e836fff2', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 13:17:29.040243+00', ''),
	('00000000-0000-0000-0000-000000000000', '0219e5f2-45ac-4b14-af56-8ceb89e3b911', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:33:53.903372+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd17e9ec-c462-4a24-b51e-92b99c0a2e56', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:36:28.779114+00', ''),
	('00000000-0000-0000-0000-000000000000', '92fdf0d0-2249-420d-bce3-1871a304976b', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:40:30.76887+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe0d6a37-8ae7-4ce1-bd71-d3ce68b655cd', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:41:01.972562+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a8e38a0-0115-45ee-ac89-38453507fcc4', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:48:05.689622+00', ''),
	('00000000-0000-0000-0000-000000000000', '93aa086e-8128-425b-83ce-4cb86e2d2a6e', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:49:19.163333+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf5e3ddb-3011-455d-a2ca-66ee8f950ad0', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 13:51:09.010221+00', ''),
	('00000000-0000-0000-0000-000000000000', '1566589e-6e40-4fc7-ad04-73f1d84f3c78', '{"action":"user_updated_password","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:51:58.038768+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a295c63a-0991-41ac-8f6e-2e426ae757fa', '{"action":"user_modified","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-24 13:51:58.039165+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcf2f7e8-85b8-43ce-bbde-dfc3cd34428c', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 13:52:02.484582+00', ''),
	('00000000-0000-0000-0000-000000000000', '52d7d7cf-b024-405a-b4f0-b6199c6692c3', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-24 13:52:08.215548+00', ''),
	('00000000-0000-0000-0000-000000000000', '73aca11b-7bd7-40b5-8e1d-1b21b6824da6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 13:52:16.425012+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '18e196b7-a5bb-4360-8100-3405f994978e', 'authenticated', 'authenticated', 'meirongdev@gmail.com', '$2a$10$Qqed8WRuPrEBlPzy5ivv9.Xi6W6oBdoadk4DHnN0VJaNkK1HOiGLi', '2024-08-24 08:17:44.256785+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-08-24 13:52:08.216079+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-24 08:17:44.250231+00', '2024-08-24 13:52:08.21746+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('18e196b7-a5bb-4360-8100-3405f994978e', '18e196b7-a5bb-4360-8100-3405f994978e', '{"sub": "18e196b7-a5bb-4360-8100-3405f994978e", "email": "meirongdev@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-08-24 08:17:44.253442+00', '2024-08-24 08:17:44.25348+00', '2024-08-24 08:17:44.25348+00', 'da1c8e99-7133-425d-948e-b722027727b8');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: app_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."app_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2024-08-24 15:29:15.899719+00', 'Huang Meirong', '18e196b7-a5bb-4360-8100-3405f994978e');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('test', '2024-08-24 14:58:18.38934+00', '测试任务组', 'test.tasks.meirong.dev'),
	('dev', '2024-08-24 14:59:05.804474+00', '开发任务组', 'dev.tasks.meirong.dev');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "app_user", "tenant") VALUES
	(1, '2024-08-24 15:34:07.751236+00', 1, 'test'),
	(2, '2024-08-24 15:36:05.303414+00', 1, 'dev');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 14, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: app_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."app_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
