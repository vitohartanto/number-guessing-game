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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2);
INSERT INTO public.games VALUES (2, 2, 2);
INSERT INTO public.games VALUES (3, 3, 2);
INSERT INTO public.games VALUES (4, 4, 2);
INSERT INTO public.games VALUES (5, 5, 3);
INSERT INTO public.games VALUES (6, 6, 3);
INSERT INTO public.games VALUES (7, 7, 2);
INSERT INTO public.games VALUES (8, 8, 2);
INSERT INTO public.games VALUES (9, 9, 2);
INSERT INTO public.games VALUES (10, 10, 2);
INSERT INTO public.games VALUES (11, 11, 2);
INSERT INTO public.games VALUES (12, 12, 3);
INSERT INTO public.games VALUES (13, 13, 3);
INSERT INTO public.games VALUES (14, 14, 2);
INSERT INTO public.games VALUES (15, 15, 2);
INSERT INTO public.games VALUES (16, 16, 2);
INSERT INTO public.games VALUES (17, 17, 2);
INSERT INTO public.games VALUES (18, 18, 2);
INSERT INTO public.games VALUES (19, 19, 3);
INSERT INTO public.games VALUES (20, 20, 3);
INSERT INTO public.games VALUES (21, 21, 2);
INSERT INTO public.games VALUES (22, 22, 2);
INSERT INTO public.games VALUES (23, 23, 2);
INSERT INTO public.games VALUES (24, 24, 2);
INSERT INTO public.games VALUES (25, 25, 2);
INSERT INTO public.games VALUES (26, 26, 3);
INSERT INTO public.games VALUES (27, 27, 3);
INSERT INTO public.games VALUES (28, 28, 2);
INSERT INTO public.games VALUES (29, 18, 7);
INSERT INTO public.games VALUES (30, 29, 506);
INSERT INTO public.games VALUES (31, 29, 154);
INSERT INTO public.games VALUES (32, 30, 47);
INSERT INTO public.games VALUES (33, 30, 882);
INSERT INTO public.games VALUES (34, 29, 960);
INSERT INTO public.games VALUES (35, 29, 368);
INSERT INTO public.games VALUES (36, 29, 829);
INSERT INTO public.games VALUES (37, 31, 3);
INSERT INTO public.games VALUES (38, 32, 279);
INSERT INTO public.games VALUES (39, 32, 988);
INSERT INTO public.games VALUES (40, 33, 375);
INSERT INTO public.games VALUES (41, 33, 642);
INSERT INTO public.games VALUES (42, 32, 832);
INSERT INTO public.games VALUES (43, 32, 774);
INSERT INTO public.games VALUES (44, 32, 82);
INSERT INTO public.games VALUES (45, 34, 791);
INSERT INTO public.games VALUES (46, 34, 442);
INSERT INTO public.games VALUES (47, 35, 472);
INSERT INTO public.games VALUES (48, 35, 929);
INSERT INTO public.games VALUES (49, 34, 233);
INSERT INTO public.games VALUES (50, 34, 250);
INSERT INTO public.games VALUES (51, 34, 833);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '577', 1);
INSERT INTO public.users VALUES (2, '600', 1);
INSERT INTO public.users VALUES (3, '569', 1);
INSERT INTO public.users VALUES (4, '985', 1);
INSERT INTO public.users VALUES (5, '276', 1);
INSERT INTO public.users VALUES (6, '618', 1);
INSERT INTO public.users VALUES (7, '101', 1);
INSERT INTO public.users VALUES (8, '810', 1);
INSERT INTO public.users VALUES (9, '288', 1);
INSERT INTO public.users VALUES (10, '491', 1);
INSERT INTO public.users VALUES (11, '107', 1);
INSERT INTO public.users VALUES (12, '399', 1);
INSERT INTO public.users VALUES (13, '852', 1);
INSERT INTO public.users VALUES (14, '192', 1);
INSERT INTO public.users VALUES (15, '725', 1);
INSERT INTO public.users VALUES (16, '409', 1);
INSERT INTO public.users VALUES (17, '330', 1);
INSERT INTO public.users VALUES (19, '433', 1);
INSERT INTO public.users VALUES (20, '30', 1);
INSERT INTO public.users VALUES (21, '754', 1);
INSERT INTO public.users VALUES (22, '749', 1);
INSERT INTO public.users VALUES (23, '497', 1);
INSERT INTO public.users VALUES (24, '745', 1);
INSERT INTO public.users VALUES (25, '445', 1);
INSERT INTO public.users VALUES (26, '258', 1);
INSERT INTO public.users VALUES (27, '670', 1);
INSERT INTO public.users VALUES (28, '348', 1);
INSERT INTO public.users VALUES (18, '208', 2);
INSERT INTO public.users VALUES (30, 'user_1705505059989', 2);
INSERT INTO public.users VALUES (29, 'user_1705505059990', 5);
INSERT INTO public.users VALUES (31, '522', 1);
INSERT INTO public.users VALUES (33, 'user_1705506089613', 2);
INSERT INTO public.users VALUES (32, 'user_1705506089614', 5);
INSERT INTO public.users VALUES (35, 'user_1705506251074', 2);
INSERT INTO public.users VALUES (34, 'user_1705506251075', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

