--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: userbase; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.userbase (
    username character varying(30),
    games_played integer,
    best_game integer
);


ALTER TABLE public.userbase OWNER TO freecodecamp;

--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.userbase VALUES ('user_1664664612494', 2, 171);
INSERT INTO public.userbase VALUES ('user_1664664612495', 5, 205);
INSERT INTO public.userbase VALUES ('user_1664664240603', 2, 34);
INSERT INTO public.userbase VALUES ('user_1664662844108', 2, 550);
INSERT INTO public.userbase VALUES ('user_1664664240604', 5, 46);
INSERT INTO public.userbase VALUES ('user_1664662844109', 5, 124);
INSERT INTO public.userbase VALUES ('user_1664662905675', 2, 419);
INSERT INTO public.userbase VALUES ('user_1664664292845', 2, 378);
INSERT INTO public.userbase VALUES ('user_1664664292846', 5, 160);
INSERT INTO public.userbase VALUES ('user_1664662905676', 5, 351);
INSERT INTO public.userbase VALUES ('user_1664664665359', 2, 233);
INSERT INTO public.userbase VALUES ('user_1664664665360', 5, 224);
INSERT INTO public.userbase VALUES ('user_1664663313009', 2, 106);
INSERT INTO public.userbase VALUES ('user_1664664339905', 2, 535);
INSERT INTO public.userbase VALUES ('user_1664663313010', 5, 141);
INSERT INTO public.userbase VALUES ('user_1664664339906', 5, 207);
INSERT INTO public.userbase VALUES ('user_1664663720695', 2, 134);
INSERT INTO public.userbase VALUES ('user_1664663720696', 5, 157);
INSERT INTO public.userbase VALUES ('chabane', 4, 3);
INSERT INTO public.userbase VALUES ('user_1664664348813', 2, 23);
INSERT INTO public.userbase VALUES ('user_1664664348814', 5, 441);
INSERT INTO public.userbase VALUES ('user_1664663970343', 2, 948);
INSERT INTO public.userbase VALUES ('john', 2, 3);
INSERT INTO public.userbase VALUES ('user_1664663970344', 5, 121);
INSERT INTO public.userbase VALUES ('user_1664664442726', 2, 315);
INSERT INTO public.userbase VALUES ('user_1664664101937', 2, 297);
INSERT INTO public.userbase VALUES ('user_1664664101938', 5, 299);
INSERT INTO public.userbase VALUES ('user_1664664442727', 5, 312);
INSERT INTO public.userbase VALUES ('satare', 1, 10);
INSERT INTO public.userbase VALUES ('user_1664664573062', 2, 538);
INSERT INTO public.userbase VALUES ('user_1664664573063', 5, 115);
INSERT INTO public.userbase VALUES ('user_1664664588941', 2, 272);
INSERT INTO public.userbase VALUES ('user_1664664588942', 5, 348);
INSERT INTO public.userbase VALUES ('user_1664664606785', 2, 115);
INSERT INTO public.userbase VALUES ('user_1664664606786', 5, 126);


--
-- PostgreSQL database dump complete
--

