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
    guess integer NOT NULL,
    user_id integer
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
-- Name: user_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_table (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.user_table OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.user_table.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: user_table user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_table ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.games (game_id, guess, user_id) FROM stdin;
1	1	7
2	2	7
3	3	7
4	1	8
5	2	8
6	1	8
7	2	8
8	1	9
9	2	9
10	1	9
11	2	9
12	1	8
13	2	8
14	1	8
15	2	8
16	1	8
17	2	8
18	2	4
19	440	24
20	302	24
21	28	25
22	17	25
23	513	24
24	463	24
25	453	24
26	5	26
27	4	4
28	254	27
29	574	27
30	719	28
31	458	28
32	374	27
33	323	27
34	325	27
35	266	29
36	58	29
37	402	30
38	7	30
39	424	29
40	348	29
41	984	29
42	191	32
43	196	32
44	855	33
45	212	33
46	356	32
47	985	32
48	755	32
49	9	34
50	776	35
51	424	35
52	108	36
53	80	36
54	878	35
55	239	35
56	294	35
57	12	37
58	265	38
59	721	38
60	279	39
61	635	39
62	280	38
63	886	38
64	908	38
65	11	4
66	696	40
67	989	40
68	488	41
69	494	41
70	484	40
71	109	40
72	466	40
73	947	42
74	398	42
75	385	43
76	585	43
77	349	42
78	635	42
79	776	42
80	-6	4
81	11111111	4
82	9	4
83	10	4
84	466	44
85	178	44
86	32	45
87	742	45
88	161	44
89	97	44
90	283	44
91	977	46
92	102	46
93	732	47
94	70	47
95	114	46
96	433	46
97	219	46
\.


--
-- Data for Name: user_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.user_table (user_id, username) FROM stdin;
3	name
4	test
5	user_1676115452738
6	user_1676115452737
7	Me
8	user_1676116526167
9	user_1676116526166
10	user_1676118004836
11	user_1676118004835
12	user_1676118085341
13	user_1676118085340
14	user_1676118208692
15	user_1676118208691
16	user_1676118212352
17	user_1676118212351
18	user_1676118731410
19	user_1676118731409
20	user_1676169553903
21	user_1676169553902
22	user_1676169614841
23	user_1676169614840
24	user_1676170836901
25	user_1676170836900
26	tesy
27	user_1676170920341
28	user_1676170920340
29	user_1676171028099
30	user_1676171028098
31	Test 1
32	user_1676171115321
33	user_1676171115320
34	Test 2
35	user_1676171251863
36	user_1676171251862
37	test 3
38	user_1676171642034
39	user_1676171642033
40	user_1676171851211
41	user_1676171851210
42	user_1676172004950
43	user_1676172004949
44	user_1676172684017
45	user_1676172684016
46	user_1676172734463
47	user_1676172734462
\.


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 97, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 47, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: user_table number_guess_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT number_guess_username_key UNIQUE (username);


--
-- Name: user_table username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_table
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_table(user_id);


--
-- PostgreSQL database dump complete
--

