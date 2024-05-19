--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('tobasen', 1, 1000);
INSERT INTO public.users VALUES ('user_1716110437229', 1, 299);
INSERT INTO public.users VALUES ('user_1716110437230', 1, 20);
INSERT INTO public.users VALUES ('newest2', 0, 1000);
INSERT INTO public.users VALUES ('newst2', 0, 1000);
INSERT INTO public.users VALUES ('user_1716111666354', 2, 675);
INSERT INTO public.users VALUES ('user_1716111666353', 2, 270);
INSERT INTO public.users VALUES ('new12', 2, 5);
INSERT INTO public.users VALUES ('tobias', 6, 2);
INSERT INTO public.users VALUES ('user_1716114634220', 2, 174);
INSERT INTO public.users VALUES ('user_1716110973995', 2, 1000);
INSERT INTO public.users VALUES ('user_1716110973996', 6, 22);
INSERT INTO public.users VALUES ('user_1716114634219', 1, 458);
INSERT INTO public.users VALUES ('user_1716112388962', 1, 1000);
INSERT INTO public.users VALUES ('new', 0, 1000);
INSERT INTO public.users VALUES ('user_1716111030240', 3, 747);
INSERT INTO public.users VALUES ('tobsen', 3, 1);
INSERT INTO public.users VALUES ('user_1716112388963', 5, 134);
INSERT INTO public.users VALUES ('user_1716111030241', 6, 160);
INSERT INTO public.users VALUES ('user_1716111069677', 2, 1000);
INSERT INTO public.users VALUES ('tobs', 8, 1);
INSERT INTO public.users VALUES ('newest 1', 3, 3);
INSERT INTO public.users VALUES ('user_1716111069678', 4, 338);
INSERT INTO public.users VALUES ('user_1716111093972', 1, 1000);
INSERT INTO public.users VALUES ('user_1716111093973', 4, 87);
INSERT INTO public.users VALUES ('user_1716111146539', 2, 1000);
INSERT INTO public.users VALUES ('user_1716112485963', 1, 937);
INSERT INTO public.users VALUES ('user_1716111146540', 3, 394);
INSERT INTO public.users VALUES ('user_1716115056673', 1, 1000);
INSERT INTO public.users VALUES ('user_1716112485964', 5, 424);
INSERT INTO public.users VALUES ('new user', 0, 1000);
INSERT INTO public.users VALUES ('user_1716115056674', 4, 113);
INSERT INTO public.users VALUES ('user_1716112803731', NULL, NULL);
INSERT INTO public.users VALUES ('user_1716112803732', NULL, NULL);
INSERT INTO public.users VALUES ('newnew', NULL, NULL);
INSERT INTO public.users VALUES ('new test', NULL, NULL);
INSERT INTO public.users VALUES ('test test', NULL, NULL);
INSERT INTO public.users VALUES ('new new new', NULL, NULL);
INSERT INTO public.users VALUES ('new new new new', NULL, 1000);
INSERT INTO public.users VALUES ('new 1234', 1, 1000);
INSERT INTO public.users VALUES ('user_1716115165433', 2, 519);
INSERT INTO public.users VALUES ('new12345', 2, 5);
INSERT INTO public.users VALUES ('user_1716115165434', 2, 14);
INSERT INTO public.users VALUES ('ganz neu', 0, 1000);
INSERT INTO public.users VALUES ('user_1716114014976', 1, 273);
INSERT INTO public.users VALUES ('user_1716114014977', 4, 98);
INSERT INTO public.users VALUES ('ganz neu 1', 2, 4);
INSERT INTO public.users VALUES ('user_1716116416362', 2, 138);
INSERT INTO public.users VALUES ('user_1716116416363', 5, 14);
INSERT INTO public.users VALUES ('ganz neu 3', 0, 1000);
INSERT INTO public.users VALUES ('ganz neu 2', 3, 2);
INSERT INTO public.users VALUES ('user_1716116918116', 2, 756);
INSERT INTO public.users VALUES ('user_1716116918117', 5, 105);
INSERT INTO public.users VALUES ('user_1716116957940', 2, 420);
INSERT INTO public.users VALUES ('user_1716116957941', 5, 52);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

