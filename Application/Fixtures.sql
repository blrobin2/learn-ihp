

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('824ca59d-8ddf-4eea-8edb-3ede037e4015', 'Hello Universe!', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2021-03-03 17:41:00.249652-05');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('152c5c07-6865-417b-be05-6f6d54f4386b', 'Test', '# Cool

* Mark
* Down', '2021-03-04 08:52:39.174348-05');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('1382a28e-46ea-4677-81da-9b0ad9afd25a', '152c5c07-6865-417b-be05-6f6d54f4386b', 'Bennie', 'Hello Nurse');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('e82adc02-9246-4833-b1ea-ef5b26df605a', '152c5c07-6865-417b-be05-6f6d54f4386b', 'Bennie', 'Hello Again Nurse');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


