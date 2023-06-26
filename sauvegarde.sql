--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: nolwayne
--

CREATE TABLE public.users (
    id_users integer NOT NULL,
    user_name character varying(100) NOT NULL,
    user_last_name character varying(100) NOT NULL,
    user_birth_date date,
    user_password character varying(100)
);


ALTER TABLE public.users OWNER TO nolwayne;

--
-- Name: users_id_users_seq; Type: SEQUENCE; Schema: public; Owner: nolwayne
--

CREATE SEQUENCE public.users_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_users_seq OWNER TO nolwayne;

--
-- Name: users_id_users_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nolwayne
--

ALTER SEQUENCE public.users_id_users_seq OWNED BY public.users.id_users;


--
-- Name: users id_users; Type: DEFAULT; Schema: public; Owner: nolwayne
--

ALTER TABLE ONLY public.users ALTER COLUMN id_users SET DEFAULT nextval('public.users_id_users_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nolwayne
--

COPY public.users (id_users, user_name, user_last_name, user_birth_date, user_password) FROM stdin;
1	Smith	Alice	1990-04-26	shampoing
2	Larvor	Berthold	1974-07-15	EnAvantGuingamp
3	Caradec	Lennaïc	1964-12-03	LarmorPlageRPZ396
4	Lagadec	Aziliz	2001-05-08	MaGoodBiatch++
5	Rolland	Gwenaelle	2000-10-23	rgthloa654
6	Deguinet	Joëlle	1996-09-18	roadmapChezDidi
7	Tanguy	Morgan	1989-07-02	EmoDu56=Keur
8	Pasco	Emma	1978-08-14	LesOrmeauxSontB067
9	Fortas	Nassim	1998-08-14	HappyHyppy298
10	Jaouen	Emilie	1995-12-26	AxelMonAm0u5
11	Lefranc	Elias	1978-10-16	M4xEtM4r13
12	Sapin	Elodie	1998-08-06	B0G0553p+
13	Courage	Adora	2000-01-09	JuAIKpp650
14	Aufray	Hugues	1972-09-19	DeboutLesG4RS
15	Caradec	Yann	1990-06-29	SueL0c34n5
\.


--
-- Name: users_id_users_seq; Type: SEQUENCE SET; Schema: public; Owner: nolwayne
--

SELECT pg_catalog.setval('public.users_id_users_seq', 15, true);


--
-- PostgreSQL database dump complete
--

