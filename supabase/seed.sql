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
	('00000000-0000-0000-0000-000000000000', '73aca11b-7bd7-40b5-8e1d-1b21b6824da6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-24 13:52:16.425012+00', ''),
	('00000000-0000-0000-0000-000000000000', '1d8c8391-471e-4cfa-9716-1396fbeadebb', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 01:52:55.849108+00', ''),
	('00000000-0000-0000-0000-000000000000', '06f64596-4c40-449c-9e41-a82b5337457b', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 01:53:02.783028+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd8c63b6b-6595-4eb5-b23c-ca9431ef9140', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 01:57:04.723069+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fe84f3c-2658-48b7-8450-0c4ca8ec5ae8', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 01:57:06.901164+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be8fe219-ee81-4060-b7e4-e086510f0a7f', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-25 01:57:56.769176+00', ''),
	('00000000-0000-0000-0000-000000000000', '676d4e72-99f0-43fb-b2fa-57ef680a4b60', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-25 02:00:55.583128+00', ''),
	('00000000-0000-0000-0000-000000000000', '175b29fa-8771-4c36-8cf2-29e890590cc5', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-25 02:02:44.461077+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e8626d7-79ad-4183-8743-6c6a437becce', '{"action":"user_recovery_requested","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"user"}', '2024-08-25 02:03:03.834319+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9615c8f-6876-4815-9d9c-9a9291853708', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 02:10:19.99296+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d001b95-29be-4e84-943e-94903fad1ab5', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 02:10:39.506842+00', ''),
	('00000000-0000-0000-0000-000000000000', '085823a7-2573-4863-be8c-503781e059b7', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 02:11:55.574791+00', ''),
	('00000000-0000-0000-0000-000000000000', '193f19de-df81-4002-945f-01c6fdde9113', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 02:12:09.74052+00', ''),
	('00000000-0000-0000-0000-000000000000', '757de652-37ab-4947-a06b-718525a223fd', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 02:13:28.501746+00', ''),
	('00000000-0000-0000-0000-000000000000', '59d83fc8-1d90-4a93-b370-9963182dad64', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 02:13:36.140118+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcc62a9b-415e-422c-8ee4-e317fea45898', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 02:18:41.986602+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aaf03945-56b0-4ee9-975a-88a759db41f7', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 02:23:34.147614+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb537a6f-2772-4f1c-ac5c-3256107cab15', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 02:23:57.263937+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6d4828e-0f3c-49ae-9d4f-185da3466257', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 02:24:26.850476+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b37242af-7e63-474c-9467-a7f4fb80fcfb', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 05:24:04.938057+00', ''),
	('00000000-0000-0000-0000-000000000000', '51750c3c-bef8-4610-8a6f-683aa794cd57', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 05:24:19.737548+00', ''),
	('00000000-0000-0000-0000-000000000000', '06661c77-9d7d-422d-bd6d-5ec36cc2bcad', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 05:25:36.913339+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bda7811a-46df-46c2-8dad-a0bcbfb98cea', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 05:26:02.418615+00', ''),
	('00000000-0000-0000-0000-000000000000', '37633235-58e0-4189-8020-0a324aec27dd', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 05:27:31.221978+00', ''),
	('00000000-0000-0000-0000-000000000000', '32a65d65-0da1-4632-9047-460e138b1277', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 05:27:47.780878+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b34e321-faaf-42ac-9557-dd24fc0b4cb7', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 05:28:02.306813+00', ''),
	('00000000-0000-0000-0000-000000000000', '25dd2d53-10be-4c63-b3e0-4970507477f9', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 05:28:56.093218+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e288cfb5-e972-436a-8f54-197db2bd00ac', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 05:29:03.573205+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ff7625a-54de-4da0-9bee-847ea89d95f3', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 05:29:24.565299+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c2025b23-411e-4a16-a485-d98832283642', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 07:57:16.259537+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e50b87d-72f9-4a2e-93a3-cca5fefcaab6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 07:57:49.181712+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0b4e236-3917-456d-abdd-8fdc51b0d240', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 07:58:06.960201+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e60a7f23-9985-49d8-932a-c38e0c0e5e48', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 07:58:12.905426+00', ''),
	('00000000-0000-0000-0000-000000000000', '16338d7f-40d5-4777-acfa-fbf2b70a9c21', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 07:59:02.713721+00', ''),
	('00000000-0000-0000-0000-000000000000', 'eae2394d-18e2-4733-a0d3-c310805a2d26', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 08:00:44.44621+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c91fac0-7da4-4a63-9e8b-3fbedf62230e', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 08:00:50.111192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5a297e1-5c55-4579-8162-74dda534124b', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 08:28:08.012133+00', ''),
	('00000000-0000-0000-0000-000000000000', '12fce0de-99aa-4fb4-a660-82e3582541e4', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 08:28:33.420654+00', ''),
	('00000000-0000-0000-0000-000000000000', '48121bc1-c36e-4c1b-8b4f-3638a26caed6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 08:30:06.17034+00', ''),
	('00000000-0000-0000-0000-000000000000', '0efe822b-72ca-4c55-9160-54b35bf81753', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 08:30:11.32301+00', ''),
	('00000000-0000-0000-0000-000000000000', '31c798c9-53b1-467e-9efe-b04ddbe1f537', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 08:31:13.206576+00', ''),
	('00000000-0000-0000-0000-000000000000', '16592b61-443b-401b-a88a-cb373c8a6457', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 08:31:18.95689+00', ''),
	('00000000-0000-0000-0000-000000000000', '3462621f-dce5-4271-8dc3-039f0166764f', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 08:32:31.15002+00', ''),
	('00000000-0000-0000-0000-000000000000', '23a488f0-1cc5-4715-9e9a-ed7285184379', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 08:32:37.088971+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e34a46f-04ef-48a8-88d0-fd3430e25ae6', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 09:04:05.65543+00', ''),
	('00000000-0000-0000-0000-000000000000', '10017999-e185-4fc0-8355-5e06620861f8', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 09:04:19.760258+00', ''),
	('00000000-0000-0000-0000-000000000000', '86691318-71fa-4ed2-a14a-d576c9b357a3', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 09:15:21.930214+00', ''),
	('00000000-0000-0000-0000-000000000000', '15ab5a19-db11-493e-b3a6-ff7208afa9ae', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 09:15:27.4689+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8467fb0-e0c2-4308-bb98-3eec14e4ecb7', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 09:16:04.836894+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7bc0d50-0c71-40e9-a35c-87d860b9e7fb', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 09:16:10.248381+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d44047b-7665-4c3d-b724-e54b85a23c91', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 09:43:39.841444+00', ''),
	('00000000-0000-0000-0000-000000000000', '0dc2d128-d089-42a5-bcf7-f8896ce88cd8', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 09:43:47.962044+00', ''),
	('00000000-0000-0000-0000-000000000000', '4f0b15b4-0244-4472-ad17-cc2b90ea9478', '{"action":"logout","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account"}', '2024-08-25 10:00:39.009033+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b86b7f59-848d-4cba-8dd0-3afe5466fb3e', '{"action":"login","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-08-25 10:00:47.955528+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b339279f-441b-4a39-9abf-1da014706ee0', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 10:59:04.149672+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7ba4f63-6b65-49e9-ba2e-a00a89d479ff', '{"action":"token_revoked","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 10:59:04.149899+00', ''),
	('00000000-0000-0000-0000-000000000000', '63e7dbb1-3481-41bd-b3f8-d3ffed21bd62', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 11:57:28.190663+00', ''),
	('00000000-0000-0000-0000-000000000000', '7dd32d99-dd59-4f17-a633-69df270dc521', '{"action":"token_revoked","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 11:57:28.1911+00', ''),
	('00000000-0000-0000-0000-000000000000', '57f1d9a1-9832-4bc5-bc4e-38427c4aa250', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:58:51.684029+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a91da9c-4a83-4bc7-a04c-2162d4d2fa2b', '{"action":"token_revoked","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:58:51.684487+00', ''),
	('00000000-0000-0000-0000-000000000000', '8e740112-4ff9-4ac7-bd20-124a08d05d02', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:58:55.846652+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bb3e7ca-5e3c-4610-9603-e74cdf3bd10f', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:59:27.276639+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cbe79cab-1aec-48a5-a6d8-8cb625305921', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:59:27.399257+00', ''),
	('00000000-0000-0000-0000-000000000000', '79b42f10-3691-40b4-97c1-1ac452f4756f', '{"action":"token_refreshed","actor_id":"18e196b7-a5bb-4360-8100-3405f994978e","actor_username":"meirongdev@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-08-25 12:59:28.071242+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '18e196b7-a5bb-4360-8100-3405f994978e', 'authenticated', 'authenticated', 'meirongdev@gmail.com', '$2a$10$Qqed8WRuPrEBlPzy5ivv9.Xi6W6oBdoadk4DHnN0VJaNkK1HOiGLi', '2024-08-24 08:17:44.256785+00', NULL, '', NULL, '6d0bddf6e57942e6ca759f7c072c0d66b9f964df5b1723f8f0e4d847', '2024-08-25 02:03:03.834161+00', '', '', NULL, '2024-08-25 10:00:47.956401+00', '{"tenants": ["dev", "test"], "provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-24 08:17:44.250231+00', '2024-08-25 12:58:51.68578+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


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

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('93539cf6-a613-466e-8e77-65150b806931', '18e196b7-a5bb-4360-8100-3405f994978e', '2024-08-25 10:00:47.956491+00', '2024-08-25 12:59:28.07173+00', NULL, 'aal1', NULL, '2024-08-25 12:59:28.071681', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '172.18.0.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('93539cf6-a613-466e-8e77-65150b806931', '2024-08-25 10:00:47.958696+00', '2024-08-25 10:00:47.958696+00', 'password', '7d3d4c0a-e361-4eea-a8ea-8ca927ea13e0');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") VALUES
	('01a44999-50ee-431e-b856-7ca11565d8a6', '18e196b7-a5bb-4360-8100-3405f994978e', 'recovery_token', '6d0bddf6e57942e6ca759f7c072c0d66b9f964df5b1723f8f0e4d847', 'meirongdev@gmail.com', '2024-08-25 02:03:03.835297', '2024-08-25 02:03:03.835297');


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 39, 'mteLJCKLtGqvxWphvWUAlw', '18e196b7-a5bb-4360-8100-3405f994978e', true, '2024-08-25 10:00:47.957448+00', '2024-08-25 10:59:04.15007+00', NULL, '93539cf6-a613-466e-8e77-65150b806931'),
	('00000000-0000-0000-0000-000000000000', 40, '3hvJvJ7cO1MQnQW0NeHHbw', '18e196b7-a5bb-4360-8100-3405f994978e', true, '2024-08-25 10:59:04.15033+00', '2024-08-25 11:57:28.191427+00', 'mteLJCKLtGqvxWphvWUAlw', '93539cf6-a613-466e-8e77-65150b806931'),
	('00000000-0000-0000-0000-000000000000', 41, 'dctHVHu5TLNKB9aJ0NVcvw', '18e196b7-a5bb-4360-8100-3405f994978e', true, '2024-08-25 11:57:28.191678+00', '2024-08-25 12:58:51.684862+00', '3hvJvJ7cO1MQnQW0NeHHbw', '93539cf6-a613-466e-8e77-65150b806931'),
	('00000000-0000-0000-0000-000000000000', 42, 'e7HSp9fTAjDs89-dud5xPQ', '18e196b7-a5bb-4360-8100-3405f994978e', false, '2024-08-25 12:58:51.685111+00', '2024-08-25 12:58:51.685111+00', 'dctHVHu5TLNKB9aJ0NVcvw', '93539cf6-a613-466e-8e77-65150b806931');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 42, true);


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
