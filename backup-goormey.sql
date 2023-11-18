--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

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
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: goormey
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO goormey;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO goormey;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO goormey;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO goormey;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO goormey;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO goormey;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO goormey;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO goormey;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO goormey;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: answers; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.answers (
    id bigint NOT NULL,
    question_id bigint NOT NULL,
    content text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    submission_id bigint
);


ALTER TABLE public.answers OWNER TO goormey;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO goormey;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO goormey;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    content text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO goormey;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO goormey;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.contacts (
    id bigint NOT NULL,
    email character varying,
    message text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.contacts OWNER TO goormey;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO goormey;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.ingredients (
    id bigint NOT NULL,
    description character varying,
    recipe_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer
);


ALTER TABLE public.ingredients OWNER TO goormey;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredients_id_seq OWNER TO goormey;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: instructions; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.instructions (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer
);


ALTER TABLE public.instructions OWNER TO goormey;

--
-- Name: instructions_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.instructions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructions_id_seq OWNER TO goormey;

--
-- Name: instructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.instructions_id_seq OWNED BY public.instructions.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO goormey;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO goormey;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: pg_search_documents; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.pg_search_documents (
    id bigint NOT NULL,
    content text,
    searchable_type character varying,
    searchable_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pg_search_documents OWNER TO goormey;

--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.pg_search_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pg_search_documents_id_seq OWNER TO goormey;

--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.pg_search_documents_id_seq OWNED BY public.pg_search_documents.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    content text,
    question_type character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    moderation text,
    hint text,
    survey_id bigint NOT NULL,
    "position" integer
);


ALTER TABLE public.questions OWNER TO goormey;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO goormey;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    name character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL,
    serves integer,
    published boolean DEFAULT false
);


ALTER TABLE public.recipes OWNER TO goormey;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO goormey;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO goormey;

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.submissions (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    survey_id bigint NOT NULL,
    email character varying,
    submission_complete boolean
);


ALTER TABLE public.submissions OWNER TO goormey;

--
-- Name: submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.submissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_id_seq OWNER TO goormey;

--
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- Name: surveys; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.surveys (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    description text
);


ALTER TABLE public.surveys OWNER TO goormey;

--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surveys_id_seq OWNER TO goormey;

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.surveys_id_seq OWNED BY public.surveys.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: goormey
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    admin boolean DEFAULT false,
    first_name character varying,
    last_name character varying
);


ALTER TABLE public.users OWNER TO goormey;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: goormey
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO goormey;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: goormey
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: instructions id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.instructions ALTER COLUMN id SET DEFAULT nextval('public.instructions_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: pg_search_documents id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.pg_search_documents ALTER COLUMN id SET DEFAULT nextval('public.pg_search_documents_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: submissions id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.surveys ALTER COLUMN id SET DEFAULT nextval('public.surveys_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
7	moderation	<div>Indicate on the slide how much you're into food 🍝<br><br>"I could eat cardboard, if it gave me enery": <strong>0<br></strong>"I live to eat": <strong>10</strong></div>	Question	7	2022-03-30 13:31:08.323753	2022-03-30 13:31:08.323753
8	moderation	<div>Are you an amateur? A regular? A professional?</div>	Question	8	2022-03-30 13:32:42.749504	2022-03-30 13:32:42.749504
9	moderation		Question	9	2022-03-30 13:33:56.516349	2022-03-30 13:33:56.516349
10	moderation		Question	12	2022-03-30 13:35:48.435696	2022-03-30 13:35:48.435696
11	moderation		Question	10	2022-03-30 13:37:29.750251	2022-03-30 13:37:29.750251
12	moderation		Question	11	2022-03-30 13:37:54.353873	2022-03-30 13:37:54.353873
1	description	<div>Hi there 👋 and thanks a lot for taking the time to come to this small survey 🤗<br><br>I've created this survey to better understand what makes a cool and active community, a community that's connected by a <strong>shared passion for food and home-cooking</strong> 👩‍🍳<br><br>Feel free to roam the early stage <a href="https://www.goormey.com">page</a>, create a profile yourself or <a href="mailto:hey@goormey.com">email me</a> or get in touch via <a href="https://www.goormey.com/contacts/new">contact</a> button at the bottom of the page!<br><br>🙏</div>	Survey	1	2022-03-30 12:01:55.100182	2022-03-30 14:27:05.450831
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
2	photo	Recipe	2	2	2021-10-27 06:27:02.959824
4	photo	Recipe	1	4	2021-10-28 12:40:53.335001
5	photo	Recipe	5	5	2021-10-29 08:48:39.537639
6	photo	Recipe	4	6	2021-10-29 09:07:16.831157
7	photo	Recipe	9	7	2021-11-02 05:15:11.282501
9	photo	Recipe	10	9	2021-11-03 09:22:43.626397
10	photo	Recipe	11	10	2021-11-03 17:06:40.309404
11	photo	Recipe	12	11	2021-11-04 11:45:16.720702
12	photo	Recipe	13	12	2021-11-04 16:17:04.506816
13	photo	Recipe	14	13	2021-11-05 10:22:45.267256
14	avatar	User	1	14	2021-12-03 07:55:49.70455
15	photo	Recipe	17	15	2021-12-05 12:39:38.196048
17	photo	Recipe	19	17	2021-12-14 17:30:32.794234
18	photo	Recipe	18	18	2021-12-14 19:12:44.505561
19	photo	Recipe	20	19	2021-12-16 13:53:51.590103
20	photo	Recipe	21	20	2021-12-23 13:19:28.610208
22	photo	Recipe	23	22	2021-12-23 13:39:06.752036
24	photo	Recipe	22	24	2021-12-24 12:33:09.328967
25	photo	Recipe	26	25	2021-12-24 14:05:51.811402
26	photo	Recipe	25	26	2022-01-05 14:01:03.863071
27	photo	Recipe	28	27	2022-01-05 14:01:58.775323
28	photo	Recipe	29	28	2022-01-12 16:41:05.575006
29	photo	Recipe	32	29	2022-01-15 18:43:50.022729
30	photo	Recipe	33	30	2022-01-16 09:46:25.801235
31	photo	Recipe	34	31	2022-01-22 13:30:00.962825
34	avatar	User	21	34	2022-02-23 10:16:59.876751
35	photo	Recipe	36	35	2022-02-24 11:07:41.517918
36	photo	Recipe	65	36	2022-03-16 16:00:04.515011
37	avatar	User	22	37	2022-03-16 16:15:19.529761
39	photo	Recipe	69	39	2022-04-03 18:02:54.491858
40	photo	Recipe	70	40	2022-04-03 18:34:23.392384
41	photo	Recipe	71	41	2022-07-04 22:08:30.789945
42	photo	Recipe	72	42	2022-08-16 20:19:50.416203
45	avatar	User	2	45	2022-10-03 08:29:09.923398
46	photo	Recipe	73	46	2022-11-17 11:24:23.547484
48	photo	Recipe	76	48	2022-11-28 17:12:22.225877
49	photo	Recipe	77	49	2022-11-28 19:21:58.955436
52	photo	Recipe	78	52	2022-12-30 22:41:58.536406
53	photo	Recipe	80	53	2023-01-02 17:46:34.593562
55	avatar	User	11	55	2023-01-08 15:14:49.105882
56	photo	Recipe	81	56	2023-01-09 15:44:55.173554
57	photo	Recipe	82	57	2023-01-14 13:21:28.680587
59	photo	Recipe	84	59	2023-01-14 14:04:04.293606
60	photo	Recipe	83	60	2023-01-14 17:14:15.074731
61	photo	Recipe	85	61	2023-01-29 17:56:05.248916
62	avatar	User	342	62	2023-04-11 02:27:04.854967
63	avatar	User	348	63	2023-04-19 16:26:32.331154
64	avatar	User	352	64	2023-04-23 18:52:35.127687
65	avatar	User	355	65	2023-04-27 18:19:51.935798
66	avatar	User	356	66	2023-04-29 03:53:16.697357
67	avatar	User	358	67	2023-05-01 07:32:42.303608
68	avatar	User	361	68	2023-05-07 14:48:30.729693
69	avatar	User	363	69	2023-05-14 04:57:08.295051
70	avatar	User	365	70	2023-05-17 13:16:24.5053
71	avatar	User	367	71	2023-05-18 01:07:20.716741
72	avatar	User	368	72	2023-05-20 21:08:48.983573
73	avatar	User	375	73	2023-06-02 05:44:37.861891
74	photo	Recipe	86	74	2023-06-26 04:19:10.166299
75	photo	Recipe	87	75	2023-06-29 17:49:23.734422
76	avatar	User	381	76	2023-07-01 10:44:17.195272
77	avatar	User	383	77	2023-07-03 13:13:38.753207
78	avatar	User	385	78	2023-07-21 02:38:22.642754
79	avatar	User	386	79	2023-07-23 19:33:32.320511
80	avatar	User	387	80	2023-07-27 14:53:24.519549
81	avatar	User	389	81	2023-07-30 11:40:11.612197
82	avatar	User	391	82	2023-07-31 14:21:49.778693
83	avatar	User	395	83	2023-08-03 03:24:00.920738
86	photo	Recipe	92	86	2023-09-05 20:09:53.490811
87	photo	Recipe	93	87	2023-09-12 16:10:10.787053
88	photo	Recipe	94	88	2023-11-14 10:12:45.575954
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
18	tijmhe5779oa8aif4r66pv7qumr3	D555BB03-C388-48A0-8C48-E1F67A0FC19C.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3809902	yZonXrncNotsQIyFlBQa3g==	2021-12-14 19:12:44.503512
2	tk54m9ll70fixa01y5fol0qor01h	D076271D-09B5-4751-B92B-7A3B6C58A0F3.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3887283	0hfh0SA4rd2uLPhd6v/Zjg==	2021-10-27 06:27:02.947426
4	ium429koj4mjt0bmogydpqj8ylug	860BA62F-8A34-4082-B34B-2F295B007EE5_1_201_a.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3794806	uAVTADr3EP1iTwMJcidcIA==	2021-10-28 12:40:53.329225
5	mhkjyh94of2bmb7n8wlnug7vj8f0	927A88E6-825C-4B4D-AC1A-0DF71DE97223.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3877383	eh5+LHrJZ2Mdi5Asxl/mHQ==	2021-10-29 08:48:39.504515
6	mrkqaa73haomdtft47exupq4n0r0	C5410476-D98B-4668-B368-E5803BEE7038.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3368996	TnA+RUbIe4yZ6gPkys380w==	2021-10-29 09:07:16.822959
7	zertfid2k6pr0589268w3ysjkikk	BB6568EF-1852-4AEE-960B-0359821631D3.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	530483	fS7sXE+i29fm5uND0ELPdg==	2021-11-02 05:15:11.278841
45	2fksemir7hwifx1c6ad3dmo73lmz	F1672D76-86BF-4AEA-848B-2983DA00D76E.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	190570	Ugqaux+Vih/1jyaKQTjFgA==	2022-10-03 08:29:09.919271
9	wgj7f4hk1aa0psnvscnqp4bok21x	C7412CFA-6EDA-41C6-B166-AA339F2AB428.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3726909	ETZFIxdjLitN3FNiq/M26A==	2021-11-03 09:22:43.621182
10	qsw3umwftr1ikxqcok9zcexwh7v8	0DD4E098-BCE9-43BB-A7CF-C3697173E3C2.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	4675753	AmhyFuxUp9tsF2SDE+CkjQ==	2021-11-03 17:06:40.305999
11	hkzr9oqz109ljer0t2e0tayoi4zg	2450E291-0D6F-401E-A917-996A5FC9008C.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3713083	IuMM4CoFfB6YJjIXr0HdDg==	2021-11-04 11:45:16.716952
12	6fuav47a4blr5aus3bfzlhx52yme	9828E662-EB90-445F-A6D5-74D48007411A.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	830748	zy4t5uyHXSSAee4RrCV4/A==	2021-11-04 16:17:04.503487
13	3tc97urj4k0qgpm794dne9pmk3uo	A278E3E0-68C9-4940-BA9E-25499136F630.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	312897	NvjQp89OcvUWzkxJEaHWmA==	2021-11-05 10:22:45.26498
14	js3qt02nkwiqd553oriklycgqg2m	F1A4AF05-1048-4EE3-9B6A-835B59B329B2.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	862369	/ReB+2sHGAG8/BuH0irUeA==	2021-12-03 07:55:49.700474
15	z52poixsdt50ntta5m2ny7nb7i5b	FC2502E2-2925-44D2-B1B1-73220366D8EA.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	211749	49SpADtWt+g3Xq7LYrfh3A==	2021-12-05 12:39:38.192389
27	uk8erby6sc205zky7dvtr5ufza9y	8F81ED6B-C324-4987-95DC-8D53096070E5.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	216434	w5vbzKjDVptXrrpxIAArtw==	2022-01-05 14:01:58.773199
17	mfm6dbrlox9s9d73kaqxeytr39be	D67FAB30-4DC8-4A9C-AA22-6653CAD3CE1C.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	588755	ygUKwnvs0PSDEEAIiXNu/g==	2021-12-14 17:30:32.787837
19	9rkf35whw8a27kie6jm3l9g70fid	F45D62EA-98B4-4F68-ACFD-B7E77985D8F7.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3213063	/Vbt+hyQeZ/FsgrEs59gVA==	2021-12-16 13:53:51.585518
20	9id7567jsxqmvtbknbzx2s7l4jzd	396AA4B2-1396-4CC9-932D-B67DBACAF216.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	4043024	rwf258qf8Yx1VOHXdSho7w==	2021-12-23 13:19:28.607191
22	2n10rbjrrxwije1j96lb4ibl3s00	8235A10E-1E56-46FA-A997-39BE82154EF1.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3638977	lL7Ij741NVhTmBOvbQUecA==	2021-12-23 13:39:06.749364
28	atfoo9zeedpu0fswy9s59mwdoj9m	09CD1C23-52F8-41EE-A9E9-6717720050CF.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3906697	I4jQD2msMhSnEU0Nz6foCg==	2022-01-12 16:41:05.568293
24	5rvuo9vt5i4fg1wz1vf05xcapc08	C94F1066-88DA-42A6-B139-469A4ABCD92D.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3400421	wH/9y8sm3ZV332Uh7XrfdQ==	2021-12-24 12:33:09.327173
25	556frkkw6gflia8rn9we407r13x5	1C5586F3-38BD-4EA2-90CA-C95EA712AA10.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	1282180	b9aJz7nZmW3Xs4D18LdSLQ==	2021-12-24 14:05:51.809074
26	yw3wxvj1jtcbw6g1skh8wkai3jb1	5102AD0B-2049-4D3E-8833-94FE9E39E033.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	5309099	2zdD/2NiywFrQ9TFWVPAxA==	2022-01-05 14:01:03.859645
29	lc7f3asquf21wpr8fwz0lzusr488	02DBEF3A-D58E-4B4D-ACDB-C526E5B1C15D.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3951334	s1jquUC+M4PIq6qelSUuoA==	2022-01-15 18:43:50.019089
30	8wbeh85s3398ey5h1xom6rmoztf6	A01D8450-9E10-46D6-94AD-DB1611EAC930.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	215110	E4EQo3W/w7a0FUFr5J0vYQ==	2022-01-16 09:46:25.799072
31	wp0kajwsepc5wr7frbafjtbpe285	4F6CAC1D-19E1-432A-B231-EC7265CCA68C.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	2916575	fJFkYPw1y/oDfheKmlj2KA==	2022-01-22 13:30:00.958496
36	wp8kbqh6jtm1c6fz8nvb9xnr67nn	8E0C8B58-7CA6-42B8-8BE0-7209DC733E95.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	1511703	c6nIGMohXBZlhdR4tmQMrg==	2022-03-16 16:00:04.511857
34	dg5zvxo2nwbaqfd6q78j6s6yechx	Screenshot 2022-02-23 at 11.16.32.png	image/png	{"identified":true,"analyzed":true}	cloudinary	1412936	OvqZqOkZ60kjQFY4vhaWeQ==	2022-02-23 10:16:59.875101
35	k1fncvuikczune8mvqwwwwb1u5wp	D4DB2BF8-9A2B-4211-83B2-73E036DBE95A.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	4348770	cvRFTMbeb0EnbV+iViIXPQ==	2022-02-24 11:07:41.515418
37	1itgyhtdoxc0o2zezo33ufeab0dr	74E6186C-8DAB-4864-B14E-9F3251AE74E7.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	465014	8YYhK8q36SfvI/Iv47A3eg==	2022-03-16 16:15:19.527644
39	f3wdgltpa7b9ledof3lpskv4ny0u	98E234B4-A2A2-4F14-8CD6-CCF0B18554DA.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3562808	yjBDQ/xAOzZRDNv3PQegRw==	2022-04-03 18:02:54.487883
40	l04b9w3diiio6yy1zn787ea9c0r8	441E272B-DF89-40F1-BDD6-BB59A1B913E1.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3156454	HVBzUcG2atSA3HsSps/H6w==	2022-04-03 18:34:23.39028
41	eq6wsje1cnqokvs9f2o4tjywcan6	60FFF068-4BA1-4EA1-A93D-DC9B7EBF2688.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	2724486	znA8qmeuIFDuq5WE0h1n9w==	2022-07-04 22:08:30.786057
42	6nhlipgkn6n13qw8t3ou8ial6yxw	06BA024F-10E4-41EA-8192-797F214C23A8.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	3911953	R0ydteBrszMOGwgel0rJmA==	2022-08-16 20:19:50.412334
46	tb430jheem93jle0cggt3iqq8773	D9A8FA6F-3845-48D1-8F01-13206BBFD5BF.jpeg	image/jpeg	{"identified":true,"analyzed":true}	cloudinary	2973628	GJgLtWxJw2bOIeVmJaEicQ==	2022-11-17 11:24:23.540487
48	lhskfiqkie1aw46lguqvrus5ezoq	6CD8AC81-45A2-40E9-BDD5-FCCDAF4457BE.jpeg	image/jpeg	{"identified":true}	cloudinary	2903027	btDWeETpQBReTfwAIDGwyQ==	2022-11-28 17:12:22.213739
49	8tgkg9ngiyraw2gwck0jfc91k31p	B9ECA6BA-AA9F-432E-BC71-CBDCBEF6121A.jpeg	image/jpeg	{"identified":true}	cloudinary	5590889	2m2HFI/JKzMVTKRjrkFjAA==	2022-11-28 19:21:58.942366
52	0e2tpn6pe0t4w0uvqgjr55gim681	CF494303-FCDB-48B6-BCDE-768DACC459A5.jpeg	image/jpeg	{"identified":true}	cloudinary	4850230	8qtPDhuM09BJ8ePuL1fNOw==	2022-12-30 22:41:58.532668
53	0az9wo27lydm2b49x22ld42sj4j3	162B0A9E-16B7-4CFE-8D0F-6324960786DA.jpeg	image/jpeg	{"identified":true}	cloudinary	4506219	08DV63L7dfepUZ0tyedQAg==	2023-01-02 17:46:34.590237
55	s0oh2wtrc4ug271kzlqh362zsztv	rosemary-photo-1-783x1024.jpg	image/jpeg	{"identified":true}	cloudinary	28978	FpeHLlv7garhZuBtldWs1A==	2023-01-08 15:14:49.102436
56	67q56ywd944f603qw7hg4g0rkbrc	IMG_7895 (1).jpeg	image/jpeg	{"identified":true}	cloudinary	1759106	heMPQ76W9+VORzIzbP9yoQ==	2023-01-09 15:44:55.168574
57	ewjjns7eorj9emsb7ma9o0vaptqf	AE5BA0A1-F851-4523-B1B4-11517CE177FC.jpeg	image/jpeg	{"identified":true}	cloudinary	3796693	7Ni2W1cFh0TWJyPZ/EYRjg==	2023-01-14 13:21:28.675714
59	gckrxnrjmwvggmfy2f5ok5tu96mv	3B45B819-F786-4CD2-BCCC-3B664A2611DE.jpeg	image/jpeg	{"identified":true}	cloudinary	4242333	8UVBqlkbUJzcbJeDEMZPBQ==	2023-01-14 14:04:04.290784
60	z5wylu1axrv65898b5l44z9i1p4q	E29144DF-C962-45A3-906B-8824A55E16F8.jpeg	image/jpeg	{"identified":true}	cloudinary	2870785	xY+H/dra7/8Ye/FIew4t4A==	2023-01-14 17:14:15.06901
61	iwh0szjyfco924nzg97cbs20bpz6	18744822-43A2-4BC9-8EBD-4768785842A1.jpeg	image/jpeg	{"identified":true}	cloudinary	3947897	mcXrxHf0DfFq/OlvDRPANA==	2023-01-29 17:56:05.245366
62	sd11zya5ttzrgs9glujtiycy2imm	265.gif	image/gif	{"identified":true}	cloudinary	3444	yBi8/0b8fydGVv0Kn4ezjg==	2023-04-11 02:27:04.852522
63	kxoddmgzpaob6xa5b9ekvo7h8hp6	259.gif	image/gif	{"identified":true}	cloudinary	3601	/2Wb1gvpe0PcjhQvKmgUNg==	2023-04-19 16:26:32.328365
64	jed5ua73wev5fe3meka8lz86bmr9	67.gif	image/gif	{"identified":true}	cloudinary	9347	av1aHShd/LtWagNs9dGc6w==	2023-04-23 18:52:35.12496
65	ph9pylynm2dsk74vnnyunajpwyfm	300.gif	image/gif	{"identified":true}	cloudinary	2379	Gg/W/Ucieg/0eNRxsxbkgQ==	2023-04-27 18:19:51.932784
66	i8j5634nz7em7ijstb760o522s9f	213.gif	image/gif	{"identified":true}	cloudinary	3061	Lh8ZQ4gqEvjVvtkhemMozw==	2023-04-29 03:53:16.694946
67	8vec7mvwwf15bbqjxqjh8f39ry5h	156.gif	image/gif	{"identified":true}	cloudinary	3445	dhZtA8bH1IbxhWyB4Hbp5w==	2023-05-01 07:32:42.301059
68	aqf0plf8d3qw3nwc7ouvfce3lj5h	234.gif	image/gif	{"identified":true}	cloudinary	3144	Cql7lPU0GjtMEcV7aeGndg==	2023-05-07 14:48:30.72704
69	7273tk4mbcvofpkl3kdxn7uqvso8	257.gif	image/gif	{"identified":true}	cloudinary	3592	5cQkVe5gtNrRWlZZ7pU5lw==	2023-05-14 04:57:08.292253
70	hx7zqjzkanfyy5wyq7gwjnhyry2o	279.gif	image/gif	{"identified":true}	cloudinary	3173	MvMSrtcFWdEWK3Xi4nmr0Q==	2023-05-17 13:16:24.502925
71	57511ssnjpwe6d8szye1ujxv1fjs	273.gif	image/gif	{"identified":true}	cloudinary	3482	T13TUEAcbuWQChj4TEjR3Q==	2023-05-18 01:07:20.714293
72	t1wuj7wulltsmyid5ubjtoohfo4e	164.gif	image/gif	{"identified":true}	cloudinary	3168	iK41stP4tNZM5w0ssh3gLw==	2023-05-20 21:08:48.981146
73	rn5ciheds9op863ewjmkbrhfhabd	152.gif	image/gif	{"identified":true}	cloudinary	3000	dEjbJR4MtoPjhzTNr2pDxg==	2023-06-02 05:44:37.859833
74	uie7jcrzlo8kiu9ixarj7xdkaun3	IMG_9929.jpeg	image/jpeg	{"identified":true}	cloudinary	2125673	IPXys8PugscVIJcKEGArdA==	2023-06-26 04:19:10.163827
75	a1uz63jroqfug5845xzbv6f513cj	FullSizeRender.jpeg	image/jpeg	{"identified":true}	cloudinary	369071	ej4GaBKxeYt94QdvChiu/g==	2023-06-29 17:49:23.732018
76	ckza8yg07rvpxa8jp8ya3dciiwds	263.gif	image/gif	{"identified":true}	cloudinary	3610	nSH47CvYIRKIv0xVtPNVnQ==	2023-07-01 10:44:17.192437
77	sqiesijj4curtzrblmkts27k7xxj	228.gif	image/gif	{"identified":true}	cloudinary	2727	wbGHDtF3Iecn7pw/cRtCxg==	2023-07-03 13:13:38.751208
78	9qiltiqdds97tpdf3o0kxtfyhg4m	198.gif	image/gif	{"identified":true}	cloudinary	3622	bjhQADSaQ6AMam+nE6xDfQ==	2023-07-21 02:38:22.640423
79	aoiycudcko07siprh40i2l2e17i3	149.gif	image/gif	{"identified":true}	cloudinary	3288	ogVAsEL2Jw6Z4qVznyjzYg==	2023-07-23 19:33:32.318971
80	531q94wiw8ybb1krgobll7yzs2pr	163.gif	image/gif	{"identified":true}	cloudinary	3586	zrJjCmg4IoL8FyLm+2wkOg==	2023-07-27 14:53:24.516461
81	n32v224w9o2ow64naqh6ck3phzpj	168.gif	image/gif	{"identified":true}	cloudinary	2992	gmS690Gq6SFpgc0YK1Fv/A==	2023-07-30 11:40:11.609886
82	29bea80vz4iypi4yuvzffv027i3o	42.gif	image/gif	{"identified":true}	cloudinary	9166	DBQgX4snqoq9is7PjsK8EA==	2023-07-31 14:21:49.776678
83	60z66y9f6d57wv8z6hh784qogav1	46.gif	image/gif	{"identified":true}	cloudinary	8389	vHaiG7kOFw6ICsCZuxjXHQ==	2023-08-03 03:24:00.918754
85	nx3xg84rgrwpb5qhjlzy48f8dd45	image.jpg	image/jpeg	{"identified":true}	cloudinary	1778265	FJHG+SKnSI8lAqWcF4D8GQ==	2023-08-26 07:38:42.283839
86	gq6x17u0v980tdt75751o1hwul0o	73098E77-6D0B-40C3-A45E-D618917DBF6D.jpeg	image/jpeg	{"identified":true}	cloudinary	2156577	RaPZAy5Jk3+MBnISAbDrBA==	2023-09-05 20:09:35.64358
87	uwg9pbz7lbedzllvr4twh5sa1sb9	Screenshot 2023-09-12 at 18.09.51.png	image/png	{"identified":true}	cloudinary	641991	YY5HJLpBDiGlOxNHT8yNjA==	2023-09-12 16:10:02.184341
88	6kyf8eobqyom342kd84026sptgxb	IMG_2285.jpeg	image/jpeg	{"identified":true}	cloudinary	2557538	5H+2/JDP+TzlL+EdmIweMA==	2023-11-14 10:12:37.199547
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.answers (id, question_id, content, created_at, updated_at, submission_id) FROM stdin;
13	7	10	2022-03-30 14:35:46.223522	2022-03-30 14:35:46.223522	5
14	8	Everyday (7days a week at least once per day normally) 	2022-03-30 14:36:00.795151	2022-03-30 14:36:38.338594	5
15	9	Yes but I like to modify existing ones rather than from scratch. 	2022-03-30 14:37:48.422698	2022-03-30 14:37:48.422698	5
16	10	I don’t really share them much as not really sure others want them! I have used a word doc or WhatsApp before	2022-03-30 14:38:34.959807	2022-03-30 14:38:34.959807	5
17	11	Google, books, friends and family	2022-03-30 14:38:53.802043	2022-03-30 14:38:53.802043	5
18	12	Photos of recipe pages from books in my phone. I remember what I searched on the internet and just search exact same keywords again. Notes app on iPhone. Random pieces of paper with the recipe on them (notes I’ve made or from family). 	2022-03-30 14:40:55.895784	2022-03-30 14:40:55.895784	5
19	7	8	2022-03-30 14:43:27.295822	2022-03-30 14:43:27.295822	6
20	8	Amateur\r\n7	2022-03-30 14:43:49.650021	2022-03-30 14:43:49.650021	6
21	9	No	2022-03-30 14:44:05.245402	2022-03-30 14:44:05.245402	6
22	10	Whatsaap	2022-03-30 14:44:19.523295	2022-03-30 14:44:19.523295	6
23	11	Books, newspapers. 	2022-03-30 14:44:38.906278	2022-03-30 14:44:38.906278	6
24	12	Phone	2022-03-30 14:45:02.940761	2022-03-30 14:45:02.940761	6
25	7	10	2022-03-30 14:50:53.166552	2022-03-30 14:50:53.166552	7
26	8	Three times a week because of work and stuff, otherwise, I would every day if I could. 	2022-03-30 14:51:16.027066	2022-03-30 14:51:16.027066	7
27	7	9	2022-03-30 14:51:40.423493	2022-03-30 14:51:40.423493	8
28	9	Not really. I like to use existing ones and tweak them to my liking. I'm more a follower than a creator. 	2022-03-30 14:51:48.518747	2022-03-30 14:51:48.518747	7
29	10	i just said i don't create them, innit? I don't think i've ever shared a recipe for anything I've created ever. 	2022-03-30 14:52:16.940881	2022-03-30 14:52:16.940881	7
30	8	Passionate and regular	2022-03-30 14:52:35.42348	2022-03-30 14:52:35.42348	8
31	9	Yes	2022-03-30 14:52:48.99368	2022-03-30 14:52:48.99368	8
32	11	Mostly my cookbooks. Also on Guardian food, BBC food or random google results, choosing the one with the best reviews for what i need. \r\nAlso, (embarrassingly) on the Thermomix app, now... 	2022-03-30 14:52:56.197685	2022-03-30 14:52:56.197685	7
33	12	In my cookbooks, occasionally print out a recipe i like and keep it in a folder. 	2022-03-30 14:53:19.806453	2022-03-30 14:53:19.806453	7
34	10	Take pics and send via Mail or text message	2022-03-30 14:53:24.256614	2022-03-30 14:53:24.256614	8
35	11	Books & friends	2022-03-30 14:53:39.967773	2022-03-30 14:53:39.967773	8
36	12	My little red recipe book	2022-03-30 14:54:06.567445	2022-03-30 14:54:06.567445	8
37	7	10	2022-03-30 14:59:41.828094	2022-03-30 14:59:41.828094	9
38	8	Passionate amateur, maybe 3 times a week	2022-03-30 15:00:20.682626	2022-03-30 15:00:20.682626	9
39	9	Yes	2022-03-30 15:00:26.808642	2022-03-30 15:00:26.808642	9
40	10	Via text or paper	2022-03-30 15:00:52.449615	2022-03-30 15:00:52.449615	9
41	11	Online, books, friends and family	2022-03-30 15:01:08.691211	2022-03-30 15:01:08.691211	9
42	12	Keeping online tabs open, writing them down on paper	2022-03-30 15:01:59.810954	2022-03-30 15:01:59.810954	9
43	12	Phone	2022-03-30 15:12:49.478632	2022-03-30 15:12:49.478632	6
44	7	10	2022-03-30 15:14:21.570813	2022-03-30 15:14:21.570813	10
45	8	Daily with lots of passion 	2022-03-30 15:15:24.549193	2022-03-30 15:15:24.549193	10
46	9	Yes	2022-03-30 15:15:46.212528	2022-03-30 15:15:46.212528	10
47	10	Not at all, it‘s a secret or just orally	2022-03-30 15:16:31.973378	2022-03-30 15:16:31.973378	10
48	11	Google	2022-03-30 15:16:36.328027	2022-03-30 15:16:36.328027	10
49	12	In my brain	2022-03-30 15:16:52.952403	2022-03-30 15:16:52.952403	10
50	7	10	2022-03-30 16:00:13.066688	2022-03-30 16:00:13.066688	11
51	8	Regular	2022-03-30 16:00:38.545117	2022-03-30 16:00:38.545117	11
52	9	yes	2022-03-30 16:00:46.154321	2022-03-30 16:00:46.154321	11
53	10	via text message	2022-03-30 16:01:04.036284	2022-03-30 16:01:04.036284	11
54	11	google, friends	2022-03-30 16:01:12.299335	2022-03-30 16:01:12.299335	11
55	12	Bookmarks, notes	2022-03-30 16:01:29.683928	2022-03-30 16:01:29.683928	11
56	7	10	2022-03-30 16:03:07.026934	2022-03-30 16:03:07.026934	12
57	8	An amateur	2022-03-30 16:03:32.831755	2022-03-30 16:03:32.831755	12
58	9	Yes	2022-03-30 16:03:44.343432	2022-03-30 16:03:44.343432	12
59	10	I never share them	2022-03-30 16:04:05.095823	2022-03-30 16:04:05.095823	12
60	11	Internet	2022-03-30 16:04:19.355198	2022-03-30 16:04:19.355198	12
61	12	I don't	2022-03-30 16:04:30.478128	2022-03-30 16:04:30.478128	12
62	7	8	2022-03-30 16:09:11.144728	2022-03-30 16:09:11.144728	13
63	8	total amateur, cook 5 or 6 nights a week	2022-03-30 16:09:32.419929	2022-03-30 16:09:32.419929	13
64	9	yes	2022-03-30 16:09:38.880468	2022-03-30 16:09:38.880468	13
65	10	I dont	2022-03-30 16:09:46.016442	2022-03-30 16:09:46.016442	13
66	11	online	2022-03-30 16:09:53.625468	2022-03-30 16:09:53.625468	13
67	12	Hate pinterest and yummly and all the rest, it's so annoying to use and always begging to log in etc. I just want the recipe on hand and no fuss. So I take screenshots or pictures and save them in a gallery folder. Longer things I store in a simple note taking app which doesn't require logging in or syncing or a premium account or any stuff like that. It's not ideal but at least it doesn't keep pestering me.	2022-03-30 16:14:13.608716	2022-03-30 16:14:13.608716	13
68	7	9	2022-03-30 17:09:59.257065	2022-03-30 17:09:59.257065	14
69	8	Regular	2022-03-30 17:10:21.281125	2022-03-30 17:10:21.281125	14
70	9	No	2022-03-30 17:10:26.687852	2022-03-30 17:10:26.687852	14
71	10	I don’t 	2022-03-30 17:10:40.530805	2022-03-30 17:10:40.530805	14
72	11	Books, Cookidoo (thermomix), internet 	2022-03-30 17:11:21.423698	2022-03-30 17:11:21.423698	14
73	12	Folder 	2022-03-30 17:11:39.062993	2022-03-30 17:11:39.062993	14
74	7	8	2022-03-30 17:27:17.435414	2022-03-30 17:27:17.435414	15
75	8	A regular	2022-03-30 17:27:36.982191	2022-03-30 17:27:36.982191	15
77	10	Not at all (are only in my head)	2022-03-30 17:29:05.529309	2022-03-30 17:29:05.529309	15
78	11	Books - google - friends 	2022-03-30 17:29:39.058464	2022-03-30 17:29:39.058464	15
79	12	Head or book	2022-03-30 17:30:52.280943	2022-03-30 17:30:52.280943	15
81	8	Home cook. I cook everyday of the week, at least 1 time per day (i eat 2 meals per day)	2022-03-30 19:46:26.150653	2022-03-30 19:46:26.150653	16
76	9	Yes	2022-03-30 17:28:48.138298	2022-03-30 17:32:01.014351	15
82	9	Yes	2022-03-30 19:46:33.317703	2022-03-30 19:46:33.317703	16
83	10	I write them down and photograph them, or sometimes do nothing at all, try to remember it next time	2022-03-30 19:47:44.380069	2022-03-30 19:47:44.380069	16
80	7	10	2022-03-30 19:44:48.203484	2022-03-30 20:05:12.261104	16
154	11	My head. I just make shit up most of the time. Or YouTube. Usually adaptations of classics. Often it's based on what food I think is about to go bad so I gotta cook it. This doesn't always work out.	2022-04-12 20:35:34.549645	2022-04-12 20:35:34.549645	30
155	12	I don't. 	2022-04-12 20:35:41.256777	2022-04-12 20:35:41.256777	30
156	7	9	2022-08-16 20:29:54.11551	2022-08-16 20:29:54.11551	17
157	8	Amateur	2022-08-16 20:30:02.574473	2022-08-16 20:30:02.574473	17
84	11	mostly by watching youtube videos of really traditional recipes around the world, so more like an obsession of watching different versions and then giving the recipe a goog‘ if needed :). Right now it‘s South Korean cuisine. I very rarely read/use recipe books, but I will get inspired by the images and by a quick read of the ingredients - same thing for Pinterest, where if you get past the first basic recipes you might find something that gives an idea just visually. Books more for baking. It happenend once that i asked my friend about her salad dressing recipe.	2022-03-30 20:01:23.622477	2022-03-30 20:03:14.106475	16
85	12	A few loose sheets in a cupboard for the few desserts i like to make more often and otherwise i have it not really organised. Or screenshots on my phone, too.	2022-03-30 20:04:56.016948	2022-03-30 20:07:29.382848	16
86	7	10	2022-03-31 07:35:20.110697	2022-03-31 07:35:20.110697	18
87	8	Regular amateur who likes to pretend she's professional until she messes the dish up. Then she pretends she's never cooked before	2022-03-31 07:35:47.769631	2022-03-31 07:35:47.769631	18
88	9	YES	2022-03-31 07:35:51.815966	2022-03-31 07:35:51.815966	18
89	10	If they're good I just tell people about them. Depending on what it is though I do my Grandmother's trick of omitting a few ingredients that really make it 'mine'... I know. I'm an evil person.	2022-03-31 07:36:23.279498	2022-03-31 07:36:23.279498	18
90	11	I make them up more often than not, but I use my cookbooks and online food sites for inspiration to help me get started, then I make it up completely. 	2022-03-31 07:36:51.695631	2022-03-31 07:36:51.695631	18
91	12	In my head. In my recipe books cupboard, on scribbled on pieces of paper	2022-03-31 07:37:08.66234	2022-03-31 07:37:08.66234	18
92	7	10	2022-03-31 12:56:20.908585	2022-03-31 12:56:20.908585	19
93	7	10	2022-03-31 12:56:52.107983	2022-03-31 12:56:52.107983	20
94	8	Regular	2022-03-31 12:56:52.579241	2022-03-31 12:56:52.579241	19
95	9	Yes	2022-03-31 12:56:56.986358	2022-03-31 12:56:56.986358	19
96	8	3	2022-03-31 12:56:59.835606	2022-03-31 12:56:59.835606	20
97	9	Yes	2022-03-31 12:57:04.220656	2022-03-31 12:57:04.220656	20
98	10	Text	2022-03-31 12:57:05.599828	2022-03-31 12:57:05.599828	19
99	10	Snapchat 	2022-03-31 12:57:09.590255	2022-03-31 12:57:09.590255	20
100	11	Online	2022-03-31 12:57:11.066314	2022-03-31 12:57:11.066314	19
101	11	Tiktok	2022-03-31 12:57:18.327136	2022-03-31 12:57:18.327136	20
102	12	Screenshots	2022-03-31 12:57:36.607895	2022-03-31 12:57:36.607895	19
103	12	Photo library 	2022-03-31 12:57:51.130472	2022-03-31 12:57:51.130472	20
104	7		2022-03-31 16:08:02.661591	2022-03-31 16:08:02.661591	21
105	8	Every day	2022-03-31 16:09:05.274221	2022-03-31 16:09:05.274221	21
106	9	Yes	2022-03-31 16:09:13.445802	2022-03-31 16:09:13.445802	21
107	10	I don’t 	2022-03-31 16:09:33.572811	2022-03-31 16:09:33.572811	21
108	11	Often from the Saturday Times newspaper	2022-03-31 16:10:07.755028	2022-03-31 16:10:07.755028	21
109	12	I photocopy and file them	2022-03-31 16:10:35.45295	2022-03-31 16:10:35.45295	21
110	7	10	2022-03-31 19:10:09.100939	2022-03-31 19:10:09.100939	22
111	8	5	2022-03-31 19:10:25.772909	2022-03-31 19:10:25.772909	22
112	9	Yes	2022-03-31 19:10:33.657241	2022-03-31 19:10:33.657241	22
113	10	Message	2022-03-31 19:10:45.433385	2022-03-31 19:10:45.433385	22
114	11	Google	2022-03-31 19:10:50.782739	2022-03-31 19:10:50.782739	22
115	12	I don't	2022-03-31 19:11:11.315401	2022-03-31 19:11:11.315401	22
116	7	9	2022-04-02 10:03:13.905204	2022-04-02 10:03:13.905204	23
117	8	Amateur	2022-04-02 10:03:20.852655	2022-04-02 10:03:20.852655	23
118	9	Yes	2022-04-02 10:03:24.70025	2022-04-02 10:03:24.70025	23
119	10	I don’t currently 	2022-04-02 10:03:33.849524	2022-04-02 10:03:33.849524	23
120	11	Online 	2022-04-02 10:03:39.951811	2022-04-02 10:03:39.951811	23
121	12	In my head! Or a written book 	2022-04-02 10:03:54.677523	2022-04-02 10:03:54.677523	23
122	7	8	2022-04-04 06:59:35.615218	2022-04-04 06:59:35.615218	24
123	8	10 times a week	2022-04-04 06:59:54.424478	2022-04-04 06:59:54.424478	24
124	9	Yes	2022-04-04 06:59:58.144078	2022-04-04 06:59:58.144078	24
125	10	Text message	2022-04-04 07:01:15.180966	2022-04-04 07:01:15.180966	24
126	11	Google and my mum 	2022-04-04 07:01:25.61105	2022-04-04 07:01:25.61105	24
127	12	I dont i just remember the ones I like	2022-04-04 07:01:53.740248	2022-04-04 07:01:53.740248	24
128	7	8	2022-04-04 19:07:24.297158	2022-04-04 19:07:24.297158	25
129	8	4x/wuchä	2022-04-04 19:09:58.662863	2022-04-04 19:09:58.662863	25
130	9	yass	2022-04-04 19:10:14.739995	2022-04-04 19:10:14.739995	25
131	10	don’t share - i barely remember myself	2022-04-04 19:10:52.189079	2022-04-04 19:10:52.189079	25
133	12	notize, büächli, evernote - never seen again	2022-04-04 19:14:49.903897	2022-04-04 19:14:49.903897	25
132	11	buscar en google, improvisation, international!	2022-04-04 19:13:37.723734	2022-04-04 19:15:16.367126	25
134	7	9	2022-04-06 03:50:39.183596	2022-04-06 03:50:39.183596	28
135	8	I‘m a normal cook, maybe a little bit crazy, but i love it to cook and bake. I cook 3-4 times a week.	2022-04-06 03:56:04.742959	2022-04-06 03:56:04.742959	28
136	9	Yes!	2022-04-06 03:56:19.243618	2022-04-06 03:56:19.243618	28
137	10	Usually they speak to me directly, then I tell them. Or write it via wats app.	2022-04-06 03:59:30.143067	2022-04-06 03:59:30.143067	28
138	11	I find them a good starting point. I usually use them as a basic recipe, but then I create new ideas and try them out.	2022-04-06 04:03:19.761754	2022-04-06 04:03:19.761754	28
139	12	I don‘t.\r\nOke, sometimes i take notes.	2022-04-06 04:05:18.155718	2022-04-06 04:06:33.257286	28
140	7	8	2022-04-07 03:57:01.264116	2022-04-07 03:57:01.264116	29
141	8	2	2022-04-07 03:58:39.945961	2022-04-07 03:58:39.945961	29
142	9	I like to create something new out of what I have in the fridge sometimes. But usually don’t have the time to put a lot of thought into buying ingredients and knowing what to buy to create something new. Clear guides / instructions are better. 	2022-04-07 04:00:57.894294	2022-04-07 04:00:57.894294	29
143	10	I usually don’t. If so then via text. 	2022-04-07 04:02:01.805995	2022-04-07 04:02:01.805995	29
144	11	Ranked by frequency: google, family & friends, books	2022-04-07 04:02:57.730855	2022-04-07 04:02:57.730855	29
145	11	Ranked by frequency: google, family & friends, books	2022-04-07 04:03:06.208961	2022-04-07 04:03:06.208961	29
146	11	Ranked by frequency: google, family & friends, books	2022-04-07 04:03:06.50924	2022-04-07 04:03:06.50924	29
147	11	Ranked by frequency: google, family & friends, books	2022-04-07 04:03:12.682658	2022-04-07 04:03:12.682658	29
148	11	Ranked by frequency: google, family & friends, books	2022-04-07 04:03:22.902111	2022-04-07 04:03:22.902111	29
149	12	Notes on Iphone or just google when I need it. 	2022-04-07 04:04:14.076225	2022-04-07 04:04:14.076225	29
150	7	10	2022-04-12 20:33:00.553375	2022-04-12 20:33:00.553375	30
151	8	Dinner: 2 to 3 times a week. A professional regular. \r\nLunch 5 to 6 times a week	2022-04-12 20:33:50.687119	2022-04-12 20:33:50.687119	30
152	9	Love it	2022-04-12 20:33:55.87457	2022-04-12 20:33:55.87457	30
153	10	I forget about them and never share them. So sad. Until they randomly dawn on me and then I pretend I just made it up	2022-04-12 20:34:40.476181	2022-04-12 20:34:40.476181	30
158	9	Love it	2022-08-16 20:30:09.734121	2022-08-16 20:30:09.734121	17
159	10	Via goormey.com	2022-08-16 20:30:21.152597	2022-08-16 20:30:21.152597	17
160	11	Youtube, google	2022-08-16 20:30:31.204163	2022-08-16 20:30:31.204163	17
161	12	Goormey!!	2022-08-16 20:30:49.574704	2022-08-16 20:30:49.574704	17
162	7	6	2022-11-22 08:56:47.427782	2022-11-22 08:56:47.427782	32
163	8	asdf sdf	2022-11-22 08:56:50.398823	2022-11-22 08:56:50.398823	32
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2021-10-26 12:33:41.158319	2022-11-25 14:44:58.614573
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.comments (id, user_id, recipe_id, content, created_at, updated_at) FROM stdin;
13	1	32	Always got to have that in the fridge 😋 	2022-03-06 18:15:07.79846	2022-03-06 18:15:07.79846
21	2	36	Do you like my recipe? 😃	2022-03-07 07:52:28.839108	2022-03-07 07:52:28.839108
28	1	36	Love it	2022-03-10 08:30:23.167471	2022-03-10 08:30:23.167471
29	2	36	I like this chat. Gu	2022-03-10 08:30:43.050869	2022-03-10 08:31:37.896812
27	1	34	Osss	2022-03-10 08:20:55.168403	2022-03-10 18:05:38.802342
39	2	65	Yippie, thanks Miri 😍	2022-03-22 08:18:06.302244	2022-03-22 08:18:06.302244
42	1	72	Hhmmm ich liebs!!	2022-08-16 20:42:09.888438	2022-08-16 20:42:09.888438
43	2	72	❤️	2022-08-16 20:42:36.093946	2022-08-16 20:42:36.093946
44	1	2	❤️	2022-10-09 17:25:14.733341	2022-10-09 17:25:14.733341
45	1	65	Hammer!	2022-11-02 06:07:43.814999	2022-11-02 06:07:43.814999
49	1	81	Ufff, hammer 😍	2023-01-09 16:13:05.99074	2023-01-09 16:13:05.99074
50	1	25	❤️	2023-08-25 17:00:42.41684	2023-08-25 17:00:42.41684
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.contacts (id, email, message, created_at, updated_at) FROM stdin;
1	stephens@hey.com	Test test\r\n	2021-11-08 14:10:34.323892	2021-11-08 14:10:34.323892
2	schuzste@gmail.com	Test test\r\n	2021-11-08 14:11:23.170742	2021-11-08 14:11:23.170742
3	sdkaf;lkj	Test	2021-11-08 14:17:01.002792	2021-11-08 14:17:01.002792
4	sadlkjlk@gmail.com	asalksjdf	2021-11-08 14:17:12.941202	2021-11-08 14:17:12.941202
5	schuzste@gmail.com	Testmessage	2021-11-08 14:21:02.401032	2021-11-08 14:21:02.401032
6	naomi.caduff@gmail.com	Hey mr. goormey, I like your page very much!! 😻	2021-11-08 16:20:35.979834	2021-11-08 16:20:35.979834
7	schuzste@gmail.com	Hi there, love the app..	2021-11-11 12:59:00.217472	2021-11-11 12:59:00.217472
8	schuzste@gmail.com	Hi there, love the app..	2021-11-11 13:09:33.509613	2021-11-11 13:09:33.509613
9	stephens@hey.com	Hey män, test!	2021-12-04 13:48:00.946471	2021-12-04 13:48:00.946471
10	stephens@hey.com	Hi there	2022-02-11 17:51:16.979655	2022-02-11 17:51:16.979655
11	stephens@hey.com	Test	2022-02-14 09:28:31.820853	2022-02-14 09:28:31.820853
12	stephens@hey.com	asd a;sldkf	2022-02-14 10:40:29.719721	2022-02-14 10:40:29.719721
13	stephens@hey.com	\n\n\nDjdue	2022-02-14 10:49:07.665977	2022-02-14 10:49:07.665977
14	rosannebecky339@gmail.com	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site goormey.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian/Canadian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nBecky	2022-04-08 14:13:46.209596	2022-04-08 14:13:46.209596
15	using.chu@msn.com	Hi there,\r\n\r\nHave you ever wondered why new tokens listed on Uniswap, Pancakeswap or any decentralized exchange are always subject to insane price volatility?\r\n\r\nDid you know that front running bots have been dominating the market and profiting due to that?\r\n\r\nCheck out our new Youtube video for a free and detailed tutorial on how to deploy your own front running bot:\r\nhttps://youtu.be/do99pkCxT0I\r\n\r\nKind Regards,\r\nChu	2022-04-19 00:20:56.206805	2022-04-19 00:20:56.206805
16	katytrilly9@gmail.com	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site goormey.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian/Canadian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nKaty	2022-05-18 21:32:58.913588	2022-05-18 21:32:58.913588
17	marcus.leboeuf@msn.com	Hi there,\r\n\r\nHave you ever wondered why new tokens listed on Uniswap, Pancakeswap or any decentralized exchange are always subject to insane price volatility?\r\n\r\nDid you know that front running bots have been dominating the market and profiting due to that?\r\n\r\nCheck out our new Youtube video for a free and detailed tutorial on how to deploy your own front running bot:\r\nhttps://youtu.be/SQHFveYdjV8\r\n\r\nKind Regards,\r\nMarcus	2022-06-13 07:23:35.304965	2022-06-13 07:23:35.304965
18	contact@emailinfluence.xyz	Are you missing out on email marketing for your site? Running a site is a full time job. With limited time and resources, it be difficult to put energy in marketing your business. But with email marketing, promoting your business becomesa a whole lot easier. Receive your free guide here https://emailinfluence.xyz/email/?e8x2_5k42t9.io \r\n\r\nTo remove your site from our list visit https://emailinfluence.xyz/unsubscribe/	2022-08-05 08:29:38.932897	2022-08-05 08:29:38.932897
19	stephens@hey.com	Hi there!!	2022-08-16 20:31:32.506379	2022-08-16 20:31:32.506379
20	katytrilly9@gmail.com	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site goormey.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian/Canadian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nKaty	2022-08-30 00:12:45.487445	2022-08-30 00:12:45.487445
21	hacker@usasbx.top	Your Site Has Been Hacked\r\n\r\nPLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website https://www.goormey.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your https://www.goormey.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site’s reputation for a small fee. The current fee is $2500 in bitcoins (BTC).\r\n\r\nPlease send the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):\r\n\r\n3LKf6NWhJA8L5cmD5p9u6WksjW9SC2jauu\r\n\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 7 days after receiving this e-mail or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. \r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.	2022-09-28 19:15:38.165475	2022-09-28 19:15:38.165475
22	karengillr209@yahoo.com	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 400-1200+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nKaren	2022-10-01 12:10:34.364711	2022-10-01 12:10:34.364711
23	no-reply@angelusdental.com	PLEASE FoRWARD THiS EMAiL To SoMEoNE iN Y0UR C0MPANY WHo iS ALL0WED To MAKE iMPoRTANT DECiSi0NS!\r\n\r\nWe have hacked y0ur website https://www.goormey.com and extracted your databases.\r\n\r\nHow did this happen?\r\n\r\n0ur team has f0und a vulnerability within your site that we were able t0 exploit. After finding the vulnerability we were able t0 get y0ur database credentials and extract your entire database and m0ve the inf0rmation to an offsh0re server.\r\n\r\nWhat d0es this mean?\r\n\r\nWe will systematically go thr0ugh a series 0f steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intenti0ns are. Next if there are e-mails found they will be e-mailed that their informati0n has been sold or leaked and y0ur site https://www.goormey.com was at fault thusly damaging your reputati0n and having angry customers/ass0ciates with whatever angry customers/ass0ciates d0. Lastly any links that y0u have indexed in the search engines will be de-indexed based 0ff 0f blackhat techniques that we used in the past to de-index 0ur targets.\r\n\r\nHow d0 i st0p this?\r\n\r\nWe are willing t0 refrain fr0m destroying y0ur site’s reputati0n f0r a small fee. The current fee is $3000 in bitcoins (BTC).\r\n\r\nPlease send the bitcoin t0 the foll0wing Bitc0in address (Make sure t0 copy and paste): \r\n\r\n3FMohPX5Dm7QPnFQeqd311HrsUyyA6HNQn\r\n\r\n 0nce you have paid we will aut0matically get informed that it was your payment. Please note that y0u have to make payment within 5 days after receiving this e-mail 0r the database leak, e-mails dispatched, and de-index 0f your site WiLL start!\r\n\r\nH0w do i get Bitcoins?\r\n\r\nY0u can easily buy bitc0ins via several websites or even offline fr0m a Bitc0in-ATM. \r\n\r\nWhat if i d0n’t pay?\r\n\r\nif you decide not t0 pay, we will start the attack at the indicated date and uphold it until you d0, there’s n0 counter measure t0 this, y0u will 0nly end up wasting more m0ney trying t0 find a s0lution. We will completely destr0y your reputation amongst g0ogle and y0ur customers.\r\n\r\nThis is not a h0ax, do n0t reply t0 this email, d0n’t try t0 reason or neg0tiate, we will n0t read any replies. once y0u have paid we will st0p what we were doing and you will never hear fr0m us again!\r\n\r\nPlease note that Bitcoin is anonym0us and no one will find 0ut that y0u have c0mplied.	2022-10-11 17:47:38.117398	2022-10-11 17:47:38.117398
24	katytrilly9@gmail.com	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site goormey.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=zvGF7uRfH04\r\nhttps://www.youtube.com/watch?v=cZPsp217Iik\r\nhttps://www.youtube.com/watch?v=JHfnqS2zpU8\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nKate	2022-11-13 17:07:14.529758	2022-11-13 17:07:14.529758
25	angelaballj774@yahoo.com	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 400-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just 60 USD per month, and we can start immediately.\r\n\r\nIf you'd like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nAngela	2022-11-15 15:08:04.507662	2022-11-15 15:08:04.507662
26	furnell.alana@msn.com	Artificial Intelligence writes FULL RELEVANT Articles, posts, ads etc…  \r\n\r\nJust enter a keyword or sentence, click generate, and you're done! \r\n--In 26 different languages\r\nAll in under 30 seconds.\r\nhttps://jasperwrite.xyz\r\n\r\nThis new Ai Software uses SEO optimized writing skills to boost your rankings \r\nAll while producing original unique content.\r\nJust cut and paste content to your site for incredible results.\r\n\r\nLooking to boost in your rankings? \r\nNew Ai software is just what you need! \r\n\r\nIt generates original content 10 times faster than humans \r\n\r\nSo why wait? Get started today for FREE with 10,000 words as our gift.\r\nhttps://jasperwrite.xyz	2022-11-22 03:39:23.846237	2022-11-22 03:39:23.846237
27	swartz.jerrell@yahoo.com	You’re not going to believe this!\r\n\r\n Ryan Here\r\n​\r\nDid you know that you can now use robots to sell things for you while you’re asleep?\r\n​\r\nI recently discovered a few tools that allow you to setup bots that network with business owners in a FULLY automated way.\r\n\r\nIt’s all being taught inside this new training program called, “AI Profits”\r\n​\r\n==> https://bison--chasereiner.thrivecart.com/ai-profits/6302a0e754118/\r\n​\r\nThe best part is that you don’t have to be an expert or do much more than click a few buttons to get started.\r\n​\r\nI’ll seee you on the inside!\r\n	2022-11-23 09:18:20.820498	2022-11-23 09:18:20.820498
28	rurgivamiw@outlook.com	XacgNvzSR	2022-11-24 12:52:08.987465	2022-11-24 12:52:08.987465
29	rurgivamiw@outlook.com	tnYrPQVZBXU	2022-11-24 12:52:20.735252	2022-11-24 12:52:20.735252
30	shane.smithson@gmail.com	“If you are a business owner, a copywriter, a content creator, a marketing specialist, and you don't have Jasper AI in your toolkit just yet, I highly recommend that you check it out.\r\n\r\nIt'll save you time, give you ideas, help make your social better, your ads better, your website content, better, your content creation, your emails...\r\n\r\n...all of these will improve by getting ideas, by saving you time, and helping you take your content and copy to the next level.\r\n\r\nI highly recommend it to all my clients and I highly recommend that you check it out as well.”\r\n‍\r\nCreate amazing web content 10x faster using using  http://jasperwrite.xyz/ Start now	2022-11-26 18:18:24.098335	2022-11-26 18:18:24.098335
31	burg.mona@hotmail.com	Hi there!\r\nI'm writing to let you know about an incredible new AI tool that can help with various tasks related to website copywriting and SEO.\r\nIt's been used by some of the biggest companies in the world, such as Airbnb and IBM.\r\nSo if you're looking for a powerful tool to help take your website to the next level, this is definitely worth considering! Plus, to make things even better, I'm giving away 10,000 words for free so that you can try it out for yourself.\r\nTo get 10k words, just go to https://www.aiwritingmachine.com/\r\n	2022-11-27 06:44:47.152774	2022-11-27 06:44:47.152774
32	eger.sadye@outlook.com	Check this out imagine not having to pay for content writitng, website optimization,link building and everyother things that comes with websites.\r\n\r\nimagine joining a program that offers all this under one roof and also help in getting your websites to rank higher on the search engine. Dont Believe \r\n\r\nthis check this out https://app.fatjoe.com/signup/?referrer=GuillermoBastosOliva	2022-11-28 09:47:27.964363	2022-11-28 09:47:27.964363
33	seaman.nikole@gmail.com	Hello!	2022-12-04 02:32:41.098026	2022-12-04 02:32:41.098026
34	maldonado.miguel@gmail.com	Here is a free way to find out everything about your website from site errors to why you are not getting enough sales \r\n\r\nNo selling invovled everything is 100% free https://lollty.com/websiteproblem	2022-12-08 01:23:10.446175	2022-12-08 01:23:10.446175
35	toney.grishin@msn.com	Find the solution to all the problems concerning your websites why you are not getting leads and making more sales \r\n\r\nAll these you can find out for free without  paying just click here to get started http://lyksoomu.com/qgAK	2022-12-08 07:30:04.761871	2022-12-08 07:30:04.761871
36	cecile.streeter@gmail.com	The top Website Owners & Digital Marketers in the world are using BacklinkMaker for Getting Traffic & Backlinks to boost their sales online.\r\n\r\nNow you have an opportunity to join them, improve your Google Rank & Get 10X Traffic with a new AI-based app called BacklinkMaker.\r\n\r\nWith BacklinkMaker, you can get Unlimited Backlinks for your websites & Youtube channels and also same time you can generate unlimited real traffic for boosting your sales & Revenue \r\n\r\nBacklinkMaker is very easy to use, Trust me, once you have BacklinkMaker you’ll be able to Rank #1 On Google, Bing & yahoo etc  in 3 easy steps:\r\n\r\nStep 1 - Login & Enter to the Friendly Dashboard \r\n\r\nStep 2 - Enter Your Website Or Youtube Link & Click “Get Backlinks” & DONE!\r\n\r\nStep 3 - BacklinkMaker Will Send Automatically Send Backlinks To The Most High Authority Websites \r\n\r\nYou are getting BacklinkMaker with a free commercial licence so you can send Backlinks to your clients websites Or Youtube Channels as well\r\n\r\nAnd start generating an evergreen income WITHOUT any hard work.\r\n\r\nGet Started Today With BacklinkMaker: https://warriorplus.com/o2/a/vjrqsd/0 \r\n\r\n	2022-12-10 07:22:53.940076	2022-12-10 07:22:53.940076
37	staci.keane@outlook.com	Hi there,\r\n\r\nDid you get your copy of BacklinkMaker (With a Commercial & Agency Licence yet)?\r\n\r\nIf not yet, then this is your final and last chance to get BacklinkMaker at a 1-Time Price.\r\n\r\n=> Click Here & Grab This Now Before it goes RECURRING https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nThis is an irresistible offer, with BacklinkMaker you’ll be able to:\r\n\r\nCreate Unlimited HQ Backlinks For Your Blogs, Website Etc On Autopilot\r\nGet Higher Rank Easily On Google, Bing & yahoo etc With No Extra Efforts\r\nGet Unlimited Real & Related Buyer Traffic & Sales \r\nFully Autopilot.. No Manual Work\r\nGet Faster Indexing For Your All Webpages  \r\nAutomatic Updates With No Extra Installation Hassels \r\nUNLIMITED COMMERCIAL LICENCE Included\r\nNo Limitations - Completely Free\r\nSell Unlimited Backlinks & Rest Services to Earn Like The Big Boys\r\nNo Special Skills or Experience Required\r\nStep By Step Training & Videos  \r\n$200 Refund If It Doesn’t Work For You\r\n\r\nAnd much more...\r\n\r\n\r\n\r\n=> Get Your BacklinkMaker Lifetime Account + Commercial & Agency Licence at a One-Time Price https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nThis is turning into monthly recurring very soon.\r\n\r\n\r\nBacklinkMaker is very easy to use, Trust me, once you have BacklinkMaker you’ll be able to Rank #1 On Google, Bing & yahoo etc  in 3 easy steps:\r\n\r\nStep 1 - Login & Enter to the Friendly Dashboard \r\n\r\nStep 2 - Enter Your Website Or Youtube Link & Click “Get Backlinks” & DONE!\r\n\r\nStep 3 - BacklinkMaker Will Send Automatically Send Backlinks To The Most High Authority Websites \r\n\r\n\r\n150 TOP Agency Owners, Marketers & more than 2000 customers have started making money with BacklinkMaker.\r\nTill Now BacklinkMaker Has Successfully Sent 18M+ Real & High Quality Backlinks To Customers Website, Blogs & Youtube Channels. \r\nIT’S HUGE!!\r\n\r\n\r\n\r\n=> Grab BacklinkMaker At The Lowest Price Now For Lifetime https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n \r\nTo Your Success,\r\n	2022-12-12 23:00:55.869437	2022-12-12 23:00:55.869437
38	eula.mollison@gmail.com	\r\nHi there,\r\n\r\nToday, My friends Akshat & Jaideep has released another premium Software that can get you Unlimited Backlinks for your website & Youtube Channel With the push of a button - without any manual work.\r\n\r\n\r\nYes, you read that right. \r\n\r\nYou Can Now Easily Get Unlimited HQ Backlinks & Real Buyers Traffic … With Commercial EVEN FOR A LIFETIME!!\r\n\r\n=> Click Here to Get It Now Before Deal Ends https://warriorplus.com/o2/a/vjrqsd/0 \r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nLet me introduce you to BacklinkMaker…\r\n"Award Winning" Software Gets You UNLIMITED REAL BACKLINKS & FREE BUYER TRAFFIC On Autopilot With Zero Monthly Fee \r\n+ \r\n“Guaranteed” Rank Your Site on Top of Google, Yahoo & Bing…\r\n\r\nHow cool is that?\r\n\r\nNow you won’t have to pay for Backlinks & Other SEO Services On Other Online Platforms Like Fiverr, Upwork etc\r\n\r\nSo let me ask you…\r\n\r\nAren’t you tired of Spending 1000’s Of Dollars for getting non related backlinks or fake traffic even ?\r\n\r\nThanks to the brand new AI-powered software BacklinkMaker you’ll get Unlimited Backlinks & Real Human Traffic to your website & Youtube channels.\r\n\r\nThis is a professional cloud-based platform that comes with a Commercial.\r\n\r\nFor Evergreen Income WITHOUT Any Special Skills, Experience, Or Learning Curve.\r\n\r\n=> Grab BacklinkMaker With Exclusive Bonuses Now https://warriorplus.com/o2/a/vjrqsd/0\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nThis is an irresistible offer, with BacklinkMaker you’ll be able to:\r\n\r\nCreate Unlimited HQ Backlinks For Your Blogs, Website Etc On Autopilot\r\nGet Higher Rank Easily On Google, Bing & yahoo etc With No Extra Efforts\r\nGet Unlimited Real & Related Buyer Traffic & Sales \r\nFully Autopilot.. No Manual Work\r\nGet Faster Indexing For Your All Webpages  \r\nAutomatic Updates With No Extra Installation Hassels \r\nUNLIMITED COMMERCIAL LICENCE Included\r\nNo Limitations - Completely Free\r\nSell Unlimited Backlinks & Rest Services to Earn Like The Big Boys\r\nNo Special Skills or Experience Required\r\nStep By Step Training & Videos  \r\n$200 Refund If It Doesn’t Work For You\r\n\r\nAnd much more...\r\n\r\n=> Get Your BacklinkMaker Lifetime Account + Commercial  Licence at a One-Time Price https://warriorplus.com/o2/a/vjrqsd/0\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nThis is turning into monthly recurring very soon.\r\n\r\nBacklinkMaker is very easy to use, Trust me, once you have BacklinkMaker you’ll be able to Rank #1 On Google, Bing & yahoo etc  in 3 easy steps:\r\n\r\nStep 1 - Login & Enter to the Friendly Dashboard \r\n\r\nStep 2 - Enter Your Website Or Youtube Link & Click “Get Backlinks” & DONE!\r\n\r\nStep 3 - BacklinkMaker Will Send Automatically Send Backlinks To The Most High Authority Websites \r\n\r\n\r\n150 TOP Agency Owners, Marketers & more than 2000 customers have started making money with BacklinkMaker.\r\nTill Now BacklinkMaker Has Successfully Sent 18M+ Real & High Quality Backlinks To Customers Website, Blogs & Youtube Channels. \r\nIT’S HUGE!!\r\n\r\n\r\n=> Get Your BacklinkMaker Lifetime Account + Commercial Licence at a One-Time Price https://warriorplus.com/o2/a/vjrqsd/0\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n	2022-12-13 09:54:40.604101	2022-12-13 09:54:40.604101
39	millie.muskett@googlemail.com	Hi there!\r\nI'm writing to let you know about an incredible new AI tool that can help with various tasks related to website copywriting and SEO.\r\nIt's been used by some of the biggest companies in the world, such as Airbnb and Microsoft.\r\nSo if you're looking for a powerful tool to help take your website to the next level, this is definitely worth considering! Plus, to make things even better, I'm giving away 10,000 words for free so that you can try it out for yourself.\r\nTo get 10k words, just go to https://aiwritingmeta.com/	2022-12-13 17:59:30.846375	2022-12-13 17:59:30.846375
40	coughlan.roxanna@outlook.com	The top Website Owners & Digital Marketers in the world are using BacklinkMaker for Getting Traffic & Backlinks to boost their sales online.\r\n\r\nNow you have an opportunity to join them, improve your Google Rank & Get 10X Traffic with a new AI-based app called BacklinkMaker.\r\n\r\n=> The Cart is Open… Go Fast & Secure Your Earlybird Access to BacklinkMaker Now https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nWith BacklinkMaker, you can get Unlimited Backlinks for your websites & Youtube channels and also same time you can generate unlimited real traffic for boosting your sales & Revenue \r\n\r\nBacklinkMaker is very easy to use, Trust me, once you have BacklinkMaker you’ll be able to Rank #1 On Google, Bing & yahoo etc  in 3 easy steps:\r\n\r\nStep 1 - Login & Enter to the Friendly Dashboard \r\n\r\nStep 2 - Enter Your Website Or Youtube Link & Click “Get Backlinks” & DONE!\r\n\r\nStep 3 - BacklinkMaker Will Send Automatically Send Backlinks To The Most High Authority Websites \r\n\r\n\r\n=> Grab BacklinkMaker With Exclusive Bonuses Now https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\n	2022-12-14 00:49:23.640138	2022-12-14 00:49:23.640138
41	ransome.alexander80@gmail.com	Add your site to 1000 business directories with one click here-> bit.ly/submit_site_23EGTc7oZMux	2022-12-14 14:20:35.725824	2022-12-14 14:20:35.725824
42	gillies.lloyd@yahoo.com	The top Website Owners & Digital Marketers in the world are using BacklinkMaker for Getting Traffic & Backlinks to boost their sales online.\r\n\r\nNow you have an opportunity to join them, improve your Google Rank & Get 10X Traffic with a new AI-based app called BacklinkMaker.\r\n\r\n=> The Cart is Open… Go Fast & Secure Your Earlybird Access to BacklinkMaker Now https://warriorplus.com/o2/a/vjrqsd/0\r\n\r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nWith BacklinkMaker, you can get Unlimited Backlinks for your websites & Youtube channels and also same time you can generate unlimited real traffic for boosting your sales & Revenue \r\n\r\nBacklinkMaker is very easy to use, Trust me, once you have BacklinkMaker you’ll be able to Rank #1 On Google, Bing & yahoo etc  in 3 easy steps:\r\n\r\nStep 1 - Login & Enter to the Friendly Dashboard \r\n\r\nStep 2 - Enter Your Website Or Youtube Link & Click “Get Backlinks” & DONE!\r\n\r\nStep 3 - BacklinkMaker Will Send Automatically Send Backlinks To The Most High Authority Websites \r\n\r\n\r\n=> Grab BacklinkMaker With Exclusive Bonuses Now https://warriorplus.com/o2/a/vjrqsd/0\r\n  \r\nSpecial $4 Off - ‘LINK4’ (Expires in an hour time)\r\n\r\nYou are getting BacklinkMaker with a free commercial licence so you can send Backlinks to your clients websites Or Youtube Channels as well\r\n\r\nAnd start generating an evergreen income WITHOUT any hard work.\r\n	2022-12-14 14:33:30.428385	2022-12-14 14:33:30.428385
43	stephens@hey.com	Hi there, test!	2022-12-14 15:29:54.366726	2022-12-14 15:29:54.366726
44	stephens@hey.com	Hi there, test!	2022-12-14 15:36:59.552779	2022-12-14 15:36:59.552779
45	je.pellaton@icloud.com	hejmän! ändlich mal goormey usprobiert. geil und macht au gad froid.\nmis feedback; zum nahluege bim choche nim ich s'iphone und ufeundabe scrolle zwüsche ingredients (wie viel) und instructions (was mache), findi 😏. \n\nau bim inetögele vom rezept findis nöd mega fründlich, für jede ingredient ä neus fäld z'näh (chönt meh da nöd eifach bulletpoints näh).\n\nbisch ä maschine! \ntschüüss	2023-01-09 15:53:46.016083	2023-01-09 15:53:46.016083
46	pat@aneesho.com	Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, brochures, logos, flyers, etc. for a fixed monthly fee. \n\nWe don't charge for each task. What kind of work do you need on a regular basis? Let me know and I'll share my portfolio with you.\n\n	2023-08-04 14:42:39.897575	2023-08-04 14:42:39.897575
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.ingredients (id, description, recipe_id, created_at, updated_at, "position") FROM stdin;
117	20g dried Hijiki	19	2021-12-14 09:51:16.242088	2021-12-14 09:55:49.340591	1
118	ca. 1.5dl water	19	2021-12-14 09:55:49.346124	2021-12-14 09:55:49.346124	2
46	Leftover sticky rice from the day before	11	2021-11-03 16:55:41.300208	2021-11-04 08:48:37.833811	1
36	350g minced pork	10	2021-11-02 14:17:57.186545	2021-11-03 10:11:06.001383	2
119	1 teaspoon dashi (Japanese fish stock)	19	2021-12-14 09:55:49.352696	2021-12-14 09:55:49.352696	3
120	1 teaspoon sugar	19	2021-12-14 09:55:49.358555	2021-12-14 09:55:49.358555	4
121	1 tablespoon soy sauce	19	2021-12-14 09:55:49.365286	2021-12-14 09:55:49.365286	5
55	2 tbsp olive oil	12	2021-11-04 10:36:05.718481	2021-11-04 11:48:08.834368	1
56	1 tbsp apple vinegar	12	2021-11-04 10:39:05.160018	2021-11-04 11:48:08.836891	2
122	1 tablespoon cooking sake	19	2021-12-14 09:55:49.373865	2021-12-14 09:55:49.373865	6
123	1 teaspoon sesame oil	19	2021-12-14 09:55:49.384771	2021-12-14 09:55:49.384771	7
65	2 tbsp miso paste	13	2021-11-04 16:14:10.734656	2021-11-04 16:28:49.706627	5
75	65g rye	14	2021-11-05 10:21:00.672803	2021-11-05 10:23:52.220415	1
76	0.5 amount of water needed for brown rice	14	2021-11-05 10:23:52.226474	2021-11-05 10:23:52.226474	2
37	4 chopped thai chillies (or more if you like)	10	2021-11-02 14:27:46.536948	2021-11-05 11:01:12.22416	3
38	1/2 tablespoon sugar (or more if you like)	10	2021-11-02 14:27:46.539478	2021-11-05 11:01:12.227783	4
39	1 tablespoon of fish sauce (or more if you like)	10	2021-11-02 14:27:46.541686	2021-11-05 11:01:12.230028	5
124	1 onion	20	2021-12-16 13:51:31.372397	2021-12-16 13:58:28.94819	1
77	Rice cooker	14	2021-11-05 11:07:03.829261	2021-11-05 11:07:03.829261	3
80	4 tbsp olive oil	17	2021-12-05 12:33:59.519899	2021-12-05 12:46:29.824093	1
138	1 avocado	21	2021-12-23 13:18:44.190711	2021-12-23 13:19:58.010627	1
142	100ml kimchi brine (sauce)	22	2021-12-23 13:30:03.361787	2021-12-23 13:30:03.361787	2
143	1 onion	22	2021-12-23 13:30:03.368604	2021-12-23 13:30:03.368604	3
144	2 spring onions	22	2021-12-23 13:30:03.37521	2021-12-23 13:30:03.37521	4
145	1 pork sausage	22	2021-12-23 13:30:03.381125	2021-12-23 13:30:03.381125	5
146	1/2 tsp salt	22	2021-12-23 13:30:03.388827	2021-12-23 13:30:03.388827	6
147	1 tsp sugar	22	2021-12-23 13:30:03.39546	2021-12-23 13:30:03.39546	7
148	2 tsp Korean chili flakes	22	2021-12-23 13:30:03.4053	2021-12-23 13:30:03.4053	8
149	1 tsp dashi 	22	2021-12-23 13:30:03.416163	2021-12-23 13:34:15.565411	10
150	1 tbsp gochujang	22	2021-12-23 13:30:03.422429	2021-12-23 13:35:08.310496	9
154	2 handful frozen berries (whatever you like but I usually use mixed berries)	23	2021-12-23 13:37:27.660535	2021-12-23 13:43:17.670174	1
151	1 pack firm tofu	22	2021-12-23 13:30:03.428998	2021-12-23 15:43:30.92171	12
152	toasted sesame seeds	22	2021-12-23 13:30:03.434594	2021-12-23 15:43:30.92171	13
153	1 tsp sesame oil	22	2021-12-23 13:35:08.303956	2021-12-23 15:43:30.923432	11
192	3 tbsp olive oil	28	2022-01-05 13:44:11.51938	2022-01-05 13:44:11.51938	2
191	1 clove garlic	28	2022-01-05 13:38:26.885589	2022-01-05 13:44:11.526431	1
193	1 large onion	28	2022-01-05 13:44:11.531276	2022-01-05 13:44:11.531276	3
194	250g red lentils	28	2022-01-05 13:44:11.537884	2022-01-05 13:44:11.537884	4
195	1/4 tsp cumin	28	2022-01-05 13:44:11.544314	2022-01-05 13:44:11.544314	5
196	1/4 tsp tumeric	28	2022-01-05 13:44:11.549147	2022-01-05 13:44:11.549147	6
197	1/4 tsp paprika	28	2022-01-05 13:44:11.553795	2022-01-05 13:44:11.553795	7
198	1/4 tsp dried chilies	28	2022-01-05 13:44:11.55895	2022-01-05 13:44:11.55895	8
199	2 veggie or chicken stock cubes	28	2022-01-05 13:44:11.563552	2022-01-05 13:44:11.563552	9
200	lime juice	28	2022-01-05 13:46:34.657246	2022-01-05 13:46:34.657246	10
202	250g of soba noodles	29	2022-01-12 16:38:52.948879	2022-01-12 16:45:29.156376	1
321	4dl cream	70	2022-04-03 18:41:04.033827	2022-04-03 18:41:17.52613	2
2	3 eggs	1	2021-10-26 12:40:37.671072	2021-11-04 08:43:55.849788	2
3	2 green onions, minced	1	2021-10-26 12:40:37.674061	2021-11-04 08:43:55.854294	3
4	1tbs of soy sauce	1	2021-10-26 12:40:37.682858	2021-11-04 08:43:55.857902	4
15	1 small onion or spring onion	4	2021-10-29 08:44:59.559087	2021-11-04 08:43:55.916032	1
136	1/2 tsp sugar	20	2021-12-16 13:58:29.021615	2021-12-16 13:58:29.021615	13
137	lime juice	20	2021-12-16 13:58:29.026683	2021-12-16 13:58:29.026683	14
139	spring onion	21	2021-12-23 13:19:58.022066	2021-12-23 13:19:58.022066	2
49	1 cm ginger grated or 1 tsp ginger powder	11	2021-11-03 17:10:44.594064	2021-11-04 08:48:57.014295	4
5	1kg Kabocha Kürbis	2	2021-10-27 06:25:48.63114	2021-11-04 08:43:55.960073	1
6	2El Olivenöl	2	2021-10-27 06:29:45.574637	2021-11-04 08:43:55.964286	2
7	4EL Sake	2	2021-10-27 06:29:45.576207	2021-11-04 08:43:55.968049	3
8	4EL Mirin	2	2021-10-27 06:29:45.577474	2021-11-04 08:43:55.971608	4
9	4EL Sojasauce	2	2021-10-27 06:29:45.578786	2021-11-04 08:43:55.975011	5
10	1/2TL Zucker	2	2021-10-27 06:29:45.580094	2021-11-04 08:43:55.978512	6
11	400ml Wasser	2	2021-10-27 06:29:45.581319	2021-11-04 08:43:55.981676	7
12	Chilipulver nach Geschmack	2	2021-10-27 06:29:45.582478	2021-11-04 08:43:55.985144	8
61	1/2 tsp curcuma powder	12	2021-11-04 11:44:20.277027	2021-11-04 11:44:20.277027	7
62	1/2 tsp paprika powder	12	2021-11-04 11:44:20.280469	2021-11-04 11:44:20.280469	8
59	1 tsp soy sauce	12	2021-11-04 11:44:20.269234	2021-11-04 11:46:56.669028	5
60	2 tsp Dijon mustard	12	2021-11-04 11:44:20.273043	2021-11-04 11:46:56.670848	6
63	1/4 tsp honey	12	2021-11-04 11:44:20.284229	2021-11-04 11:46:56.673035	9
64	black pepper	12	2021-11-04 11:44:20.287424	2021-11-04 11:46:56.674812	10
57	1 tbsp balsamico vinegar	12	2021-11-04 11:44:20.260582	2021-11-04 11:48:08.839075	3
58	1 tsp sesame oil	12	2021-11-04 11:44:20.265393	2021-11-04 11:48:08.841017	4
70	1 block tofu (firm or soft)	13	2021-11-04 16:23:29.254715	2021-11-04 16:23:29.254715	6
73	3 handful veggies like carrots, pumkin, broccoli, kohlrabi, cabbage etc.	13	2021-11-04 16:23:29.274263	2021-11-04 16:23:29.274263	9
66	1 tsp dashi (Japanese fish stock)	13	2021-11-04 16:23:29.21514	2021-11-04 16:28:49.704208	1
32	1 handful green leaves 	9	2021-11-02 05:10:38.177247	2021-11-04 08:43:55.998526	1
34	1tsp lemon or lime juice or vinegar (whatever you have at home)	9	2021-11-02 05:18:21.995209	2021-11-04 08:43:56.002313	2
35	Or use 2tsp Ponzu instead of soy sauce & lemon/lime juice	9	2021-11-02 05:18:21.996525	2021-11-04 08:43:56.006119	3
33	1tsp soy sauce	9	2021-11-02 05:18:21.993553	2021-11-04 08:43:56.009924	4
68	3 garlic cloves	13	2021-11-04 16:23:29.24358	2021-11-04 16:28:49.704208	3
69	1 onion	13	2021-11-04 16:23:29.249184	2021-11-04 16:28:49.704208	4
71	1 handful dried wakame (seaweed)	13	2021-11-04 16:23:29.259451	2021-11-04 16:28:53.749676	8
50	2 pinches of salt	11	2021-11-03 17:10:44.598092	2021-11-04 08:43:56.078926	8
54	Some rice vinegar (or any other vinegar) to dip	11	2021-11-03 17:21:14.749551	2021-11-04 08:43:56.082956	9
72	1 pack shirataki (konjak noodles)	13	2021-11-04 16:23:29.265428	2021-11-04 16:28:53.751861	7
67	10cm Konbu (seaweed)	13	2021-11-04 16:23:29.223341	2021-11-04 16:40:45.380763	2
47	1 tbsp olive oil	11	2021-11-03 17:07:59.499302	2021-11-04 08:48:43.055577	2
20	Optional: 1 teaspoon mayonnaise	4	2021-10-29 08:44:59.567481	2021-12-14 10:12:01.517931	2
48	1 garlic clove grated or 1 tsp garlic powder	11	2021-11-03 17:10:44.587378	2021-11-04 08:48:48.743335	3
16	1 teaspoon olive oil	4	2021-10-29 08:44:59.56094	2021-12-14 10:12:01.525692	3
51	1 tbsp sesame seeds	11	2021-11-03 17:10:44.602286	2021-11-04 08:48:57.013103	5
53	1/2 tap sesame oil	11	2021-11-03 17:17:24.696956	2021-11-04 08:48:57.013103	6
52	Aonori (Japanese seaweed powder, optional)	11	2021-11-03 17:10:44.606616	2021-11-04 08:48:57.013103	7
17	1.5 teaspoon soy sauce	4	2021-10-29 08:44:59.562614	2021-12-14 10:12:01.530331	4
125	3 garlic cloves	20	2021-12-16 13:58:28.954787	2021-12-16 13:58:28.954787	2
126	chilies	20	2021-12-16 13:58:28.962162	2021-12-16 13:58:28.962162	3
127	2 tbsp olive oil	20	2021-12-16 13:58:28.968225	2021-12-16 13:58:28.968225	4
128	leftover rice	20	2021-12-16 13:58:28.974265	2021-12-16 13:58:28.974265	5
129	1 canned beans	20	2021-12-16 13:58:28.980317	2021-12-16 13:58:28.980317	6
87	3 chilis	17	2021-12-05 12:46:29.873971	2021-12-05 12:57:06.897908	10
88	1/2 tsp sugar	17	2021-12-05 12:46:29.879157	2021-12-05 12:57:06.897908	11
89	1 tbsp vinegar	17	2021-12-05 12:46:29.885197	2021-12-05 12:57:06.897908	12
90	250g red lentils	17	2021-12-05 12:46:29.89004	2021-12-05 12:57:06.897908	13
82	1 tsp curcuma powder	17	2021-12-05 12:46:29.83684	2021-12-05 12:57:06.897908	5
83	1 tsp paprika powder	17	2021-12-05 12:46:29.852727	2021-12-05 12:57:06.897908	6
130	1 can pelati	20	2021-12-16 13:58:28.985713	2021-12-16 13:58:28.985713	7
102	chilis to garnish	17	2021-12-05 12:53:50.169617	2021-12-05 12:53:50.169617	23
81	1 tbsp curry powder	17	2021-12-05 12:46:29.830692	2021-12-05 12:56:14.032961	2
84	ground black pepper	17	2021-12-05 12:46:29.85824	2021-12-05 12:57:06.897908	7
131	1 handful coriander	20	2021-12-16 13:58:28.990999	2021-12-16 13:58:28.990999	8
132	salt	20	2021-12-16 13:58:28.996105	2021-12-16 13:58:28.996105	9
133	pepper	20	2021-12-16 13:58:29.004279	2021-12-16 13:58:29.004279	10
134	1 tsp vinegar	20	2021-12-16 13:58:29.010201	2021-12-16 13:58:29.010201	11
135	1 tsp soy sauce	20	2021-12-16 13:58:29.016315	2021-12-16 13:58:29.016315	12
140	1 tbsp ponzu	21	2021-12-23 13:19:58.0288	2021-12-23 13:19:58.0288	3
141	2 handful kimchi	22	2021-12-23 13:23:20.52113	2021-12-23 13:30:03.356194	1
201	chives	28	2022-01-05 14:02:19.568225	2022-01-05 14:02:19.568225	11
173	150g pork minced meat	26	2021-12-24 14:04:18.420772	2021-12-30 19:06:24.50742	1
85	1 big onion	17	2021-12-05 12:46:29.863405	2021-12-05 12:57:06.897908	8
86	6 garlic cloves	17	2021-12-05 12:46:29.868927	2021-12-05 12:57:06.897908	9
91	1 cauliflower	17	2021-12-05 12:46:29.895045	2021-12-05 12:57:06.897908	14
92	1 tbsp tomato puree	17	2021-12-05 12:46:29.900062	2021-12-05 12:57:06.897908	15
204	2-3 garlic cloves	29	2022-01-12 16:45:29.188982	2022-01-12 16:45:29.188982	3
205	2 red chillies	29	2022-01-12 16:45:29.204668	2022-01-12 16:45:29.204668	4
206	Large piece of ginger (2cm)	29	2022-01-12 16:45:29.228663	2022-01-12 16:45:29.228663	5
101	1 tbsp cumin	17	2021-12-05 12:53:50.155842	2021-12-05 12:56:38.906649	3
155	1 tsp honey	23	2021-12-23 13:43:17.676714	2021-12-23 13:43:17.676714	2
93	250g Pelati	17	2021-12-05 12:46:29.904905	2021-12-05 12:57:06.897908	17
94	1 tbsp veggie stock powder	17	2021-12-05 12:46:29.909903	2021-12-05 12:57:06.897908	16
95	1 tbsp soy sauce	17	2021-12-05 12:46:29.914707	2021-12-05 12:57:06.897908	18
96	yogurt or sour cream	17	2021-12-05 12:46:29.919867	2021-12-05 12:57:06.897908	19
97	coriander leaves	17	2021-12-05 12:46:29.924983	2021-12-05 12:57:06.897908	20
98	spring onion	17	2021-12-05 12:46:29.929828	2021-12-05 12:57:06.897908	21
99	lemon juice	17	2021-12-05 12:46:29.934819	2021-12-05 12:57:06.897908	22
100	1 tbsp coriander seeds or powder	17	2021-12-05 12:53:50.149804	2021-12-05 12:57:06.89927	4
156	1 tbsp pure almond butter (without sugar or salt, you can also use other nut butters)	23	2021-12-23 13:43:17.690344	2021-12-23 13:43:17.690344	3
157	1 pinch of salt	23	2021-12-23 13:43:17.702743	2021-12-23 13:43:17.702743	4
158	2 drops lemon juice	23	2021-12-23 13:43:17.709537	2021-12-23 13:43:17.709537	5
159	1 tbsp cocoa powder	23	2021-12-23 13:43:17.716809	2021-12-23 13:43:17.716809	6
160	1 cm ginger	23	2021-12-23 13:43:17.723283	2021-12-23 13:43:17.723283	7
161	3dl soy drink	23	2021-12-23 13:43:17.729234	2021-12-23 13:43:17.729234	8
177	2cm ginger	26	2021-12-24 14:08:58.470787	2021-12-30 19:05:32.601226	7
178	1 nira (Knoblauchschnittlauch) or spring onion (only green part)	26	2021-12-24 14:08:58.477404	2021-12-30 19:05:39.07395	11
176	1 onion	26	2021-12-24 14:08:58.463387	2021-12-30 19:05:39.07395	10
180	1 tbsp sake	26	2021-12-24 14:08:58.492169	2021-12-30 19:06:24.514127	3
174	100g Spitzchabis	26	2021-12-24 14:08:58.448612	2021-12-30 19:06:24.519739	9
179	1 tsp soy sauce	26	2021-12-24 14:08:58.485048	2021-12-24 14:20:23.193679	2
208	5 tablespoons of olive oil	29	2022-01-12 16:45:29.271659	2022-01-12 16:45:29.271659	7
209	2 tablespoons of soy sauce	29	2022-01-12 16:45:29.297348	2022-01-12 16:45:29.297348	8
210	1 teaspoon of sugar	29	2022-01-12 16:45:29.317431	2022-01-12 16:45:29.317431	9
211	1 tablespoon of sesame oil	29	2022-01-12 16:45:29.331288	2022-01-12 16:45:29.331288	10
203	3 cups of coriander leaves, incl stalks	29	2022-01-12 16:45:29.175757	2022-01-12 16:47:58.104492	2
207	2-3 limes (Zest and juice)	29	2022-01-12 16:45:29.250885	2022-01-12 18:01:22.852336	6
181	1 tsp oyster sauce	26	2021-12-24 14:08:58.499318	2021-12-24 14:20:40.832827	4
182	salt and pepper	26	2021-12-24 14:08:58.506173	2021-12-24 14:20:46.64796	5
175	3 cloves galic	26	2021-12-24 14:08:58.456213	2021-12-30 19:05:30.272378	6
40	2 limes (juice)	10	2021-11-02 14:27:46.54575	2021-11-04 08:43:56.025585	6
41	3 shallots	10	2021-11-02 14:27:46.547733	2021-11-04 08:43:56.029364	7
103	5 eggs	18	2021-12-08 09:19:51.844001	2021-12-08 09:30:15.861941	1
186	1 tbsp soy sauce	26	2021-12-24 14:22:22.81652	2021-12-30 13:19:18.880698	15
187	1 tbsp vinegar	26	2021-12-24 14:22:22.824598	2021-12-30 13:19:18.880698	16
188	1 tsp la-yu (chili sesame oil)	26	2021-12-24 14:22:22.845503	2021-12-30 13:19:18.880698	17
344	1 tbsp honey	73	2022-11-10 17:35:42.676143	2022-11-10 17:35:42.676143	4
74	1 tbsp roasted seeds (sesame, pumpin, sunflower)	13	2021-11-04 16:23:29.280239	2022-02-15 13:55:14.143749	10
185	1 tsp sesame oil	26	2021-12-24 14:22:22.80488	2021-12-30 13:19:21.411586	14
189	1 tsp vegetable oil	26	2021-12-24 14:24:35.428225	2021-12-30 13:19:21.413229	13
183	1 tbsp potato starch	26	2021-12-24 14:22:22.787844	2021-12-30 19:05:39.075751	8
214	1kg radish	32	2022-01-15 18:40:31.64528	2022-01-15 18:44:57.468703	1
218	6kg cabbage 🥬 (Chinakohl)	33	2022-01-16 09:43:06.241341	2022-01-16 09:58:27.892997	1
234	15 gralic cloves (fresh & young ones) 🧄	34	2022-01-22 13:26:21.766893	2022-03-06 18:09:07.905232	2
345	1 tbsp ground fresh garlic 	73	2022-11-10 17:35:42.680214	2022-11-10 17:35:42.680214	5
241	2 tomatos	17	2022-02-04 15:06:04.224253	2022-02-04 15:06:04.224253	24
346	1 tsp ground fresh ginger	73	2022-11-10 17:35:42.687254	2022-11-10 17:35:42.687254	6
287	12 marzipan carrots	65	2022-03-16 16:04:49.856841	2022-03-16 16:04:49.856841	5
347	1 tsp sesame oil	73	2022-11-10 17:35:42.691328	2022-11-10 17:35:42.691328	7
284	1 dl favorite gin,\r\n1 lime, grated zest and juice,\r\n1 hand full of poppy seeds,\r\n250 grams of carrots,\r\n250 ground almonds,\r\n80 grams of flour,\r\n2 teaspoons of baking soda	65	2022-03-16 16:04:49.828659	2022-03-16 16:16:42.25474	2
286	300 grams of powdered sugar,\r\n2 tbsp water,\r\n2 tbsp lime juice	65	2022-03-16 16:04:49.846515	2022-03-16 16:16:42.264958	4
348	1.5 tbsp cornstarch dissolved in a bit of cold water	73	2022-11-10 17:35:42.695152	2022-11-10 17:39:29.813466	8
292	2 aubergines 🍆 	69	2022-04-03 18:01:01.331427	2022-04-03 18:14:29.788664	1
184	1 pack gyoza dough (24 sheets)	26	2021-12-24 14:22:22.796398	2022-05-18 11:47:40.894153	12
322	300g flour	71	2022-07-04 18:51:30.313895	2022-07-04 18:55:00.610101	1
327	1 egg 🥚 	71	2022-07-04 18:55:00.642025	2022-07-04 18:55:00.642025	6
324	2 teaspoons sugar	71	2022-07-04 18:55:00.623194	2022-07-04 19:02:17.6048	2
325	2 teaspoons baking powder	71	2022-07-04 18:55:00.630045	2022-07-04 19:02:17.6048	3
326	1 teaspoon salt 🧂	71	2022-07-04 18:55:00.636621	2022-07-04 19:02:17.6048	4
323	300ml milk 🥛	71	2022-07-04 18:55:00.616603	2022-07-04 19:02:17.607363	5
329	130ml milk	72	2022-08-16 20:15:19.217702	2022-08-16 20:25:27.943365	1
340	1 teaspoon of dashi (fish flakes - optional)	4	2022-10-05 16:01:29.75599	2022-10-05 16:01:41.918544	8
285	5 egg white,\r\n1 pinch of salt	65	2022-03-16 16:04:49.838609	2022-11-02 06:07:28.126008	3
283	5 egg yolks,\r\n250 grams of sugar,\r\n2 tablespoons hot water	65	2022-03-16 15:57:10.12767	2022-11-02 06:08:07.655501	1
341	100ml soy sauce	73	2022-11-10 17:29:22.277019	2022-11-10 17:35:42.664119	1
342	100ml water	73	2022-11-10 17:35:42.667528	2022-11-10 17:35:42.667528	2
343	50g brown sugar	73	2022-11-10 17:35:42.671889	2022-11-10 17:35:42.671889	3
42	A few leaves of culantro or cilantro	10	2021-11-02 14:27:46.550269	2021-11-04 08:43:56.033776	8
43	5 spring onions	10	2021-11-02 14:27:46.552412	2021-11-04 08:43:56.037814	9
44	20 leaves of mint	10	2021-11-02 14:27:46.554224	2021-11-04 08:43:56.041575	10
104	Salt & pepper	18	2021-12-08 09:30:15.870143	2021-12-08 09:30:15.870143	2
105	100ml neutral oil (e.g. sunflower oil)	18	2021-12-08 09:30:15.879418	2021-12-08 09:30:15.879418	3
106	100g schmand (sour cream 24 - 28% fat)	18	2021-12-08 09:30:15.886078	2021-12-08 09:39:53.435177	5
107	100g sour cream (> 10 % < 24% of fat)	18	2021-12-08 09:30:15.891378	2021-12-08 09:39:53.435177	6
108	ca. 150g 7 kinds of herbs, see following:	18	2021-12-08 09:30:15.897634	2021-12-08 09:39:53.435177	7
313	salt & pepper	69	2022-04-03 18:14:29.932849	2022-04-03 18:14:29.932849	22
307	salt & pepper	69	2022-04-03 18:14:29.895691	2022-04-03 18:29:59.733842	10
332	400g flour	72	2022-08-16 20:25:27.960216	2022-08-16 20:25:27.960216	4
304	1 cube veggie stock	69	2022-04-03 18:14:29.876107	2022-04-03 18:29:57.322316	14
305	2 tbsp oregano	69	2022-04-03 18:14:29.882676	2022-04-03 18:29:57.322316	15
306	1/4 tsp cinnamon	69	2022-04-03 18:14:29.889467	2022-04-03 18:29:57.322316	16
333	1/2 tsp salt	72	2022-08-16 20:25:27.965268	2022-08-16 20:25:27.965268	5
215	135g sugar	32	2022-01-15 18:44:57.473894	2022-01-15 18:44:57.473894	2
217	2 tbsp salt	32	2022-01-15 18:44:57.483708	2022-01-15 18:44:57.483708	4
219	600g salt 🧂	33	2022-01-16 09:58:27.90151	2022-01-16 09:58:27.90151	2
220	400ml water 💧	33	2022-01-16 09:58:27.909037	2022-01-16 09:58:27.909037	3
221	4 tablespoons rice flour or normal flour 🍚 	33	2022-01-16 09:58:27.916101	2022-01-16 09:58:27.916101	4
222	4 tablespoons sugar	33	2022-01-16 09:58:27.923505	2022-01-16 09:58:27.923505	5
223	60 garlic cloves 🧄	33	2022-01-16 09:58:27.930807	2022-01-16 09:58:27.930807	6
224	2 onions 🧅	33	2022-01-16 09:58:27.937594	2022-01-16 09:58:27.937594	7
225	Handfull ginger	33	2022-01-16 09:58:27.943977	2022-01-16 09:58:27.943977	8
226	Ca 700g Korean pepper flakes 🌶 	33	2022-01-16 09:58:27.950664	2022-01-16 09:58:27.950664	9
227	200ml fish sauce 🐠	33	2022-01-16 09:58:27.957434	2022-01-16 09:58:27.957434	10
228	70ml soy sauce	33	2022-01-16 09:58:27.963725	2022-01-16 09:58:27.963725	11
229	Optional: Korean fermented shrimps	33	2022-01-16 09:58:27.975938	2022-01-16 09:58:27.975938	12
230	1 radish (ca. 700g)	33	2022-01-16 09:58:27.982866	2022-01-16 09:58:27.982866	13
231	3 carrots 🥕	33	2022-01-16 09:58:27.990408	2022-01-16 09:58:27.990408	14
232	Ca. 4 bunches spring onions 🌾	33	2022-01-16 09:58:27.998005	2022-01-16 09:58:27.998005	15
233	Optional: 4 bunches of chives or garlic chives	33	2022-01-16 09:58:28.005577	2022-01-16 09:58:28.005577	16
109	Borage (Borretsch)	18	2021-12-08 09:30:15.903953	2022-02-26 07:52:07.431349	8
110	Chervil (Kerbel)	18	2021-12-08 09:30:15.90965	2022-02-26 07:52:07.440674	9
111	Cress (Brunnenkresse)	18	2021-12-08 09:30:15.914656	2022-02-26 07:52:07.444624	10
112	Parsley (Petersilie)	18	2021-12-08 09:30:15.920091	2022-02-26 07:52:07.448848	11
235	200ml olive oil 🫒	34	2022-01-22 13:32:43.50038	2022-01-22 13:46:03.417978	3
236	200ml water 💧	34	2022-01-22 13:32:43.506861	2022-01-22 13:46:03.417978	4
237	1 bunch of parsley 🌿	34	2022-01-22 13:32:43.511872	2022-01-22 13:46:03.417978	5
238	1 teaspoon of cayenne pepper powder 🌶	34	2022-01-22 13:32:43.516703	2022-01-22 13:46:03.417978	6
239	500g pasta 🍝	34	2022-01-22 13:44:45.443207	2022-01-22 13:46:03.420114	1
216	135ml white vinegar	32	2022-01-15 18:44:57.479117	2022-01-22 20:51:17.597497	3
242	500g Magerquark	36	2022-02-04 20:20:16.025718	2022-02-04 20:23:42.60746	1
301	1 pinch sugar	69	2022-04-03 18:14:29.855678	2022-04-03 18:29:59.732283	11
114	Sorrel (Sauerampfer)	18	2021-12-08 09:30:15.930877	2022-02-26 07:52:07.4573	13
115	Chives (Schnittlauch)	18	2021-12-08 09:30:15.939478	2022-02-26 07:52:07.461559	14
113	Pimpinelle (Kleiner Wiesenkopf)	18	2021-12-08 09:30:15.925283	2022-02-26 07:52:35.755993	12
293	500g waxy potatoes 🥔 	69	2022-04-03 18:14:29.797209	2022-04-03 18:14:29.797209	2
294	salt	69	2022-04-03 18:14:29.804716	2022-04-03 18:14:29.804716	3
295	olive oil	69	2022-04-03 18:14:29.812367	2022-04-03 18:14:29.812367	4
296	2 tbsp olive oil	69	2022-04-03 18:14:29.819979	2022-04-03 18:14:29.819979	5
297	1 small onion 🧅 	69	2022-04-03 18:14:29.826871	2022-04-03 18:14:29.826871	6
298	3 cloves 🧄 	69	2022-04-03 18:14:29.833729	2022-04-03 18:14:29.833729	7
299	1 can (400g) pelati	69	2022-04-03 18:14:29.840536	2022-04-03 18:14:29.840536	8
300	1 can (400g) cannellini beans (or any other beans)	69	2022-04-03 18:14:29.849333	2022-04-03 18:14:29.849333	9
308	40g butter 🧈 	69	2022-04-03 18:14:29.901847	2022-04-03 18:14:29.901847	17
309	30g flour	69	2022-04-03 18:14:29.908111	2022-04-03 18:14:29.908111	18
310	4dl milk	69	2022-04-03 18:14:29.91457	2022-04-03 18:14:29.91457	19
311	75g pecorino 🧀 	69	2022-04-03 18:14:29.920541	2022-04-03 18:14:29.920541	20
312	2 eggs 🥚 	69	2022-04-03 18:14:29.926426	2022-04-03 18:14:29.926426	21
302	1 dash white wine vinegar	69	2022-04-03 18:14:29.86265	2022-04-03 18:29:59.732283	12
303	1 tbsp tomato purée	69	2022-04-03 18:14:29.869669	2022-04-03 18:31:54.575591	13
328	60g butter 🧈	71	2022-07-04 19:02:28.379912	2022-07-04 19:02:28.379912	7
330	42g fresh yeast	72	2022-08-16 20:25:27.949316	2022-08-16 20:25:27.949316	2
331	2 tbsp sugar	72	2022-08-16 20:25:27.955347	2022-08-16 20:25:27.955347	3
335	2 eggs	72	2022-08-16 20:25:27.975226	2022-08-16 20:25:27.975226	7
336	8 tsp plum jam (for Swiss people: go for Alnatura Pflaumenmus, do not use Pflaumenkonfi)	72	2022-08-16 20:25:27.980485	2022-08-16 20:25:27.980485	8
337	1 tbsp sugar	72	2022-08-16 20:25:27.985773	2022-08-16 20:25:27.985773	9
338	3 tbsp poppy seeds	72	2022-08-16 20:25:27.9906	2022-08-16 20:25:27.9906	10
339	1l vanilla sauce (find recipe in goormey)	72	2022-08-16 20:25:27.995519	2022-08-16 20:25:27.995519	11
334	50g soft butter	72	2022-08-16 20:25:27.970012	2022-08-16 20:40:31.004626	6
1	200g block of firm tofu	1	2021-10-26 12:36:34.694056	2021-11-04 08:43:55.844738	1
21	1 kleiner Chinakohl	5	2021-10-29 08:46:00.780454	2021-11-04 08:43:55.878207	1
22	2 grosse Prisen Salz (ca 2g)	5	2021-10-29 08:51:38.420643	2021-11-04 08:43:55.882593	2
24	1 kleine Prise Zucker	5	2021-10-29 08:51:38.425569	2021-11-04 08:43:55.886649	3
25	1TL Dashi (japanische Fischbrühe)	5	2021-10-29 08:51:38.42782	2021-11-04 08:43:55.89068	4
27	Chiliflocken nach Bedarf	5	2021-10-29 08:52:49.468161	2021-11-04 08:43:55.894497	5
26	2EL Ponzu (alternativ 1EL Sojasauceh und 1TL extra Zitronensaft)	5	2021-10-29 08:51:38.430194	2021-11-04 08:43:55.898167	6
23	1/2 Zitrone Abrieb und 1EL Saft (oder 1EL Yuzusaft)	5	2021-10-29 08:51:38.423314	2021-11-04 08:43:55.901993	7
247	3 TL Zucker	36	2022-02-04 20:23:42.628067	2022-02-24 11:07:41.468637	6
116	1 - 2 teaspoons of spicy mustard	18	2021-12-08 09:39:37.806182	2021-12-08 10:27:57.333804	4
18	1 tablespoon ponzu sauce	4	2021-10-29 08:44:59.564221	2021-12-14 10:12:01.535543	5
28	1 teaspoon mustard	4	2021-10-29 09:13:31.863062	2021-12-14 10:12:01.546001	7
168	1 pack Löffelbuscuits	25	2021-12-24 09:48:33.475643	2021-12-24 13:01:23.588501	7
243	300g Beeren (TK oder frisch)	36	2022-02-04 20:23:42.59899	2022-02-04 20:23:42.59899	2
244	100ml Rahm	36	2022-02-04 20:23:42.611394	2022-02-04 20:23:42.611394	3
245	1 Zitrone	36	2022-02-04 20:23:42.616811	2022-02-04 20:23:42.616811	4
246	1 Pack Vanillezucker	36	2022-02-04 20:23:42.622349	2022-02-04 20:23:42.622349	5
248	1 Prise Salz	36	2022-02-04 20:23:42.633333	2022-02-04 20:23:42.633333	7
45	5 tablespoons of uncooked Thai sticky rice	10	2021-11-02 14:40:21.082688	2021-11-03 10:11:06.005972	1
249	4 Butterkekse	36	2022-02-04 20:27:48.007108	2022-02-04 20:27:48.007108	8
314	6dl milk	70	2022-04-03 18:33:06.579653	2022-04-03 18:41:04.028412	1
316	1 pack vanilla sugar	70	2022-04-03 18:36:48.74224	2022-04-03 18:41:15.448522	5
318	1 pinch salt	70	2022-04-03 18:36:48.755361	2022-04-03 18:41:15.448522	6
319	2 tbsp corn starch	70	2022-04-03 18:36:48.7623	2022-04-03 18:41:15.448522	7
320	2 eggs	70	2022-04-03 18:36:48.7687	2022-04-03 18:41:15.448522	9
315	1 vanilla pod	70	2022-04-03 18:36:48.735702	2022-04-03 18:41:17.524448	3
317	3.5 tbsp sugar	70	2022-04-03 18:36:48.749056	2022-04-03 18:41:17.524448	4
19	1 teaspoon vinegar (ideal: black rice vinegar)	4	2021-10-29 08:44:59.565749	2022-10-05 16:01:29.74712	6
14	150 - 200g of Natto (fermented soybeans)	4	2021-10-29 08:35:30.437613	2022-10-05 16:01:41.912954	9
361	1 pack shortpastry	77	2022-11-28 19:21:13.094831	2022-11-28 19:27:26.117329	1
352	3 dl water	32	2022-11-27 12:28:50.056267	2022-11-27 12:28:50.056267	5
353	200g pumpkin	76	2022-11-28 17:11:38.766132	2022-11-28 17:14:21.599816	1
354	2 garlic cloves	76	2022-11-28 17:14:21.647463	2022-11-28 17:14:21.647463	2
355	1 chili	76	2022-11-28 17:14:21.666261	2022-11-28 17:14:21.666261	3
363	1 pack vanilla pudding powder	77	2022-11-28 19:27:26.307679	2022-11-28 19:27:26.307679	3
357	340g pasta (or as much as 2 people can eat)	76	2022-11-28 17:14:21.780268	2022-11-28 19:20:19.264891	6
358	Parmesan to serve	76	2022-11-28 17:14:21.792672	2022-11-28 19:20:19.264891	7
359	Roasted pumpkin seeds to servce	76	2022-11-28 17:14:21.803337	2022-11-28 19:20:19.264891	8
364	250g cream	77	2022-11-28 19:27:26.334615	2022-11-28 19:27:26.334615	4
360	Salt and pepper	76	2022-11-28 17:20:42.779496	2022-11-28 19:20:27.69064	5
356	Handful parsley	76	2022-11-28 17:14:21.682326	2022-11-28 19:20:27.695061	4
365	100g sugar	77	2022-11-28 19:27:26.358457	2022-11-28 19:27:26.358457	5
366	2 pinches of salt	77	2022-11-28 19:27:26.373461	2022-11-28 19:27:26.373461	6
367	3 eggs	77	2022-11-28 19:27:26.412219	2022-11-28 19:27:26.412219	7
368	3 tsp ground cinnamon	77	2022-11-28 19:27:26.451039	2022-11-28 19:27:26.451039	8
369	1 tsp ground ginger	77	2022-11-28 19:27:26.492321	2022-11-28 19:27:26.492321	9
370	1/2 tsp ground cardamom	77	2022-11-28 19:27:26.5087	2022-11-28 19:27:26.5087	10
371	1/2 tsp ground cloves	77	2022-11-28 19:27:26.538901	2022-11-28 19:27:26.538901	11
372	1/2 tsp lemon zest	77	2022-11-28 19:27:26.562222	2022-11-28 19:27:26.562222	12
373	1/4 tsp ground nutmeg	77	2022-11-28 19:27:26.579691	2022-11-28 19:27:26.579691	13
362	400g baked pumpkin (pumpkin puree)	77	2022-11-28 19:27:26.290653	2022-11-28 19:38:22.291659	2
374	Whipped cream and/or vanilla ice cream to serve	77	2022-11-28 19:38:22.316058	2022-11-28 19:38:22.316058	14
375	1 pack kale (around 300g)	78	2022-12-20 18:38:05.424376	2022-12-20 21:11:17.469468	1
376	2 tbsp olive oil	78	2022-12-20 21:11:17.477084	2022-12-20 21:11:17.477084	2
164	200ml cream 	25	2021-12-24 09:48:33.445049	2023-07-02 14:40:51.516624	3
165	35g sugar 	25	2021-12-24 09:48:33.456005	2023-07-02 14:40:51.520317	4
171	Cocoa powder	25	2021-12-24 09:48:33.495717	2023-07-02 14:44:23.187238	11
377	1 small onion	78	2022-12-20 21:11:17.487655	2022-12-20 21:11:17.487655	3
378	3 cloves garlic	78	2022-12-20 21:11:17.495981	2022-12-20 21:11:17.495981	4
379	1 chili	78	2022-12-20 21:11:17.507145	2022-12-20 21:11:17.507145	5
380	1 tbsp soy sauce	78	2022-12-20 21:11:17.518078	2022-12-20 21:11:17.518078	6
381	1 tsp rice vinegar (or use another vinegar and a pitch of sugar)	78	2022-12-20 21:11:17.537874	2022-12-20 21:11:17.537874	7
384	1 can chickpeas	78	2022-12-20 21:11:17.567388	2022-12-20 21:11:17.567388	10
400	Knob of ginger	81	2023-01-08 15:05:36.542731	2023-01-09 15:44:55.061133	3
382	1 tsp Dijon mustard	78	2022-12-20 21:11:17.553694	2022-12-20 21:16:46.421983	9
383	Pepper	78	2022-12-20 21:11:17.559716	2022-12-20 21:16:46.423843	8
385	50ml cream (optional, to indulge)	78	2022-12-20 21:17:15.021394	2022-12-20 21:17:15.021394	11
387	1 whole cauliflower	80	2023-01-02 17:08:33.983894	2023-01-02 17:09:41.82401	1
388	2 tablespoons vinegar	80	2023-01-02 17:11:23.419993	2023-01-02 17:27:27.515503	2
389	4 tablespoons olive oil 🫒 	80	2023-01-02 17:27:27.543805	2023-01-02 17:27:27.543805	3
390	2 teaspoons curry powder	80	2023-01-02 17:27:27.557741	2023-01-02 17:27:27.557741	4
391	2 teaspoons garlic powder 🧄 	80	2023-01-02 17:27:27.568581	2023-01-02 17:27:27.568581	5
392	1 teaspoon coriander seeds	80	2023-01-02 17:27:27.57781	2023-01-02 17:27:27.57781	6
393	1 teaspoon cumin seed	80	2023-01-02 17:27:27.589686	2023-01-02 17:27:27.589686	7
401	Chilli flakes	81	2023-01-08 15:05:36.55569	2023-01-09 15:44:55.069008	4
394	1 teaspoon mustard	80	2023-01-02 17:27:27.602248	2023-01-02 17:32:13.091375	9
395	1 teaspoon salt 🧂 	80	2023-01-02 17:27:27.615467	2023-01-02 17:32:13.091375	10
396	1 teaspoon soy sauce	80	2023-01-02 17:27:27.626845	2023-01-02 17:32:13.091375	11
397	Pinch of chilli powder (optional)	80	2023-01-02 17:27:27.640503	2023-01-02 17:32:13.091375	12
402	Handful spring onions\r\n	81	2023-01-08 15:05:36.570529	2023-01-09 15:44:55.076775	5
398	1/2 teaspoon honey	80	2023-01-02 17:31:56.097785	2023-01-03 06:29:53.489788	8
403	Roasted sesame oil	81	2023-01-08 15:05:36.583341	2023-01-09 15:44:55.084997	6
405	(Light) Soy sauce	81	2023-01-08 15:05:36.612434	2023-01-09 15:44:55.093377	7
406	Hoisin sauce	81	2023-01-08 15:05:36.626646	2023-01-09 15:44:55.101617	8
407	Rice vinegar	81	2023-01-08 15:05:36.640532	2023-01-09 15:44:55.111749	9
408	Sesame paste	81	2023-01-08 15:05:36.653812	2023-01-09 15:44:55.121914	10
409	Peanut butter	81	2023-01-08 15:05:36.667053	2023-01-09 15:44:55.131794	11
411	1 medium sized kohlrabi	82	2023-01-14 13:19:05.102396	2023-01-14 13:24:56.642903	1
412	1 spring onion	82	2023-01-14 13:24:56.655438	2023-01-14 13:24:56.655438	2
413	Handful dill	82	2023-01-14 13:24:56.66727	2023-01-14 13:24:56.66727	3
414	Handful dried cassis	82	2023-01-14 13:24:56.675702	2023-01-14 13:24:56.675702	4
415	1 can borlotti beans (or any other beans)	82	2023-01-14 13:24:56.685842	2023-01-14 13:24:56.685842	5
416	1 garlic clove	82	2023-01-14 13:24:56.70439	2023-01-14 13:24:56.70439	6
422	800g Philadelphia cream cheese	83	2023-01-14 13:32:33.440992	2023-01-14 14:00:19.479716	4
434	1kg waxy potatoes	84	2023-01-14 14:02:16.443064	2023-01-14 14:05:56.703055	1
435	5 garlic cloves	84	2023-01-14 14:05:56.721487	2023-01-14 14:05:56.721487	2
436	5dl milk	84	2023-01-14 14:05:56.735596	2023-01-14 14:05:56.735596	3
437	Salt and pepper	84	2023-01-14 14:05:56.7459	2023-01-14 14:05:56.7459	4
438	50g grated parmesan or any other cheese (optional)	84	2023-01-14 14:05:56.755349	2023-01-14 14:05:56.755349	5
440	100ml olive oil	76	2023-01-29 17:55:58.648098	2023-01-29 17:55:58.648098	9
419	6 tbsp olive oil	82	2023-01-14 13:24:56.73583	2023-01-14 13:24:56.73583	9
439	2 large or 3 small onions	85	2023-01-29 17:50:07.129337	2023-01-29 17:59:05.066406	1
410	150g ramen noodle	81	2023-01-08 21:36:29.466504	2023-01-09 15:44:55.037023	1
399	2 garlic cloves	81	2023-01-08 14:42:47.247051	2023-01-09 15:44:55.051379	2
420	Salt and pepper	82	2023-01-14 13:24:56.74776	2023-01-14 13:24:56.74776	10
442	2 tbsp soy sauce	85	2023-01-29 17:59:05.09107	2023-01-29 17:59:05.09107	3
417	4 tbsp lemon juice	82	2023-01-14 13:24:56.713313	2023-01-14 13:30:55.951554	8
443	2 tbsp mirin	85	2023-01-29 17:59:05.102062	2023-01-29 17:59:05.102062	4
418	1 tsp lemon zest	82	2023-01-14 13:24:56.725615	2023-01-14 13:31:32.771656	7
421	Roasted sesame, pumpkin and/or sunflower seeds (or any other roasted seeds)	82	2023-01-14 13:24:56.760347	2023-01-14 13:31:32.784983	11
441	1dl dashi (do not add if you go full vegetarian since it’s fish stock. I use 1 tsp of dashi powder and dissolve in 1dl water. Dashi gives a deep and slightly smokey taste.)	85	2023-01-29 17:59:05.077259	2023-01-29 18:06:15.546616	2
426	200g crème fraîche	83	2023-01-14 13:45:44.478646	2023-01-14 13:45:44.478646	5
427	130g sugar	83	2023-01-14 13:45:44.490197	2023-01-14 13:45:44.490197	6
428	1 pack vanilla sugar	83	2023-01-14 13:45:44.502661	2023-01-14 13:45:44.502661	7
429	1 vanilla pod	83	2023-01-14 13:45:44.523219	2023-01-14 13:45:44.523219	8
430	2 tbsp flour	83	2023-01-14 13:45:44.537904	2023-01-14 13:45:44.537904	9
431	4 eggs	83	2023-01-14 13:45:44.552026	2023-01-14 13:45:44.552026	10
432	1 tbsp lemon juice	83	2023-01-14 13:45:44.563834	2023-01-14 13:45:44.563834	11
433	1 tsp lemon zest	83	2023-01-14 13:45:44.587836	2023-01-14 13:45:44.587836	12
449	Shichimi and sansho pepper (optional)	85	2023-01-29 17:59:05.174895	2023-01-29 18:54:54.892268	10
423	200g pure butter shortbread highlanders (Walkers from Migros) or any other cookies	83	2023-01-14 13:45:44.414778	2023-01-14 14:00:19.476237	1
424	pinch of salt	83	2023-01-14 13:45:44.429995	2023-01-14 14:00:19.476237	2
425	100g melted butter	83	2023-01-14 13:45:44.454211	2023-01-14 14:00:19.476237	3
444	2 pinches sugar	85	2023-01-29 17:59:05.114104	2023-01-29 17:59:05.114104	5
445	1 pack tofu (soft or firm, it’s up to your liking)	85	2023-01-29 17:59:05.126223	2023-01-29 17:59:05.126223	6
446	4 eggs	85	2023-01-29 17:59:05.138884	2023-01-29 17:59:05.138884	7
447	1 spring onion	85	2023-01-29 17:59:05.152382	2023-01-29 17:59:05.152382	8
448	1 tsp sesame oil	85	2023-01-29 17:59:05.165187	2023-01-29 17:59:05.165187	9
450	1 can white beans	86	2023-06-25 19:18:43.056864	2023-06-26 04:23:27.107542	1
451	2 tbsp tahini (be generous with the amount)	86	2023-06-26 04:23:27.113784	2023-06-26 04:23:27.113784	2
452	4 tbsp olive oil	86	2023-06-26 04:23:27.120278	2023-06-26 04:23:27.120278	3
453	2 tbsp lemon juice	86	2023-06-26 04:23:27.125788	2023-06-26 04:23:27.125788	4
454	1 tsp coriander seeds	86	2023-06-26 04:23:27.130711	2023-06-26 04:23:27.130711	5
455	Super small dash of honey	86	2023-06-26 04:23:27.135423	2023-06-26 04:23:27.135423	6
456	Super small dash of Dijon mustard	86	2023-06-26 04:23:27.13947	2023-06-26 04:23:27.13947	7
457	Salt and pepper	86	2023-06-26 04:23:27.143702	2023-06-26 04:23:27.143702	8
458	1 small clove of garlic pressed	86	2023-06-26 04:28:43.596443	2023-06-26 04:28:43.596443	9
459	340g pasta 🍝 	87	2023-06-29 15:12:09.463742	2023-06-29 15:28:41.920385	1
460	1 small can of white tuna in oil	87	2023-06-29 15:28:41.927444	2023-06-29 15:28:41.927444	2
466	Some lemon juice 🍋 	87	2023-06-29 15:28:41.966463	2023-06-29 15:28:41.966463	8
467	1 tablespoon black olives 🫒 	87	2023-06-29 15:28:41.971283	2023-06-29 15:28:41.971283	9
468	Some pasta water 💦 	87	2023-06-29 15:28:41.975778	2023-06-29 15:28:41.975778	10
462	1 onion 🧅 	87	2023-06-29 15:28:41.947969	2023-06-29 16:05:23.77313	3
463	2 garlic cloves 🧄 	87	2023-06-29 15:28:41.952453	2023-06-29 16:05:23.77313	4
464	1 tablespoon kapers	87	2023-06-29 15:28:41.957155	2023-06-29 16:05:29.40177	5
465	Some white wine 🍷 	87	2023-06-29 15:28:41.961711	2023-06-29 16:05:29.40177	6
461	Ca 200ml sourcream	87	2023-06-29 15:28:41.936464	2023-06-29 16:05:29.403075	7
172	1 egg 🥚 	25	2021-12-24 13:01:09.628133	2023-07-02 14:40:51.503594	1
163	250g mascarpone 	25	2021-12-24 09:32:56.738781	2023-07-02 14:40:51.512367	2
167	1 drop lemon juice 🍋 	25	2021-12-24 09:48:33.468844	2023-07-02 14:40:51.526028	6
169	4 espresso ☕️ 	25	2021-12-24 09:48:33.482546	2023-07-02 14:40:51.528881	8
166	1 good pinch of salt 🧂 	25	2021-12-24 09:48:33.462564	2023-07-02 14:44:23.172193	5
170	3 tablespoons Cointreau 🥃 	25	2021-12-24 09:48:33.488572	2023-07-02 14:44:23.178109	9
470	3 tablespoons orange juice 🍊 	25	2023-07-02 14:40:51.534896	2023-07-02 14:44:23.183066	10
474	Hampflä Salbei	92	2023-09-05 20:15:17.129889	2023-09-05 20:15:17.129889	1
475	5 Chnoblizeihä	92	2023-09-05 20:16:52.913528	2023-09-05 20:16:52.913528	2
476	75g Butter	92	2023-09-05 20:17:19.390188	2023-09-05 20:17:19.390188	3
478	Salz & Pfeffer	92	2023-09-05 20:19:23.013983	2023-09-05 20:19:23.013983	5
479	500g Pasta	92	2023-09-05 20:19:38.540361	2023-09-05 20:19:38.540361	6
477	5EL Gräm fraiche	92	2023-09-05 20:18:42.229207	2023-09-05 20:27:51.099588	4
480	500g green beans	93	2023-09-12 16:10:41.632699	2023-09-12 16:10:41.632699	1
481	1 large onion	93	2023-09-12 16:10:53.065043	2023-09-12 16:10:53.065043	2
482	8 garlic cloves	93	2023-09-12 16:11:34.646968	2023-09-12 16:11:34.646968	3
483	100ml water from cooked beans	93	2023-09-12 16:12:10.865983	2023-09-12 16:12:10.865983	4
484	1 tablespoon soy sauce	93	2023-09-12 16:14:30.165198	2023-09-12 16:14:30.165198	5
485	1 tablespoon sesame oil	93	2023-09-12 16:15:35.886202	2023-09-12 16:15:35.886202	6
469	Salt, pepper, chli, according to taste	87	2023-06-29 16:07:39.192708	2023-09-17 15:17:21.032001	11
487	30g - Sugar 🍭	94	2023-11-14 10:03:06.605802	2023-11-14 10:03:06.605802	2
488	100g - Butter 🧈	94	2023-11-14 10:03:24.85472	2023-11-14 10:03:24.85472	3
489	25g - Salt 🧂	94	2023-11-14 10:03:43.410562	2023-11-14 10:03:43.410562	4
490	500ml - Water 💧	94	2023-11-14 10:04:07.086418	2023-11-14 10:04:07.086418	5
486	1kg - White flour 🥖	94	2023-11-14 10:02:39.822979	2023-11-14 10:04:42.849606	1
491	50g - Yeast 🍄	94	2023-11-14 10:04:30.549466	2023-11-14 10:07:28.986998	6
\.


--
-- Data for Name: instructions; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.instructions (id, recipe_id, description, created_at, updated_at, "position") FROM stdin;
96	25	whisk cream semirigid	2021-12-24 10:06:29.713963	2021-12-24 10:06:29.713963	3
1	1	Cut tofu into 1cm thick cubes.	2021-10-26 12:36:34.696737	2021-11-04 08:43:09.776372	1
2	1	Fry tofu in some veggy oil for ca. 3mins each side. Use non-stick pan, if possible.	2021-10-26 12:43:39.590597	2021-11-04 08:43:09.78365	2
3	1	Put eggs in a bowl and add the green onions and the soy sauce. Mix well.	2021-10-26 12:43:39.594596	2021-11-04 08:43:09.785943	3
5	1	Cook until egg is done. Finish.	2021-10-26 12:43:39.601907	2021-11-04 08:43:09.78999	5
17	5	Chinakohlstreifen in einer grossen Schüssel salzen und leicht einkneten	2021-10-29 08:54:15.006216	2021-11-04 08:43:09.798186	1
18	5	Restliche Zutaten hinzufügen, mischen und mindestens 30min ziehen lassen	2021-10-29 08:54:15.010608	2021-11-04 08:43:09.800319	2
16	4	Let it rest for 30mins and enjoy!!	2021-10-29 08:50:53.287915	2021-11-04 08:43:09.809909	1
12	4	Chop onions finely and put in a small bowl.	2021-10-29 08:35:30.441144	2021-11-04 08:43:09.812178	2
14	4	Put soy sauce, vinegar, dashi (japnese fish broth), mustard, ponzu, oilive oil into the bowl.	2021-10-29 08:50:53.277232	2021-11-04 08:43:09.814263	3
15	4	Add the natto and stir well. The longer you stirr, the slimier the natto gets, which is great!	2021-10-29 08:50:53.28377	2021-11-04 08:43:09.81621	4
6	2	Kürbis aushöhlen und in grobe Stücke schneiden	2021-10-27 06:25:48.634625	2021-11-04 08:43:09.823454	1
7	2	Olivenöl im Topf erhitzen und Kürbis mit Haut nach unten im Topf schichten	2021-10-27 06:33:40.161161	2021-11-04 08:43:09.825456	2
97	25	whisk egg york with other half of sugar until creamy	2021-12-24 10:06:29.720448	2021-12-24 10:06:29.720448	4
98	25	add mascarpone to the egg york cream and mix very carefully	2021-12-24 10:06:29.727219	2021-12-24 10:06:29.727219	5
99	25	add cream and mix carefully	2021-12-24 10:06:29.735139	2021-12-24 10:06:29.735139	6
100	25	add egg white and mix carefully	2021-12-24 10:06:29.74252	2021-12-24 10:06:29.74252	7
102	25	start with one layer of cream	2021-12-24 10:06:29.762473	2021-12-24 10:06:29.762473	9
104	25	repeat and finish with a layer of cream	2021-12-24 10:06:29.77704	2021-12-24 10:06:29.77704	11
105	25	garnish with cocoa powder	2021-12-24 10:06:29.783874	2021-12-24 10:08:39.909349	12
108	26	chop cabbage, onion, nira (or spring onion), garlic and ginger and add potato starch, mix well	2021-12-24 14:19:33.896816	2021-12-24 14:19:33.896816	2
30	10	Add pork into pot and fry until it breaks into small pieces. Fully cook through. Then take off the heat.	2021-11-02 14:17:57.189041	2021-11-04 08:43:09.858613	3
38	11	Heat olive oil in a pan	2021-11-03 16:55:41.309776	2021-11-04 08:43:09.877655	1
44	12	Mix all, shake well and toss over 🥗 	2021-11-04 10:36:05.725849	2021-11-04 11:45:00.689025	1
45	13	Add dashi and konbu to 1l of cold water and bring to cook	2021-11-04 16:14:10.738964	2021-11-04 16:27:20.496585	1
53	14	Cook in rice cooker, normal white rice program	2021-11-05 10:21:00.678505	2021-11-05 10:24:30.11111	1
56	17	Heat oil, add all spices and fry for 2min	2021-12-05 12:33:59.577844	2021-12-05 12:50:52.248727	1
65	18	Boil the eggs for approx. 10 minutes, rinse in cold water, peel and cut in half.	2021-12-08 09:19:51.894358	2021-12-08 09:38:48.093797	1
70	18	Use a blender or to chop and mix everything. Season to taste.	2021-12-08 11:32:22.57011	2021-12-08 11:32:22.57011	6
71	19	Soak hijiki in some hot water, for about 5mins.	2021-12-14 09:51:16.272429	2021-12-14 10:00:00.311148	1
73	19	Drain hijiki and fry in pan with previously heated sesame oil for 1min.	2021-12-14 10:00:00.32737	2021-12-14 10:00:00.32737	3
74	19	Add the mix from the glass and cook for 7-8min until almost all liquid is gone.	2021-12-14 10:00:00.33634	2021-12-14 10:00:00.33634	4
75	20	cut onion, garlic and chilies	2021-12-16 13:51:31.396321	2021-12-16 14:01:54.507141	1
81	21	half, peal amd slice avocado	2021-12-23 13:18:44.224907	2021-12-23 13:23:16.003706	1
85	22	add cut onion and 1 cut spring onion	2021-12-23 13:33:59.945226	2021-12-23 13:33:59.945226	2
86	22	remove sausage from skin and pull into small pieces and add	2021-12-23 13:33:59.952042	2021-12-23 13:33:59.952042	3
87	22	add salt, sugar, chili flakes, sesame oil, gochujang and dashi	2021-12-23 13:33:59.958316	2021-12-23 13:33:59.958316	4
88	22	add 500ml hot water and bring to boil	2021-12-23 13:33:59.964996	2021-12-23 13:33:59.964996	5
89	22	cook on medium heat for 10min	2021-12-23 13:33:59.971454	2021-12-23 13:33:59.971454	6
90	22	cut tofu in slices and add	2021-12-23 13:33:59.977835	2021-12-23 13:33:59.977835	7
91	22	cook for another 5min and garnish with cut spring onion and toasted sesame seeds	2021-12-23 13:33:59.983755	2021-12-23 13:33:59.983755	8
92	23	mix all in a mixer and enjoy the creamy smoothie 🥤	2021-12-23 13:37:27.666507	2021-12-23 13:44:19.376903	1
95	25	add half of sugar and continue whisking until silky/shiny	2021-12-24 10:06:29.706659	2021-12-24 10:06:29.706659	2
110	26	fill goyza dough with 1 tbsp of meat veggie mix 	2021-12-24 14:19:33.911463	2021-12-24 14:19:33.911463	4
111	26	add any vegetabele oil to cold pan and add goyza	2021-12-24 14:19:33.918293	2021-12-24 14:19:33.918293	5
113	26	add hot water until the gyoza are one third covered	2021-12-24 14:19:33.938244	2021-12-24 14:19:33.938244	7
115	26	add 1 tsp of sesame oil around the gyoza (along the pan edge)	2021-12-24 14:19:33.951874	2021-12-24 14:19:33.951874	9
116	26	put the gyoza on plate upside down	2021-12-24 14:19:33.959007	2021-12-24 14:19:33.959007	10
117	26	eat with soy sauce, vinegar and la-yu mix	2021-12-24 14:19:33.966553	2021-12-24 14:19:33.966553	11
109	26	mix meat and greens to a dough and let it rest in the fridge at least for 2-3h (or even better over night)	2021-12-24 14:19:33.904641	2021-12-24 14:23:22.089796	3
112	26	heat up and let the gyoza get gold brown	2021-12-24 14:19:33.924736	2021-12-24 14:24:35.435569	6
114	26	cover pan with lid and let the gyoza steam until water is almost gone (about 10min)	2021-12-24 14:19:33.944499	2021-12-30 19:06:24.525051	8
119	28	heat olive oil in pot	2022-01-05 13:38:26.90989	2022-01-05 13:46:17.667525	1
120	28	add cut garlic and onion	2022-01-05 13:46:17.672728	2022-01-05 13:46:17.672728	2
121	28	add lentils and fry for 2min (make sure it does not stick to the bottom of the pot)	2022-01-05 13:46:17.677447	2022-01-05 13:46:17.677447	3
122	28	add spices	2022-01-05 13:46:17.682958	2022-01-05 13:46:17.682958	4
123	28	add 1l of water and stock cubes	2022-01-05 13:46:17.688046	2022-01-05 13:46:17.688046	5
62	17	Cut cauliflower and add including leaves	2021-12-05 12:50:52.286285	2021-12-05 12:50:52.286285	7
4	1	After tofu is fried on both sides, add eggs to pan.	2021-10-26 12:43:39.598293	2021-11-04 08:43:09.788033	4
13	5	Chinakohl in ca 1.5 cm breite Steifen schneiden	2021-10-29 08:46:00.78389	2021-11-04 08:43:09.802354	3
8	2	Alle anderen Zutaten hinzufügen und aufkochen	2021-10-27 06:33:40.163576	2021-11-04 08:43:09.827415	3
9	2	10min auf mittlerer Hitze kochen danach abschalten und 20min ziehen lassen	2021-10-27 06:33:40.166011	2021-11-04 08:43:09.829318	4
10	2	En guete 😋	2021-10-27 06:33:40.168288	2021-11-04 08:43:09.831191	5
22	9	Boil 1l of water	2021-11-02 05:10:38.18004	2021-11-04 08:43:09.838494	1
23	9	Wash green leaves and blanch in boiling water	2021-11-02 07:24:08.27689	2021-11-04 08:43:09.840424	2
24	9	Drain green leaves and chill in cold water until the leaves are cooled down (abschrecken)	2021-11-02 07:24:08.280653	2021-11-04 08:43:09.842333	3
25	9	Drain leaves properly (squeeze with your hands)	2021-11-02 07:24:08.284275	2021-11-04 08:43:09.844201	4
26	9	Form a long sausage with you green leaves (squeezing) and then cut in 5cm pieces	2021-11-02 07:24:08.288296	2021-11-04 08:43:09.84606	5
27	9	Put on a small plate and season with soy sauce and lemon or lime juice or vinegar (or use Ponzu instead)	2021-11-02 07:24:08.291956	2021-11-04 08:43:09.84797	6
28	9	Enjoy your meal 😋	2021-11-02 07:24:08.295305	2021-11-04 08:43:09.849996	7
33	10	Add around 1 large tablespoon of the rice powder to the pork.	2021-11-02 14:39:46.193801	2021-11-04 08:43:09.861161	4
34	10	Add the chilli flakes, sugar, and the fish sauce.	2021-11-02 14:39:46.199235	2021-11-04 08:43:09.863543	5
35	10	Squeeze limes into the mix.	2021-11-02 14:39:46.210047	2021-11-04 08:43:09.865772	6
36	10	Finally, mince according to preference your herbs and also add into the mix.	2021-11-02 14:39:46.219344	2021-11-04 08:43:09.867888	7
37	10	Mix well and enjoy!	2021-11-02 14:39:46.228623	2021-11-04 08:43:09.870117	8
39	11	Add sticky rice and divid into pieces	2021-11-03 17:19:37.971272	2021-11-04 08:43:09.879926	2
40	11	Add garlic and ginger keep frying	2021-11-03 17:19:37.976011	2021-11-04 08:43:09.88195	3
41	11	Add sesame seeds, sesame oil and Aonori	2021-11-03 17:19:37.980889	2021-11-04 08:43:09.88408	4
42	11	Finally season with salt and fry until crispy	2021-11-03 17:19:37.985965	2021-11-04 08:43:09.886289	5
31	10	Take the uncooked sticky rice and fry it in a pan until gold-brown (ca. 10 - 15mins). Let it cool off. This will be used to give the dish an amazing crunch.	2021-11-02 14:39:46.18042	2021-11-02 17:48:53.452861	1
43	11	Dip into vinegar to eat, enjoy	2021-11-03 17:19:37.990354	2021-11-04 08:43:09.891744	6
57	17	Add chopped onion, garlic and chilis and fry for 3min	2021-12-05 12:50:52.2538	2021-12-05 12:54:46.882714	2
63	17	Cook for 30min	2021-12-05 12:50:52.291993	2022-02-04 15:06:04.236847	8
69	18	Cut the egg white into small cubes. Add 2/3 of egg white into the green sauce and garnish with the remaining egg white.	2021-12-08 09:38:48.125681	2021-12-08 09:38:48.125681	5
66	18	Remove the egg yolks and put them in a bowl.	2021-12-08 09:38:48.104302	2021-12-08 11:32:22.557128	2
67	18	Season the egg yolks with salt, pepper and mustard and stir. Stir in 100ml of oil, then 100g of sour cream. Finally stir in 100g of Schmand (fatty sour cream). If you don't have Schmand, you can also just use the same sour cream instead.	2021-12-08 09:38:48.111775	2021-12-08 11:32:22.562127	3
68	18	Wash the herbs and shake dry. Remove large stems. Chop the herbs and add to the bowl.	2021-12-08 09:38:48.119798	2021-12-08 11:32:22.566194	4
76	20	heat olive oil in pan and add onion, garlic and chilies and fry for 3 min	2021-12-16 14:01:54.51211	2021-12-16 14:01:54.51211	2
32	10	Take the toasted rice, put it in a mortar and turn it into powder. Put aside for later.	2021-11-02 14:39:46.186623	2021-11-02 17:48:57.777548	2
47	13	Add miso	2021-11-04 16:27:20.50536	2021-11-04 16:27:20.50536	3
48	13	Cut veggies, add and cook for 10 minutes on middle heat	2021-11-04 16:27:20.510846	2021-11-04 16:27:20.510846	4
49	13	Cut tofu and add	2021-11-04 16:27:20.514537	2021-11-04 16:27:20.514537	5
50	13	Drain shirataki and add	2021-11-04 16:27:20.518069	2021-11-04 16:27:20.518069	6
51	13	Add wakame	2021-11-04 16:27:20.521934	2021-11-04 16:27:20.521934	7
52	13	Garnish with seeds when serving the souo	2021-11-04 16:27:54.261653	2021-11-04 16:27:54.261653	8
46	13	Cut onion into half rings and garlic into slices and add	2021-11-04 16:27:20.500202	2021-11-04 16:40:57.91529	2
58	17	Add sugar and vinegar and fry for 1min	2021-12-05 12:50:52.260166	2021-12-05 12:50:52.260166	3
59	17	Add tomato puree and fry for 1min	2021-12-05 12:50:52.267263	2021-12-05 12:50:52.267263	4
60	17	Add pelati and 5dl water	2021-12-05 12:50:52.274274	2021-12-05 12:50:52.274274	5
61	17	Add veggie stock powder and soy sauce	2021-12-05 12:50:52.280512	2021-12-05 12:50:52.280512	6
77	20	add rice and fry for 5 min	2021-12-16 14:01:54.517832	2021-12-16 14:01:54.517832	3
78	20	add beans (do not drain them and add the liquid as well), pelati and 1dl water	2021-12-16 14:01:54.523262	2021-12-16 14:01:54.523262	4
79	20	season with salt, pepper, sugar, soy sauce and vinegar and cook for 10 min	2021-12-16 14:01:54.528761	2021-12-16 14:02:34.662719	5
80	20	add chopped coriander and serve with lime juice	2021-12-16 14:01:54.535025	2021-12-16 14:02:50.866147	6
82	21	cut spring onion and top over avocado	2021-12-23 13:22:53.493121	2021-12-23 13:22:53.493121	2
83	21	season with ponzu	2021-12-23 13:22:53.500782	2021-12-23 13:22:53.500782	3
84	22	cut kimchi and put with brine into a pan	2021-12-23 13:23:20.527738	2021-12-23 13:33:59.939887	1
94	25	whisk egg white with salt and lemon juice until stiff	2021-12-24 09:32:56.750776	2021-12-24 10:06:29.69817	1
107	26	flavor minced meat with soy sauce, sake, oyster sauce, salt and pepper	2021-12-24 14:04:18.440748	2021-12-24 14:19:33.88893	1
124	28	cook for 30min on medium heat	2022-01-05 13:46:17.692565	2022-01-05 13:46:17.692565	6
72	19	Put the 1.5dl of water into a glass and add to it dashi, soy sauce, sake and sugar. Mix well	2021-12-14 10:00:00.318259	2022-01-11 18:26:14.038323	2
125	28	blend and serve with lime juice and chives	2022-01-05 13:46:17.697118	2022-01-05 14:02:31.310162	7
127	29	Put all the other ingredients into a mixer and mix until one homogenous green sauce.	2022-01-12 16:47:04.186026	2022-01-12 16:47:04.186026	2
128	29	Add sauce to a portion of soba noodles ans enjoy 😊 	2022-01-12 16:47:04.191881	2022-01-12 16:47:04.191881	3
131	32	mix sugar, vinegar and salt in a bowl and add 300ml water	2022-01-15 18:40:31.67188	2022-01-15 18:47:32.211952	1
132	32	cut radish in small cubes and add	2022-01-15 18:47:32.215871	2022-01-15 18:47:32.215871	2
133	32	pickle in refigerator for at least 1 day and up to a month before serving	2022-01-15 18:47:32.220641	2022-01-15 18:47:32.220641	3
134	33	Half cabbage 🥬 by cutting a 5cm slit into the stem and rip apart the two halves. Then cut another 3cm slit into the halves‘ stems (so you can rip them apart again at a later step).	2022-01-16 09:43:06.249612	2022-01-16 10:19:57.776333	1
135	33	Wet all the 🥬 halves. 	2022-01-16 10:19:57.784602	2022-01-16 10:19:57.784602	2
136	33	Take the salt and distibute it thoroughly into all the cabbages.	2022-01-16 10:19:57.792283	2022-01-16 10:19:57.792283	3
137	33	Let them rest for 30mins. Then turn them over to distribute the salt water and rest another 30mins. Repeat this once more (3 x 30mins). While they rest, start with the next step.	2022-01-16 10:19:57.798897	2022-01-16 10:19:57.798897	4
138	33	Prepare the porridge 🥣: Put the 400ml water into pot and add rice flour. Bring to boil. Then add the sugar and cook for another 10mins on medium-low heat. Let it cool off.	2022-01-16 10:19:57.805597	2022-01-16 10:19:57.805597	5
139	33	Mix ginger, onions and garlic into a paste. Add fish sauce and soy sauce. Add all to cooled-off porridge.	2022-01-16 10:19:57.812186	2022-01-16 10:19:57.812186	6
140	33	Take the shripms and squeeze sauce into porride and finely chop them afterwards. Also add to porrige.	2022-01-16 10:19:57.82009	2022-01-16 10:19:57.82009	7
141	33	Add all the pepper flakes to porride and mix together.	2022-01-16 10:19:57.826856	2022-01-16 10:19:57.826856	8
142	33	Cut raddish and carrots into small sticks (as thin as possible)	2022-01-16 10:19:57.834411	2022-01-16 10:19:57.834411	9
143	33	Cut chives and spring onions into small pieces. 	2022-01-16 10:19:57.842351	2022-01-16 10:19:57.842351	10
144	33	Mix veggies with porridge in a large bowl.	2022-01-16 10:19:57.848706	2022-01-16 10:19:57.848706	11
145	33	Rinse cabbage very well to remove all excess salt.  While you do this, rip them apart again into quarters. Wash and drain carefully. The should be as dry as possible (give them a good squeeze).	2022-01-16 10:19:57.855284	2022-01-16 10:19:57.855284	12
146	33	Fill the 🥬 quarters with the paste and make sure it‘s evenly distributed.	2022-01-16 10:19:57.879589	2022-01-16 10:19:57.879589	13
147	33	Fold the filled 🥬 quarters and put them into a clay pot (you can also use another container such as tupper or glass jar). As you fill the pot, press cabbages down to remove air pockets.	2022-01-16 10:19:57.911502	2022-01-16 10:19:57.911502	14
148	33	Let the fresh kimchi rest at room temperature for two days. Then start cooling the kimchi. In autumn/winter, just leave outside. In summer/spring you may want to put it in a cellar or fridge (but beware of the smell 👃).	2022-01-16 10:19:57.933352	2022-01-16 10:19:57.933352	15
149	34	Remove green stems / cores from each garlic 🧄 clove	2022-01-22 13:26:21.802862	2022-01-22 13:43:12.969738	1
154	34	Rinse pasta and put it back immediately into the pot. Add the sauce and the cut parsley leaves to the pot.	2022-01-22 13:43:12.994692	2022-01-22 13:43:12.994692	6
155	34	Important: Now vigorously stir and mix the pasta until a nice slimy sauce of pasta starch and the oily sauce emerges.	2022-01-22 13:43:12.999299	2022-01-22 13:43:12.999299	7
150	34	Put all the cloves 🧄 into a small pot with cold water 💧 (just enogh to cover them in water) and then bring to a boil. Once it‘s boiling, rinse the water and replace with cold water. Repeat 2 times.	2022-01-22 13:43:12.974033	2022-01-22 13:48:54.381608	2
151	34	Put oil 🫒 and water 💧 into a container. Add the stems of parsely 🍃. Add the cayenne pepper powder 🌶. Add the cooked garlic cloves 🧄. Mix all with blender to a homogenous sauce.	2022-01-22 13:43:12.979173	2022-01-22 13:48:54.385474	3
152	34	Take the parsley leaves 🍃 and cut them very finely.	2022-01-22 13:43:12.984508	2022-01-22 13:48:54.388909	4
153	34	Meanwhile, cook the pasta 🍝  in water until al dente.	2022-01-22 13:43:12.99011	2022-01-22 13:48:54.392356	5
156	34	Serve pasta. Add some salt 🧂 and / or parmesan cheese 🧀 if desired.	2022-01-22 13:43:13.01673	2022-01-22 13:48:54.39555	8
64	17	Garnish with cut cilantro, cut spring onion, cut chilis, lemon juice and yogurt	2021-12-05 12:50:52.297414	2022-02-04 15:05:53.455086	10
158	17	Add cut tomatos and let it rest for 10min	2022-02-04 15:06:04.241015	2022-02-04 15:06:04.241015	11
159	36	Beeren mit 1/2 Pack Vanillezucker und 1 TL Zucker kurz aufkochen und auskühlen lassen	2022-02-04 20:20:16.033739	2022-02-04 20:26:55.321432	1
160	36	Rahm halbsteif schlagen	2022-02-04 20:26:55.327037	2022-02-04 20:26:55.327037	2
162	36	Rahm darunterziehen	2022-02-04 20:26:55.339902	2022-02-04 20:26:55.339902	4
163	36	Butterkekse zerbröseln	2022-02-04 20:26:55.346105	2022-02-04 20:26:55.346105	5
164	36	Quarkcrème, Beeren und Butterkekse schichten und kühlstellen	2022-02-04 20:26:55.352259	2022-02-04 20:26:55.352259	6
197	65	Beat the egg whites with the salt and fold into the mixture.	2022-03-16 16:10:44.195088	2022-03-16 16:10:44.195088	3
126	29	Cook the soba noodles according to instructions and cool off with cold water afterwards.	2022-01-12 16:38:52.990296	2022-02-11 17:53:30.069136	1
161	36	Magerquark mit 1/2 Pack Vanillezucker, 2 TL Zucker, Zitronenzeste von 1/2 Zitrone, Saft der ganze Zitronen und Salz cremig rühren	2022-02-04 20:26:55.333448	2022-02-24 11:07:41.500277	3
195	65	Beat the sugar, egg yolk and water in a bowl with a hand whisk for about 5 minutes until fluffy.	2022-03-16 15:57:10.141799	2022-03-16 16:10:44.171643	1
196	65	Mix the carrots and all the ingredients up to and including the gin into the mixture. mix in the flour and baking powder.\r\n	2022-03-16 16:10:44.17829	2022-03-16 16:10:44.17829	2
198	65	Bake for 45 minutes in a preheated oven at 180 degrees (top and bottom heat) on the middle shelf.	2022-03-16 16:10:44.221316	2022-03-16 16:10:44.221316	4
199	65	Cool, remove carefully and don't forget to decorate.	2022-03-16 16:10:44.24322	2022-03-16 16:10:44.24322	5
205	69	preheat oven to 180 degrees	2022-04-03 18:29:31.169813	2022-04-03 18:29:31.169813	2
204	69	cut aubergines in 1.5cm slices	2022-04-03 18:01:01.369043	2022-04-03 18:29:31.180288	1
206	69	salt on both sides and place on paper towel	2022-04-03 18:29:31.18526	2022-04-03 18:29:31.18526	3
207	69	cover with paper towel and weight down with chopping board	2022-04-03 18:29:31.192133	2022-04-03 18:29:31.192133	4
208	69	leave for 30min	2022-04-03 18:29:31.198564	2022-04-03 18:29:31.198564	5
209	69	cut potatoes in 1cm slices	2022-04-03 18:29:31.205351	2022-04-03 18:29:31.205351	6
211	69	back potatoes in oven for 15min	2022-04-03 18:29:31.216533	2022-04-03 18:29:31.216533	8
212	69	after 30min spread some olive oil over aubergines	2022-04-03 18:29:31.222399	2022-04-03 18:29:31.222399	9
213	69	back aubergines in oven for 15min	2022-04-03 18:29:31.227699	2022-04-03 18:29:31.227699	10
214	69	for the tomato sauce: heat olive oil in a pan	2022-04-03 18:29:31.233176	2022-04-03 18:29:31.233176	11
215	69	add chopped onion and pressed garlic and fry for 5min	2022-04-03 18:29:31.243624	2022-04-03 18:29:31.243624	12
216	69	add salt, pepper, sugar and vinegar and fry for 1min	2022-04-03 18:29:31.249805	2022-04-03 18:29:31.249805	13
217	69	add tomato purée and fry for 1min	2022-04-03 18:29:31.256214	2022-04-03 18:29:31.256214	14
218	69	add pelati, 400ml water and can of beans (incl. liquid)	2022-04-03 18:29:31.261689	2022-04-03 18:29:31.261689	15
219	69	add veggie stock cube, oregano and cinnamon	2022-04-03 18:29:31.267565	2022-04-03 18:29:31.267565	16
220	69	cook for 15min	2022-04-03 18:29:31.273243	2022-04-03 18:29:31.273243	17
221	69	for the bechamel sauce: add butter, flour and milk to a separate pan and bring to cook (stir well)	2022-04-03 18:29:31.279412	2022-04-03 18:29:31.279412	18
222	69	let it cool down a bit	2022-04-03 18:29:31.285371	2022-04-03 18:29:31.285371	19
224	69	now layer all starting with aubergine and potatoes, add tomato sauce and then the bechamel sauce, repeat twice and finish with bechamel sauce	2022-04-03 18:29:31.297322	2022-04-03 18:29:31.297322	21
225	69	sprinkle with remaining 25g pecorino	2022-04-03 18:29:31.302956	2022-04-03 18:29:31.302956	22
226	69	back in oven for ca. 40min	2022-04-03 18:29:31.308433	2022-04-03 18:29:31.308433	23
227	69	let it rest for 10min before serving	2022-04-03 18:29:31.314207	2022-04-03 18:29:31.314207	24
228	69	enjoy!! 🙂	2022-04-03 18:29:31.320156	2022-04-03 18:29:31.320156	25
223	69	add eggs, 50g of pecorino, salt, pepper and mix well	2022-04-03 18:29:31.291561	2022-04-03 18:31:18.284222	20
210	69	sprinkle with some olive oil and salt	2022-04-03 18:29:31.211027	2022-04-03 18:32:45.526624	7
229	70	add all ingredients into pan	2022-04-03 18:33:06.587659	2022-04-03 18:39:48.049057	1
230	70	while stirring with an egg whisk bring almost to boil	2022-04-03 18:39:48.055111	2022-04-03 18:39:48.055111	2
231	70	take away from heat and keep stirring for another 1-2min	2022-04-03 18:39:48.061118	2022-04-03 18:39:48.061118	3
232	71	Put all the dry stuff into a bowl (flour, sugar, baking powder, salt) and mix well	2022-07-04 18:51:30.38524	2022-07-04 19:01:26.042939	1
233	71	Add the egg and the milk	2022-07-04 19:01:26.049917	2022-07-04 19:01:26.049917	2
234	71	Melt the butter and add as well	2022-07-04 19:01:26.057574	2022-07-04 19:01:26.057574	3
235	71	Take a small soup spoon of dough and pour it into a preheated, only slightly-greased non-stick pan	2022-07-04 19:01:26.065857	2022-07-04 19:01:26.065857	4
236	71	Give is enough time on medium heat (don’t touch it) before turning it around and frying the other side	2022-07-04 19:01:26.072119	2022-07-04 19:01:26.072119	5
237	71	Enjoy your pancakes with some butter and maple 🍁/ palm🌴 syrup 	2022-07-04 19:01:26.077472	2022-07-04 19:01:26.077472	6
238	72	Gently heat milk to lukewarm, add yeast and 1 tbsp sugar and mix until the yeast is fully dissolved (mix should never boil, the yeast would die)	2022-08-16 20:15:19.239604	2022-08-16 20:38:10.932606	1
239	72	Add flour, 1 tbsp sugar, salt, butter and eggs to bowl and mix with a hand mixer	2022-08-16 20:38:10.93696	2022-08-16 20:38:10.93696	2
242	72	Divide dough into 8 pieces, form discs, fill them with each 1 tsp plum jam and form round dumplings. Let them rest for 15min.	2022-08-16 20:38:10.951279	2022-08-16 20:38:10.951279	5
243	72	Steam dumplings for 12-15min	2022-08-16 20:38:10.955438	2022-08-16 20:38:10.955438	6
244	72	Grind sugar and poppy seeds in a mortar	2022-08-16 20:38:10.959972	2022-08-16 20:38:10.959972	7
240	72	Add milk yeast mix little by little to bowl and keep mixing until smooth dough forms	2022-08-16 20:38:10.941835	2022-08-16 20:40:31.008717	3
241	72	Form the dough into a ball on a flour dusted surface and let the dough rise in the bowl covered with a kitchen towel at a warm place (ca. 1h) until the dough volume is doubled	2022-08-16 20:38:10.946314	2022-08-16 20:40:31.011824	4
245	72	Serve dumplings with vanilla sauce and poppy seeds sugar mix	2022-08-16 20:38:10.964644	2022-08-16 20:40:31.014698	8
246	73	Mix all ingredients except for the cornstarch in a pan and let it simmer for 10min	2022-11-10 17:29:22.312415	2022-11-10 17:38:56.638242	1
248	73	The teriyaki sauce is ready to use (warm) or fill into a glass and let it cool down to get the jelly	2022-11-10 17:38:56.645098	2022-11-10 17:38:56.645098	3
249	73	Use as a dip or use to cook (tofu, meat, veggies or whatever makes you happy 😊)	2022-11-10 17:38:56.64862	2022-11-10 17:38:56.64862	4
247	73	Add cornstarch (dissolved in cold water) and bring to cook to thinken the sauce, cook for another 2min	2022-11-10 17:38:56.64152	2022-11-10 17:39:52.890226	2
252	76	Bake pumpkin in oven until it’s tender	2022-11-28 17:11:38.813829	2022-11-28 19:40:12.448455	1
253	76	Cook garlic cloves in water for 5min	2022-11-28 17:20:07.305356	2022-11-28 17:20:07.305356	2
255	76	Cook pasta in salt water until they are al denta	2022-11-28 17:20:07.457142	2022-11-28 17:20:07.457142	4
257	76	Add chopped parsley leaves	2022-11-28 17:20:07.540001	2022-11-28 17:20:07.540001	6
258	76	Serve with parmesan and roasted pumpkin seeds	2022-11-28 17:20:07.564468	2022-11-28 17:20:07.564468	7
260	77	Preheat oven to 180 degrees	2022-11-28 19:37:14.098314	2022-11-28 19:37:14.098314	2
259	77	Mix vanilla pudding powder and cream	2022-11-28 19:21:13.119074	2022-11-28 19:37:14.117378	1
261	77	Add pumpkin puree and mix well	2022-11-28 19:37:14.123765	2022-11-28 19:37:14.123765	3
262	77	In a separate bowl, mix eggs, sugar and salt with a handheld electrix mixer until it’s fluffy	2022-11-28 19:37:14.134818	2022-11-28 19:37:14.134818	4
263	77	Mix remaining spices, pumpkin pudding mix and egg sugar mix together (no need to use the mixer)	2022-11-28 19:37:14.150625	2022-11-28 19:37:14.150625	5
264	77	Put shortpastry into a cake pan (either us baking paper or butter to make the pie not sticking to the pan)	2022-11-28 19:37:14.16104	2022-11-28 19:37:14.16104	6
265	77	Put pumpkin mix into shortpastry	2022-11-28 19:37:14.173292	2022-11-28 19:37:14.173292	7
266	77	Bake the pie in the middle of the oven for ca. 50min	2022-11-28 19:37:14.186352	2022-11-28 19:37:14.186352	8
267	77	Serve with whipped cream and/or vanilla ice cream	2022-11-28 19:37:14.2016	2022-11-28 19:37:14.2016	9
256	76	Bring together pasta, pasta water and pumpkin mix in a pan (it should me a creamy mix)	2022-11-28 17:20:07.502659	2022-11-28 19:40:12.469883	5
268	78	Chop onion, garlic and chili	2022-12-20 18:38:05.440053	2022-12-20 21:15:19.972416	1
269	78	Heat olive oil in a pan and add onion, garlic and chili and fry for 3 minuea	2022-12-20 21:15:19.978542	2022-12-20 21:15:19.978542	2
270	78	Season with soy sauce, vinegar and pepper	2022-12-20 21:15:19.991323	2022-12-20 21:15:19.991323	3
271	78	Add mustard, the liquid of the chickpeas and a half a cup of water (and cream if you want)	2022-12-20 21:15:20.000265	2022-12-20 21:17:15.047005	4
254	76	Mix baked pumpkin, olive oil, parsley stems, chili and garlic with a blender and mix well (add water if the mix is too thick to blend), season with pepper\r\n\r\n(If the pasta water is salty enough you don’t need to season the pumpkin mix with extra salt)	2022-11-28 17:20:07.427549	2023-01-29 17:55:58.663826	3
272	78	Cut kale into stripes, add to pan, close pan with a lid and let it cook for 10 minutes (mix after 5 minutes)	2022-12-20 21:15:20.008057	2022-12-20 21:17:15.067485	5
310	84	Add 5dl milk and bake in the oven for 15min	2023-01-14 14:09:43.757085	2023-01-14 14:10:31.670905	6
274	80	Half cauliflower and rip into small bite-sized peaces	2023-01-02 17:08:34.001571	2023-01-02 17:30:55.574945	1
275	80	Grind cumin and coriander seeds	2023-01-02 17:30:55.5853	2023-01-02 17:30:55.5853	2
276	80	Mix all ingredients and ground seeds into a paste	2023-01-02 17:30:55.599028	2023-01-02 17:30:55.599028	3
277	80	Mix paste and cauliflower peaces together	2023-01-02 17:30:55.609299	2023-01-02 17:30:55.609299	4
278	80	Distribute cauliflower on a baking tray and bake for 20mins at around 200C	2023-01-02 17:30:55.620557	2023-01-02 17:30:55.620557	5
280	81	Cook ramen, keep some starchy water	2023-01-08 15:05:36.680059	2023-01-08 15:05:36.680059	1
297	83	Whisk the cream cheese for 2-3min until it‘s creamy	2023-01-14 13:57:02.685437	2023-01-15 19:27:38.712078	8
312	85	Cut onions into strips	2023-01-29 17:50:07.169785	2023-01-29 18:54:15.081846	1
281	81	Throw in your bowl;\r\n- pressed garlic\r\n- grated ginger\r\n- 1 tbsp chilli\r\n- chopped spring onions\r\n\r\nHeat oil and sizzle over.	2023-01-08 15:05:36.697407	2023-01-09 15:44:55.140589	2
282	81	Add;\r\n- 3 tbsp light soy sauce\r\n- 1 tbsp hoisin sauce\r\n- 1.5 tbsp rice vinegar\r\n- 2 tbsp sesame paste\r\n- 1 tbsp peanut butter \r\n\r\nStir. Add more starchy water, stir more, until creamy as fuck.\r\nTop with chilli, fresh coriander and most importantly fried garlic and garlic oil (yes, thats a staple!). Slice of lime on the side!\r\nBHOOM!	2023-01-08 15:05:36.709224	2023-01-09 15:44:55.149984	3
283	82	Cut kohlrabi very thinly (or use slicer) and then cut in stripes	2023-01-14 13:19:05.160278	2023-01-14 13:30:23.54662	1
284	82	Cut spring onion in slices	2023-01-14 13:30:23.559768	2023-01-14 13:30:23.559768	2
285	82	Chop dill	2023-01-14 13:30:23.57639	2023-01-14 13:30:23.57639	3
286	82	Add all ingredients into a bowl	2023-01-14 13:30:23.590528	2023-01-14 13:30:23.590528	4
287	82	Add dried cassis and washed beans	2023-01-14 13:30:23.605755	2023-01-14 13:30:23.605755	5
289	82	Serve with roasted seeds	2023-01-14 13:30:23.631628	2023-01-14 13:30:23.631628	7
288	82	Season with crushed garlic, lemon zest, lemon juice, olive oil, salt and pepper	2023-01-14 13:30:23.618728	2023-01-14 13:32:11.127667	6
291	83	Preheat oven to 175 degrees celsius	2023-01-14 13:57:02.600822	2023-01-14 13:57:02.600822	2
292	83	Butter a cake pan	2023-01-14 13:57:02.617338	2023-01-14 13:57:02.617338	3
290	83	Crush cookies into very small pieces 	2023-01-14 13:32:33.457388	2023-01-14 13:57:02.628613	1
293	83	Mix cookies with a pinch of salt and melted butter	2023-01-14 13:57:02.637098	2023-01-14 13:57:02.637098	4
294	83	Put the mix into the cake pan and press into the pan using something flat like a jar	2023-01-14 13:57:02.647846	2023-01-14 13:57:02.647846	5
295	83	Bake for 15min, then take it out and let it cool off a bit	2023-01-14 13:57:02.662404	2023-01-14 13:57:02.662404	6
296	83	While waiting prepare the filling	2023-01-14 13:57:02.673134	2023-01-14 13:57:02.673134	7
298	83	Add sugar, vanilla sugar, vanilla pulp from the vanilla pod, lemon juice, lemon zest and crème fraîche and mix well	2023-01-14 13:57:02.700255	2023-01-14 13:57:02.700255	9
299	83	Beat the eggs separately in another bowl	2023-01-14 13:57:02.713569	2023-01-14 13:57:02.713569	10
301	83	Add filling to the cake pan	2023-01-14 13:57:02.739989	2023-01-14 13:57:02.739989	12
302	83	Bake for 45min and add an oven-safe pan filled with water into the oven (so the cake doesn‘t dry out and/or get too much colour)	2023-01-14 13:57:02.75933	2023-01-14 13:57:02.75933	13
303	83	When you take out the cake the middle still needs to be jiggely	2023-01-14 13:57:02.772391	2023-01-14 13:57:02.772391	14
304	83	Add flour and mix well	2023-01-14 14:02:05.533276	2023-01-14 14:02:05.533276	15
300	83	Carefully mix the eggs with the other ingredients	2023-01-14 13:57:02.72459	2023-01-14 14:02:05.546	11
313	85	Put onions into a pan, add dashi (optional or use 1dl water instead), soy sauce, mirin and sugar and cook for 5min	2023-01-29 18:06:15.565622	2023-01-29 18:54:15.091229	2
307	84	Chop garlic	2023-01-14 14:09:43.71823	2023-01-14 14:09:43.71823	3
308	84	Butter an oven-safe pan	2023-01-14 14:09:43.73063	2023-01-14 14:09:43.73063	4
309	84	Layer the potatoes and garlic, salt and pepper every layer, start and end the layers with potatoes	2023-01-14 14:09:43.743083	2023-01-14 14:09:43.743083	5
311	84	Sprinkle parmesan on top and bake for another 30-40min	2023-01-14 14:09:43.768409	2023-01-14 14:09:43.768409	7
315	85	In the meanwhile, break eggs into a bowl and “cut” the egg white with chopsticks and poke the egg yorks. Mix gently so you still see egg yoke and egg white mostly separated (it should not be mixed like for an omelette)	2023-01-29 18:51:35.465992	2023-01-29 18:54:15.100224	4
305	84	Slice potatoes into very thin slices using a slicer	2023-01-14 14:02:16.454887	2023-01-14 14:10:02.836102	2
306	84	Preheat oven to 200 degrees celsius	2023-01-14 14:09:43.694055	2023-01-14 14:10:02.839847	1
318	85	Serve on bowl with rice 🍚 and garnish with cut spring onions and sesame oil (and shichimi and sansho pepper - optional)	2023-01-29 18:51:35.505607	2023-01-29 18:54:54.908086	7
314	85	Cut tofu into pieces (ca. 1.5x1.5cm), add and cook for another 5min	2023-01-29 18:51:35.452285	2023-01-29 18:51:35.452285	3
322	87	Chop onions finely and sweat for 2 - 3 minutes in tuna oil	2023-06-29 15:12:09.484287	2023-06-29 15:53:57.891183	2
316	85	Add 2/3 of eggs into pan (try to get more of the egg white in since they need a bit longer to cook) and gently cook until the eggs start to clot	2023-01-29 18:51:35.476149	2023-01-29 18:54:15.111724	5
317	85	Add the rest of the eggs and cook until the eggs are almost done (you can decide how runny the eggs should be)	2023-01-29 18:51:35.494503	2023-01-29 18:54:15.120314	6
319	86	Drain canned white beans but keep the liquid	2023-06-25 19:18:43.080954	2023-06-26 04:26:49.338104	1
320	86	Add all ingredients into blender (or add to bowl and us hand blender)	2023-06-26 04:26:49.344194	2023-06-26 04:26:49.344194	2
321	86	Add back some of the liquid and mix until creamy (I usually use almost all liquid but a little bit is always left so the hummus is not too runny)	2023-06-26 04:26:49.350517	2023-06-26 04:26:49.350517	3
324	87	Sear for 2 - 3 minutes	2023-06-29 15:38:32.36522	2023-06-29 15:54:14.691217	4
323	87	Put pasta in water with plenty of salt.	2023-06-29 15:38:32.350395	2023-06-29 15:38:48.187107	1
325	87	Deglaze with white wine and simmer for another 2 - 3 min	2023-06-29 15:38:32.369717	2023-06-29 15:54:11.184161	5
326	87	Add the sourcream and then finally add some of the pasta water taken from the almost-cooked pasta.	2023-06-29 15:38:32.374603	2023-06-29 15:54:11.184161	6
327	87	Chop garlic and olives finely and put all in a pot with kapers and thyme	2023-06-29 15:53:57.89755	2023-06-29 15:54:14.692426	3
101	25	mix espresso with Cointreau 🥃 and orange juice 🍊 and let it cool down	2021-12-24 10:06:29.753768	2023-07-02 14:44:23.192163	8
103	25	dip Löffelbiscuits in espresso mix (don’t let them soak too much) and add as next layer	2021-12-24 10:06:29.769976	2023-07-02 14:44:23.19794	10
106	25	let it rest in the fridge for at least 2h (the fresher the fluffier)	2021-12-24 10:06:29.79112	2023-07-02 14:44:23.202093	13
330	92	Butter „nussig“ schmelzä	2023-09-05 20:21:12.919071	2023-09-05 20:21:12.919071	1
331	92	Chnobli fiin schiblä, Salbei fiin hackä	2023-09-05 20:22:11.10464	2023-09-05 20:22:11.10464	2
333	92	Salbei & Chnobli 2’ in Butter	2023-09-05 20:23:19.824818	2023-09-05 20:23:55.125451	4
332	92	Wasser chochä - Nudlä ine	2023-09-05 20:22:41.154584	2023-09-05 20:24:24.148966	3
334	92	Nudle zum Salbei und Gräm fraiche dezue. Umerüähre. 	2023-09-05 20:25:20.215607	2023-09-05 20:25:20.215607	5
335	92	Abschmöcke.\nBHOOM - Fertig 👩🏽‍🍳🧑🏽‍🍳	2023-09-05 20:26:28.492968	2023-09-05 20:26:28.492968	6
336	93	Cook bean for 7mins in some water. Once cooked, keep 100ml of the water.	2023-09-12 16:12:54.159547	2023-09-12 16:12:54.159547	1
337	93	Chop garlic cloves and fry briefly in some cooking oil.	2023-09-12 16:13:31.109997	2023-09-12 16:13:31.109997	2
338	93	Add the cooked beans to garlic, as well as put-aside bean water	2023-09-12 16:13:44.016936	2023-09-12 16:14:07.979359	3
339	93	Add soy sauce and chopped onions to pan	2023-09-12 16:14:53.708961	2023-09-12 16:14:53.708961	4
340	93	Keep cooking and stirring until water in boiled down	2023-09-12 16:15:23.909376	2023-09-12 16:15:23.909376	5
341	93	Add the sesame oil	2023-09-12 16:15:53.113564	2023-09-12 16:15:53.113564	6
342	93	Enjoy!	2023-09-12 16:15:59.997056	2023-09-12 16:15:59.997056	7
343	94	Melt butter in pan	2023-11-14 10:05:38.004095	2023-11-14 10:05:38.004095	1
344	94	Put sugar and yeast into a cup and mix until liquid	2023-11-14 10:06:07.764108	2023-11-14 10:08:59.937457	2
345	94	Mix together butter, yeast and all other ingredients and knead well	2023-11-14 10:08:56.153656	2023-11-14 10:09:37.386975	3
346	94	Let dough rest for about 1h, ideally put a wet cloth over the dough and put in over at 50C.	2023-11-14 10:10:09.180798	2023-11-14 10:10:09.180798	4
347	94	Spread dough on baking tray (not too big so that bread will also have some volume) and bake for approx 30min at 170C.	2023-11-14 10:11:28.62786	2023-11-14 10:11:28.62786	5
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.likes (id, user_id, recipe_id, created_at, updated_at) FROM stdin;
1	1	17	2021-12-09 13:08:40.510426	2021-12-09 13:08:40.510426
3	1	13	2021-12-09 15:15:20.565991	2021-12-09 15:15:20.565991
4	1	2	2021-12-09 20:01:21.245488	2021-12-09 20:01:21.245488
6	1	28	2022-01-05 14:25:18.789543	2022-01-05 14:25:18.789543
7	1	32	2022-01-23 09:00:21.917223	2022-01-23 09:00:21.917223
8	1	22	2022-01-23 09:00:40.021687	2022-01-23 09:00:40.021687
9	1	20	2022-01-23 09:00:53.73913	2022-01-23 09:00:53.73913
14	1	26	2022-02-14 10:41:47.015602	2022-02-14 10:41:47.015602
16	2	20	2022-02-26 07:53:13.041979	2022-02-26 07:53:13.041979
17	2	34	2022-02-26 07:53:27.575746	2022-02-26 07:53:27.575746
18	2	33	2022-02-26 07:53:29.29574	2022-02-26 07:53:29.29574
19	2	29	2022-02-26 07:53:31.747279	2022-02-26 07:53:31.747279
20	2	2	2022-02-26 07:55:21.660155	2022-02-26 07:55:21.660155
22	2	65	2022-03-22 08:17:48.327684	2022-03-22 08:17:48.327684
24	1	69	2022-07-04 19:03:41.912737	2022-07-04 19:03:41.912737
25	1	5	2022-09-03 11:34:43.216849	2022-09-03 11:34:43.216849
26	1	76	2022-12-06 09:02:11.542264	2022-12-06 09:02:11.542264
27	1	81	2023-01-09 16:12:39.797706	2023-01-09 16:12:39.797706
28	2	81	2023-01-14 13:18:38.632283	2023-01-14 13:18:38.632283
29	1	82	2023-01-26 09:54:17.270606	2023-01-26 09:54:17.270606
30	1	86	2023-06-29 17:51:49.975055	2023-06-29 17:51:49.975055
\.


--
-- Data for Name: pg_search_documents; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.pg_search_documents (id, content, searchable_type, searchable_id, created_at, updated_at) FROM stdin;
1	Miso soup à la Naomi This is a miso soup adapted to my taste and can be enriched with whatever veggies you have at home. Hearty winter dish 🍲	Recipe	13	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
2	Roggen al dente Andy style Perfect rice substitute: Rye in rice cooker	Recipe	14	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
1294	MatthewBiozy MatthewBiozy	User	411	2023-09-01 14:11:41.271742	2023-09-01 14:11:41.271742
4	Fried Tofu with egg This recipe is amazing for a quick fix when you don't have a lot of time but still need something tasty and healthy. Always got some tofu and egg in my fridge.	Recipe	1	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
5	Eingelegter Chinakohl  Knackig lecker eingelegter Chinakohl perfekt zu Reis oder einfach als Vorspeise (Otsumami)	Recipe	5	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
1329	BobZen BobZen	User	419	2023-09-14 12:40:16.350801	2023-09-14 12:40:16.350801
7	Natto umami explosion If you‘re looking for a crazy umami explosion, this is the recipe. Eat this with a cup of rice and you have a fantastic meal!	Recipe	4	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
1340	TimQuize TimQuize	User	430	2023-09-29 16:38:03.948875	2023-09-29 16:38:03.948875
1350	IlonaMip IlonaMip	User	440	2023-10-06 01:34:00.885631	2023-10-06 01:34:00.885631
10	Kabocha Kürbis Japanischer Kürbis à la Naomi	Recipe	2	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
11	Green leaves dish 🍃 against food waste You can use any sort of green leaves for this recipe from spinach to beetroot leaves to radish leaves, whatever is flying around in your fridge and usually ends up in your compost	Recipe	9	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
12	Thai Larb Mu I'm absolutely in love with this dish. Amazing combination of flavours and ingredients. It's a salad made from meat. Minced pork is seasoned with fish sauce, chili flakes, lime juice, toasted sticky rice and some beautiful herbs to round it off.	Recipe	10	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
13	Sticky rice 🍚 what to do with leftovers Made too much rice and don’t know what to do with it? 🤔 use the leftovers and try this easy and delicious dish	Recipe	11	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
14	Naomi’s secret salad sauce 😋 If you ever had a salad at our place and you were wondering about the salad sauce.. here’s the secret! 🤓	Recipe	12	2021-12-02 14:53:52.522486	2021-12-02 14:53:52.522486
15	Test User	User	8	2021-12-02 14:53:52.533629	2021-12-02 14:53:52.533629
16	Test User	User	9	2021-12-02 14:53:52.533629	2021-12-02 14:53:52.533629
17	Stephen Schüz	User	1	2021-12-02 14:53:52.533629	2021-12-02 14:53:52.533629
18	Naomi Caduff	User	2	2021-12-02 14:53:52.533629	2021-12-02 14:53:52.533629
19	Inou Ridder	User	10	2021-12-02 14:53:52.533629	2021-12-02 14:53:52.533629
20	Cut tofu into 1cm thick cubes.	Instruction	1	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
21	Fry tofu in some veggy oil for ca. 3mins each side. Use non-stick pan, if possible.	Instruction	2	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
22	Put eggs in a bowl and add the green onions and the soy sauce. Mix well.	Instruction	3	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
23	Cook until egg is done. Finish.	Instruction	5	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
24	Chinakohlstreifen in einer grossen Schüssel salzen und leicht einkneten	Instruction	17	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
25	Restliche Zutaten hinzufügen, mischen und mindestens 30min ziehen lassen	Instruction	18	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
26	Let it rest for 30mins and enjoy!!	Instruction	16	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
27	Chop onions finely and put in a small bowl.	Instruction	12	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
28	Put soy sauce, vinegar, dashi (japnese fish broth), mustard, ponzu, oilive oil into the bowl.	Instruction	14	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
29	Add the natto and stir well. The longer you stirr, the slimier the natto gets, which is great!	Instruction	15	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
30	Kürbis aushöhlen und in grobe Stücke schneiden	Instruction	6	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
31	Olivenöl im Topf erhitzen und Kürbis mit Haut nach unten im Topf schichten	Instruction	7	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
32	Add pork into pot and fry until it breaks into small pieces. Fully cook through. Then take off the heat.	Instruction	30	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
33	Heat olive oil in a pan	Instruction	38	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
34	Mix all, shake well and toss over 🥗 	Instruction	44	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
35	Add dashi and konbu to 1l of cold water and bring to cook	Instruction	45	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
36	Cook in rice cooker, normal white rice program	Instruction	53	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
38	After tofu is fried on both sides, add eggs to pan.	Instruction	4	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
39	Chinakohl in ca 1.5 cm breite Steifen schneiden	Instruction	13	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
40	Alle anderen Zutaten hinzufügen und aufkochen	Instruction	8	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
41	10min auf mittlerer Hitze kochen danach abschalten und 20min ziehen lassen	Instruction	9	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
42	En guete 😋	Instruction	10	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
43	Boil 1l of water	Instruction	22	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
44	Wash green leaves and blanch in boiling water	Instruction	23	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
45	Drain green leaves and chill in cold water until the leaves are cooled down (abschrecken)	Instruction	24	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
46	Drain leaves properly (squeeze with your hands)	Instruction	25	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
47	Form a long sausage with you green leaves (squeezing) and then cut in 5cm pieces	Instruction	26	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
48	Put on a small plate and season with soy sauce and lemon or lime juice or vinegar (or use Ponzu instead)	Instruction	27	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
49	Enjoy your meal 😋	Instruction	28	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
50	Add around 1 large tablespoon of the rice powder to the pork.	Instruction	33	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
51	Add the chilli flakes, sugar, and the fish sauce.	Instruction	34	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
52	Squeeze limes into the mix.	Instruction	35	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
53	Finally, mince according to preference your herbs and also add into the mix.	Instruction	36	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
54	Mix well and enjoy!	Instruction	37	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
55	Add sticky rice and divid into pieces	Instruction	39	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
56	Add garlic and ginger keep frying	Instruction	40	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
57	Add sesame seeds, sesame oil and Aonori	Instruction	41	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
58	Finally season with salt and fry until crispy	Instruction	42	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
139	1 kleine Prise Zucker	Ingredient	24	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
140	1TL Dashi (japanische Fischbrühe)	Ingredient	25	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
59	Take the uncooked sticky rice and fry it in a pan until gold-brown (ca. 10 - 15mins). Let it cool off. This will be used to give the dish an amazing crunch.	Instruction	31	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
60	Dip into vinegar to eat, enjoy	Instruction	43	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
1295	Joshuafen Joshuafen	User	412	2023-09-02 05:23:36.185253	2023-09-02 05:23:36.185253
1330	gobetsoft gobetsoft	User	420	2023-09-14 13:08:12.083885	2023-09-14 13:08:12.083885
1341	CharlesDal CharlesDal	User	431	2023-09-29 17:49:04.519542	2023-09-29 17:49:04.519542
64	Take the toasted rice, put it in a mortar and turn it into powder. Put aside for later.	Instruction	32	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
65	Add miso	Instruction	47	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
66	Cut veggies, add and cook for 10 minutes on middle heat	Instruction	48	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
67	Cut tofu and add	Instruction	49	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
68	Drain shirataki and add	Instruction	50	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
69	Add wakame	Instruction	51	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
70	Garnish with seeds when serving the souo	Instruction	52	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
71	Cut onion into half rings and garlic into slices and add	Instruction	46	2021-12-02 14:53:52.545869	2021-12-02 14:53:52.545869
72	Leftover sticky rice from the day before	Ingredient	46	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
73	350g minced pork	Ingredient	36	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
74	2 tbsp olive oil	Ingredient	55	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
75	1 tbsp apple vinegar	Ingredient	56	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
76	2 tbsp miso paste	Ingredient	65	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
77	65g rye	Ingredient	75	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
78	0.5 amount of water needed for brown rice	Ingredient	76	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
79	4 chopped thai chillies (or more if you like)	Ingredient	37	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
80	1/2 tablespoon sugar (or more if you like)	Ingredient	38	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
81	1 tablespoon of fish sauce (or more if you like)	Ingredient	39	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
82	Rice cooker	Ingredient	77	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
1351	Andrewfak Andrewfak	User	441	2023-10-09 20:38:05.460597	2023-10-09 20:38:05.460597
1360	Warrenjuign Warrenjuign	User	450	2023-10-22 20:16:03.191456	2023-10-22 20:16:03.191456
1367	cok cok	User	457	2023-10-26 09:50:51.955428	2023-10-26 09:50:51.955428
87	3 eggs	Ingredient	2	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
88	2 green onions, minced	Ingredient	3	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
89	1tbs of soy sauce	Ingredient	4	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
90	1 small onion or spring onion	Ingredient	15	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
94	1 cm ginger grated or 1 tsp ginger powder	Ingredient	49	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
95	1kg Kabocha Kürbis	Ingredient	5	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
96	2El Olivenöl	Ingredient	6	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
97	4EL Sake	Ingredient	7	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
98	4EL Mirin	Ingredient	8	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
99	4EL Sojasauce	Ingredient	9	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
100	1/2TL Zucker	Ingredient	10	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
101	400ml Wasser	Ingredient	11	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
102	Chilipulver nach Geschmack	Ingredient	12	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
103	1/2 tsp curcuma powder	Ingredient	61	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
104	1/2 tsp paprika powder	Ingredient	62	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
105	1 tsp soy sauce	Ingredient	59	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
106	2 tsp Dijon mustard	Ingredient	60	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
107	1/4 tsp honey	Ingredient	63	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
108	black pepper	Ingredient	64	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
109	1 tbsp balsamico vinegar	Ingredient	57	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
110	1 tsp sesame oil	Ingredient	58	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
111	1 block tofu (firm or soft)	Ingredient	70	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
112	3 handful veggies like carrots, pumkin, broccoli, kohlrabi, cabbage etc.	Ingredient	73	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
114	1 tsp dashi (Japanese fish stock)	Ingredient	66	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
115	1 handful green leaves 	Ingredient	32	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
116	1tsp lemon or lime juice or vinegar (whatever you have at home)	Ingredient	34	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
117	Or use 2tsp Ponzu instead of soy sauce & lemon/lime juice	Ingredient	35	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
118	1tsp soy sauce	Ingredient	33	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
119	3 garlic cloves	Ingredient	68	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
120	1 onion	Ingredient	69	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
121	1 handful dried wakame (seaweed)	Ingredient	71	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
122	2 pinches of salt	Ingredient	50	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
123	Some rice vinegar (or any other vinegar) to dip	Ingredient	54	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
124	1 pack shirataki (konjak noodles)	Ingredient	72	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
125	10cm Konbu (seaweed)	Ingredient	67	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
126	1 tbsp olive oil	Ingredient	47	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
127	1 garlic clove grated or 1 tsp garlic powder	Ingredient	48	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
128	1 tbsp sesame seeds	Ingredient	51	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
129	1/2 tap sesame oil	Ingredient	53	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
130	Aonori (Japanese seaweed powder, optional)	Ingredient	52	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
131	2 limes (juice)	Ingredient	40	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
132	3 shallots	Ingredient	41	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
133	A few leaves of culantro or cilantro	Ingredient	42	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
134	5 spring onions	Ingredient	43	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
135	20 leaves of mint	Ingredient	44	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
136	200g block of firm tofu	Ingredient	1	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
137	1 kleiner Chinakohl	Ingredient	21	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
138	2 grosse Prisen Salz (ca 2g)	Ingredient	22	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
92	1 teaspoon olive oil	Ingredient	16	2021-12-02 14:53:52.56064	2021-12-14 10:12:01.528878
113	1 tbsp roasted seeds (sesame, pumpin, sunflower)	Ingredient	74	2021-12-02 14:53:52.56064	2022-02-15 13:55:14.156543
141	Chiliflocken nach Bedarf	Ingredient	27	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
142	2EL Ponzu (alternativ 1EL Sojasauceh und 1TL extra Zitronensaft)	Ingredient	26	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
143	1/2 Zitrone Abrieb und 1EL Saft (oder 1EL Yuzusaft)	Ingredient	23	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
147	150 - 200g of Natto (fermented soybeans)	Ingredient	14	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
148	5 tablespoons of uncooked Thai sticky rice	Ingredient	45	2021-12-02 14:53:52.56064	2021-12-02 14:53:52.56064
1296	Biarritz Noodles Salbei Pasta with a touch of butter	Recipe	92	2023-09-05 20:08:51.082523	2023-09-05 20:13:46.27746
1297	Hampflä Salbei	Ingredient	474	2023-09-05 20:15:17.136775	2023-09-05 20:15:17.136775
1298	5 Chnoblizeihä	Ingredient	475	2023-09-05 20:16:52.917974	2023-09-05 20:16:52.917974
153	4 tbsp olive oil	Ingredient	80	2021-12-05 12:33:59.574462	2021-12-05 12:46:29.829399
157	1 tsp curcuma powder	Ingredient	82	2021-12-05 12:46:29.851412	2021-12-05 12:46:29.851412
158	1 tsp paprika powder	Ingredient	83	2021-12-05 12:46:29.857018	2021-12-05 12:46:29.857018
159	ground black pepper	Ingredient	84	2021-12-05 12:46:29.862204	2021-12-05 12:46:29.862204
160	1 big onion	Ingredient	85	2021-12-05 12:46:29.867688	2021-12-05 12:46:29.867688
161	6 garlic cloves	Ingredient	86	2021-12-05 12:46:29.872755	2021-12-05 12:46:29.872755
162	3 chilis	Ingredient	87	2021-12-05 12:46:29.87799	2021-12-05 12:46:29.87799
163	1/2 tsp sugar	Ingredient	88	2021-12-05 12:46:29.883976	2021-12-05 12:46:29.883976
164	1 tbsp vinegar	Ingredient	89	2021-12-05 12:46:29.888856	2021-12-05 12:46:29.888856
165	250g red lentils	Ingredient	90	2021-12-05 12:46:29.893878	2021-12-05 12:46:29.893878
166	1 cauliflower	Ingredient	91	2021-12-05 12:46:29.898675	2021-12-05 12:46:29.898675
167	1 tbsp tomato puree	Ingredient	92	2021-12-05 12:46:29.903699	2021-12-05 12:46:29.903699
168	250g Pelati	Ingredient	93	2021-12-05 12:46:29.908731	2021-12-05 12:46:29.908731
169	1 tbsp veggie stock powder	Ingredient	94	2021-12-05 12:46:29.913542	2021-12-05 12:46:29.913542
170	1 tbsp soy sauce	Ingredient	95	2021-12-05 12:46:29.918639	2021-12-05 12:46:29.918639
171	yogurt or sour cream	Ingredient	96	2021-12-05 12:46:29.923589	2021-12-05 12:46:29.923589
173	spring onion	Ingredient	98	2021-12-05 12:46:29.933648	2021-12-05 12:46:29.933648
174	lemon juice	Ingredient	99	2021-12-05 12:46:29.938426	2021-12-05 12:46:29.938426
154	Heat oil, add all spices and fry for 2min	Instruction	56	2021-12-05 12:33:59.585391	2021-12-05 12:50:52.252422
176	Add sugar and vinegar and fry for 1min	Instruction	58	2021-12-05 12:50:52.264829	2021-12-05 12:50:52.264829
177	Add tomato puree and fry for 1min	Instruction	59	2021-12-05 12:50:52.272828	2021-12-05 12:50:52.272828
178	Add pelati and 5dl water	Instruction	60	2021-12-05 12:50:52.279077	2021-12-05 12:50:52.279077
179	Add veggie stock powder and soy sauce	Instruction	61	2021-12-05 12:50:52.284961	2021-12-05 12:50:52.284961
180	Cut cauliflower and add including leaves	Instruction	62	2021-12-05 12:50:52.290579	2021-12-05 12:50:52.290579
183	1 tbsp coriander seeds or powder	Ingredient	100	2021-12-05 12:53:50.154404	2021-12-05 12:53:50.154404
184	1 tbsp cumin	Ingredient	101	2021-12-05 12:53:50.161478	2021-12-05 12:53:50.161478
172	coriander leaves	Ingredient	97	2021-12-05 12:46:29.928644	2021-12-05 12:53:50.168143
185	chilis to garnish	Ingredient	102	2021-12-05 12:53:50.174394	2021-12-05 12:53:50.174394
175	Add chopped onion, garlic and chilis and fry for 3min	Instruction	57	2021-12-05 12:50:52.258857	2021-12-05 12:54:46.885731
182	Garnish with cut cilantro, cut spring onion, cut chilis, lemon juice and yogurt	Instruction	64	2021-12-05 12:50:52.302686	2021-12-05 12:54:46.889812
156	1 tbsp curry powder	Ingredient	81	2021-12-05 12:46:29.835382	2021-12-05 12:56:14.036152
155	Cauliflower & red lentil curry 🍛  Easy curry and you can replace the cauliflower with almost any other veggie 🙂	Recipe	17	2021-12-05 12:33:59.588512	2021-12-05 12:57:46.722626
181	Cook for 30min	Instruction	63	2021-12-05 12:50:52.296113	2022-02-04 15:06:04.239684
186	5 eggs	Ingredient	103	2021-12-08 09:19:51.890733	2021-12-08 09:30:15.868257
189	Salt & pepper	Ingredient	104	2021-12-08 09:30:15.877612	2021-12-08 09:30:15.877612
190	100ml neutral oil (e.g. sunflower oil)	Ingredient	105	2021-12-08 09:30:15.884582	2021-12-08 09:30:15.884582
191	100g schmand (sour cream 24 - 28% fat)	Ingredient	106	2021-12-08 09:30:15.890169	2021-12-08 09:30:15.890169
192	100g sour cream (> 10 % < 24% of fat)	Ingredient	107	2021-12-08 09:30:15.896018	2021-12-08 09:30:15.896018
193	ca. 150g 7 kinds of herbs, see following:	Ingredient	108	2021-12-08 09:30:15.90253	2021-12-08 09:30:15.90253
187	Boil the eggs for approx. 10 minutes, rinse in cold water, peel and cut in half.	Instruction	65	2021-12-08 09:19:51.912835	2021-12-08 09:38:48.102368
204	Cut the egg white into small cubes. Add 2/3 of egg white into the green sauce and garnish with the remaining egg white.	Instruction	69	2021-12-08 09:38:48.130732	2021-12-08 09:38:48.130732
205	1 - 2 teaspoons of spicy mustard	Ingredient	116	2021-12-08 09:39:37.817385	2021-12-08 10:27:57.337726
201	Remove the egg yolks and put them in a bowl.	Instruction	66	2021-12-08 09:38:48.110095	2021-12-08 11:32:22.560833
202	Season the egg yolks with salt, pepper and mustard and stir. Stir in 100ml of oil, then 100g of sour cream. Finally stir in 100g of Schmand (fatty sour cream). If you don't have Schmand, you can also just use the same sour cream instead.	Instruction	67	2021-12-08 09:38:48.117469	2021-12-08 11:32:22.564708
203	Wash the herbs and shake dry. Remove large stems. Chop the herbs and add to the bowl.	Instruction	68	2021-12-08 09:38:48.12434	2021-12-08 11:32:22.568841
206	Use a blender or to chop and mix everything. Season to taste.	Instruction	70	2021-12-08 11:32:22.574675	2021-12-08 11:32:22.574675
209	Hijiki Sweet Japanese umami explosion! Add a bit of rice and you‘re good to go. Hijiki is a seaweed.	Recipe	19	2021-12-14 09:51:16.285924	2021-12-14 09:52:46.767918
207	20g dried Hijiki	Ingredient	117	2021-12-14 09:51:16.269038	2021-12-14 09:55:49.344644
210	ca. 1.5dl water	Ingredient	118	2021-12-14 09:55:49.35112	2021-12-14 09:55:49.35112
211	1 teaspoon dashi (Japanese fish stock)	Ingredient	119	2021-12-14 09:55:49.357163	2021-12-14 09:55:49.357163
212	1 teaspoon sugar	Ingredient	120	2021-12-14 09:55:49.363854	2021-12-14 09:55:49.363854
213	1 tablespoon soy sauce	Ingredient	121	2021-12-14 09:55:49.372417	2021-12-14 09:55:49.372417
144	1 tablespoon ponzu sauce	Ingredient	18	2021-12-02 14:53:52.56064	2021-12-14 10:12:01.540383
188	Frankfurter green sauce Green sauce is a popular dish from Frankfurt. The cold herb sauce is considered a Hessian cultural asset. But no matter where you are: The recipe for the "Grie Sauce" is loved everywhere.	Recipe	18	2021-12-08 09:19:51.916354	2022-01-23 08:58:34.421324
194	Borage (Borretsch)	Ingredient	109	2021-12-08 09:30:15.908401	2022-02-26 07:52:07.439256
195	Chervil (Kerbel)	Ingredient	110	2021-12-08 09:30:15.913452	2022-02-26 07:52:07.443377
196	Cress (Brunnenkresse)	Ingredient	111	2021-12-08 09:30:15.918849	2022-02-26 07:52:07.447611
214	1 tablespoon cooking sake	Ingredient	122	2021-12-14 09:55:49.378546	2021-12-14 09:55:49.378546
215	1 teaspoon sesame oil	Ingredient	123	2021-12-14 09:55:49.389114	2021-12-14 09:55:49.389114
208	Soak hijiki in some hot water, for about 5mins.	Instruction	71	2021-12-14 09:51:16.28262	2021-12-14 10:00:00.315985
217	Drain hijiki and fry in pan with previously heated sesame oil for 1min.	Instruction	73	2021-12-14 10:00:00.334262	2021-12-14 10:00:00.334262
218	Add the mix from the glass and cook for 7-8min until almost all liquid is gone.	Instruction	74	2021-12-14 10:00:00.346518	2021-12-14 10:00:00.346518
91	Optional: 1 teaspoon mayonnaise	Ingredient	20	2021-12-02 14:53:52.56064	2021-12-14 10:12:01.523782
93	1.5 teaspoon soy sauce	Ingredient	17	2021-12-02 14:53:52.56064	2021-12-14 10:12:01.533817
146	1 teaspoon mustard	Ingredient	28	2021-12-02 14:53:52.56064	2021-12-14 10:12:01.549229
221	Arroz à la Stephen & Naomi We came across this yummy dish on our Portugal trip in 2020. It‘s a great use of leftover rice and it‘s a hearty winter dish to warm you up 🔥 	Recipe	20	2021-12-16 13:51:31.416049	2021-12-16 13:53:51.598228
219	1 onion	Ingredient	124	2021-12-16 13:51:31.39141	2021-12-16 13:58:28.953285
222	3 garlic cloves	Ingredient	125	2021-12-16 13:58:28.960575	2021-12-16 13:58:28.960575
223	chilies	Ingredient	126	2021-12-16 13:58:28.966887	2021-12-16 13:58:28.966887
224	2 tbsp olive oil	Ingredient	127	2021-12-16 13:58:28.972932	2021-12-16 13:58:28.972932
225	leftover rice	Ingredient	128	2021-12-16 13:58:28.978488	2021-12-16 13:58:28.978488
226	1 canned beans	Ingredient	129	2021-12-16 13:58:28.984389	2021-12-16 13:58:28.984389
227	1 can pelati	Ingredient	130	2021-12-16 13:58:28.989788	2021-12-16 13:58:28.989788
228	1 handful coriander	Ingredient	131	2021-12-16 13:58:28.994765	2021-12-16 13:58:28.994765
229	salt	Ingredient	132	2021-12-16 13:58:29.000174	2021-12-16 13:58:29.000174
230	pepper	Ingredient	133	2021-12-16 13:58:29.008377	2021-12-16 13:58:29.008377
231	1 tsp vinegar	Ingredient	134	2021-12-16 13:58:29.015093	2021-12-16 13:58:29.015093
232	1 tsp soy sauce	Ingredient	135	2021-12-16 13:58:29.020382	2021-12-16 13:58:29.020382
233	1/2 tsp sugar	Ingredient	136	2021-12-16 13:58:29.025458	2021-12-16 13:58:29.025458
234	lime juice	Ingredient	137	2021-12-16 13:58:29.030523	2021-12-16 13:58:29.030523
220	cut onion, garlic and chilies	Instruction	75	2021-12-16 13:51:31.410615	2021-12-16 14:01:54.510761
235	heat olive oil in pan and add onion, garlic and chilies and fry for 3 min	Instruction	76	2021-12-16 14:01:54.516268	2021-12-16 14:01:54.516268
236	add rice and fry for 5 min	Instruction	77	2021-12-16 14:01:54.522065	2021-12-16 14:01:54.522065
237	add beans (do not drain them and add the liquid as well), pelati and 1dl water	Instruction	78	2021-12-16 14:01:54.527211	2021-12-16 14:01:54.527211
238	season with salt, pepper, sugar, soy sauce and vinegar and cook for 10 min	Instruction	79	2021-12-16 14:01:54.533578	2021-12-16 14:02:34.665868
239	add chopped coriander and serve with lime juice	Instruction	80	2021-12-16 14:01:54.539149	2021-12-16 14:02:50.869569
269	2 handful frozen berries (whatever you like but I usually use mixed berries)	Ingredient	154	2021-12-23 13:37:27.665082	2021-12-23 13:43:17.675382
240	1 avocado	Ingredient	138	2021-12-23 13:18:44.221081	2021-12-23 13:19:58.020326
243	spring onion	Ingredient	139	2021-12-23 13:19:58.027306	2021-12-23 13:19:58.027306
244	1 tbsp ponzu	Ingredient	140	2021-12-23 13:19:58.03339	2021-12-23 13:19:58.03339
268	1 tsp sesame oil	Ingredient	153	2021-12-23 13:35:08.308925	2021-12-23 13:35:08.308925
245	cut spring onion and top over avocado	Instruction	82	2021-12-23 13:22:53.499066	2021-12-23 13:22:53.499066
246	season with ponzu	Instruction	83	2021-12-23 13:22:53.506112	2021-12-23 13:22:53.506112
241	half, peal amd slice avocado	Instruction	81	2021-12-23 13:18:44.235327	2021-12-23 13:23:16.008264
272	1 tsp honey	Ingredient	155	2021-12-23 13:43:17.684932	2021-12-23 13:43:17.684932
247	2 handful kimchi	Ingredient	141	2021-12-23 13:23:20.526166	2021-12-23 13:30:03.360351
250	100ml kimchi brine (sauce)	Ingredient	142	2021-12-23 13:30:03.36716	2021-12-23 13:30:03.36716
251	1 onion	Ingredient	143	2021-12-23 13:30:03.372996	2021-12-23 13:30:03.372996
252	2 spring onions	Ingredient	144	2021-12-23 13:30:03.379772	2021-12-23 13:30:03.379772
253	1 pork sausage	Ingredient	145	2021-12-23 13:30:03.387239	2021-12-23 13:30:03.387239
254	1/2 tsp salt	Ingredient	146	2021-12-23 13:30:03.393959	2021-12-23 13:30:03.393959
255	1 tsp sugar	Ingredient	147	2021-12-23 13:30:03.402815	2021-12-23 13:30:03.402815
256	2 tsp Korean chili flakes	Ingredient	148	2021-12-23 13:30:03.413114	2021-12-23 13:30:03.413114
257	1 tsp dashi 	Ingredient	149	2021-12-23 13:30:03.42097	2021-12-23 13:30:03.42097
259	1 pack firm tofu	Ingredient	151	2021-12-23 13:30:03.433253	2021-12-23 13:30:03.433253
260	toasted sesame seeds	Ingredient	152	2021-12-23 13:30:03.43927	2021-12-23 13:30:03.43927
248	cut kimchi and put with brine into a pan	Instruction	84	2021-12-23 13:23:20.532695	2021-12-23 13:33:59.943705
261	add cut onion and 1 cut spring onion	Instruction	85	2021-12-23 13:33:59.950611	2021-12-23 13:33:59.950611
262	remove sausage from skin and pull into small pieces and add	Instruction	86	2021-12-23 13:33:59.956715	2021-12-23 13:33:59.956715
263	add salt, sugar, chili flakes, sesame oil, gochujang and dashi	Instruction	87	2021-12-23 13:33:59.963393	2021-12-23 13:33:59.963393
264	add 500ml hot water and bring to boil	Instruction	88	2021-12-23 13:33:59.969933	2021-12-23 13:33:59.969933
265	cook on medium heat for 10min	Instruction	89	2021-12-23 13:33:59.97628	2021-12-23 13:33:59.97628
266	cut tofu in slices and add	Instruction	90	2021-12-23 13:33:59.982404	2021-12-23 13:33:59.982404
267	cook for another 5min and garnish with cut spring onion and toasted sesame seeds	Instruction	91	2021-12-23 13:33:59.987953	2021-12-23 13:33:59.987953
258	1 tbsp gochujang	Ingredient	150	2021-12-23 13:30:03.427472	2021-12-23 13:35:08.313148
249	Kimchi Jjigae Super yummy kimchi stew, you can’t get enough of it! You can also use other pieces of meat or no meat at all 🙂 Best served with white sticky rice 🍚 	Recipe	22	2021-12-23 13:23:20.535572	2021-12-23 13:35:59.578316
242	Avocado carpaccio 🥑 Japanese style Just delicious!!! 🤤 	Recipe	21	2021-12-23 13:18:44.238514	2021-12-23 13:37:21.314133
271	Naomi‘s favorite smoothie 🍓🫐🍒 I just love it! Because I use frozen berries it always feels like eating a dessert 🍨 	Recipe	23	2021-12-23 13:37:27.677689	2021-12-23 13:39:06.756349
273	1 tbsp pure almond butter (without sugar or salt, you can also use other nut butters)	Ingredient	156	2021-12-23 13:43:17.698497	2021-12-23 13:43:17.698497
274	1 pinch of salt	Ingredient	157	2021-12-23 13:43:17.707965	2021-12-23 13:43:17.707965
275	2 drops lemon juice	Ingredient	158	2021-12-23 13:43:17.715097	2021-12-23 13:43:17.715097
276	1 tbsp cocoa powder	Ingredient	159	2021-12-23 13:43:17.721827	2021-12-23 13:43:17.721827
277	1 cm ginger	Ingredient	160	2021-12-23 13:43:17.727919	2021-12-23 13:43:17.727919
278	3dl soy drink	Ingredient	161	2021-12-23 13:43:17.733324	2021-12-23 13:43:17.733324
270	mix all in a mixer and enjoy the creamy smoothie 🥤	Instruction	92	2021-12-23 13:37:27.674368	2021-12-23 13:44:19.381025
1299	75g Butter	Ingredient	476	2023-09-05 20:17:19.39528	2023-09-05 20:17:19.39528
1301	Salz & Pfeffer	Ingredient	478	2023-09-05 20:19:23.018221	2023-09-05 20:19:23.018221
145	1 teaspoon vinegar (ideal: black rice vinegar)	Ingredient	19	2021-12-02 14:53:52.56064	2022-10-05 16:01:29.754397
306	150g pork minced meat	Ingredient	173	2021-12-24 14:04:18.438337	2021-12-30 19:06:24.511333
1302	500g Pasta	Ingredient	479	2023-09-05 20:19:38.545077	2023-09-05 20:19:38.545077
1303	Butter „nussig“ schmelzä	Instruction	330	2023-09-05 20:21:12.927736	2023-09-05 20:21:12.927736
1304	Chnobli fiin schiblä, Salbei fiin hackä	Instruction	331	2023-09-05 20:22:11.108974	2023-09-05 20:22:11.108974
1305	Wasser chochä - Nudlä ine	Instruction	332	2023-09-05 20:22:41.158913	2023-09-05 20:24:24.151706
283	whisk egg white with salt and lemon juice until stiff	Instruction	94	2021-12-24 09:32:56.756918	2021-12-24 10:06:29.705034
293	add half of sugar and continue whisking until silky/shiny	Instruction	95	2021-12-24 10:06:29.712239	2021-12-24 10:06:29.712239
294	whisk cream semirigid	Instruction	96	2021-12-24 10:06:29.7188	2021-12-24 10:06:29.7188
295	whisk egg york with other half of sugar until creamy	Instruction	97	2021-12-24 10:06:29.725602	2021-12-24 10:06:29.725602
292	Cocoa powder	Ingredient	171	2021-12-24 09:48:33.500289	2023-07-02 14:44:23.190588
1300	5EL Gräm fraiche	Ingredient	477	2023-09-05 20:18:42.233326	2023-09-05 20:27:51.103199
296	add mascarpone to the egg york cream and mix very carefully	Instruction	98	2021-12-24 10:06:29.733148	2021-12-24 10:06:29.733148
297	add cream and mix carefully	Instruction	99	2021-12-24 10:06:29.740879	2021-12-24 10:06:29.740879
298	add egg white and mix carefully	Instruction	100	2021-12-24 10:06:29.751794	2021-12-24 10:06:29.751794
300	start with one layer of cream	Instruction	102	2021-12-24 10:06:29.768328	2021-12-24 10:06:29.768328
1306	Salbei & Chnobli 2’ in Butter	Instruction	333	2023-09-05 20:23:19.829815	2023-09-05 20:23:55.129894
302	repeat and finish with a layer of cream	Instruction	104	2021-12-24 10:06:29.782288	2021-12-24 10:06:29.782288
284	Tiramisu 🍮 Not more to say than this is the best tiramisu ever! 😜	Recipe	25	2021-12-24 09:32:56.760478	2021-12-24 10:07:09.394607
289	1 pack Löffelbuscuits	Ingredient	168	2021-12-24 09:48:33.480745	2021-12-24 10:07:35.228866
1331	CanadPharmProzak CanadPharmProzak	User	421	2023-09-14 14:43:35.237778	2023-09-14 14:43:35.237778
303	garnish with cocoa powder	Instruction	105	2021-12-24 10:06:29.789255	2021-12-24 10:08:39.912995
1342	Davidplody Davidplody	User	432	2023-09-30 09:43:13.731418	2023-09-30 09:43:13.731418
1352	casino online casino online	User	442	2023-10-10 06:29:31.455894	2023-10-10 06:29:31.455894
308	Gyoza 🥟 🥟 🥟 Mama Caduff‘s gyoza 🥰	Recipe	26	2021-12-24 14:04:18.452827	2021-12-24 14:05:51.817236
339	heat olive oil in pot	Instruction	119	2022-01-05 13:38:26.922546	2022-01-05 13:46:17.671471
310	3 cloves galic	Ingredient	175	2021-12-24 14:08:58.461748	2021-12-24 14:08:58.461748
311	1 onion	Ingredient	176	2021-12-24 14:08:58.468868	2021-12-24 14:08:58.468868
312	2cm ginger	Ingredient	177	2021-12-24 14:08:58.475746	2021-12-24 14:08:58.475746
313	1 nira (Knoblauchschnittlauch) or spring onion (only green part)	Ingredient	178	2021-12-24 14:08:58.483261	2021-12-24 14:08:58.483261
314	1 tsp soy sauce	Ingredient	179	2021-12-24 14:08:58.490367	2021-12-24 14:08:58.490367
316	1 tsp oyster sauce	Ingredient	181	2021-12-24 14:08:58.504304	2021-12-24 14:08:58.504304
317	salt and pepper	Ingredient	182	2021-12-24 14:08:58.511282	2021-12-24 14:08:58.511282
307	flavor minced meat with soy sauce, sake, oyster sauce, salt and pepper	Instruction	107	2021-12-24 14:04:18.447829	2021-12-24 14:19:33.895228
318	chop cabbage, onion, nira (or spring onion), garlic and ginger and add potato starch, mix well	Instruction	108	2021-12-24 14:19:33.902775	2021-12-24 14:19:33.902775
320	fill goyza dough with 1 tbsp of meat veggie mix 	Instruction	110	2021-12-24 14:19:33.916556	2021-12-24 14:19:33.916556
321	add any vegetabele oil to cold pan and add goyza	Instruction	111	2021-12-24 14:19:33.923231	2021-12-24 14:19:33.923231
323	add hot water until the gyoza are one third covered	Instruction	113	2021-12-24 14:19:33.943025	2021-12-24 14:19:33.943025
325	add 1 tsp of sesame oil around the gyoza (along the pan edge)	Instruction	115	2021-12-24 14:19:33.957084	2021-12-24 14:19:33.957084
326	put the gyoza on plate upside down	Instruction	116	2021-12-24 14:19:33.964729	2021-12-24 14:19:33.964729
327	eat with soy sauce, vinegar and la-yu mix	Instruction	117	2021-12-24 14:19:33.972175	2021-12-24 14:19:33.972175
328	1 tbsp potato starch	Ingredient	183	2021-12-24 14:22:22.79415	2021-12-24 14:22:22.79415
330	1 tsp sesame oil	Ingredient	185	2021-12-24 14:22:22.814521	2021-12-24 14:22:22.814521
331	1 tbsp soy sauce	Ingredient	186	2021-12-24 14:22:22.82262	2021-12-24 14:22:22.82262
332	1 tbsp vinegar	Ingredient	187	2021-12-24 14:22:22.843218	2021-12-24 14:22:22.843218
333	1 tsp la-yu (chili sesame oil)	Ingredient	188	2021-12-24 14:22:22.852841	2021-12-24 14:22:22.852841
319	mix meat and greens to a dough and let it rest in the fridge at least for 2-3h (or even better over night)	Instruction	109	2021-12-24 14:19:33.909925	2021-12-24 14:23:22.093385
334	1 tsp vegetable oil	Ingredient	189	2021-12-24 14:24:35.433542	2021-12-24 14:24:35.433542
322	heat up and let the gyoza get gold brown	Instruction	112	2021-12-24 14:19:33.936686	2021-12-24 14:24:35.439485
1361	DonaldFrunk DonaldFrunk	User	451	2023-10-23 07:55:11.487069	2023-10-23 07:55:11.487069
1368	DavidPap DavidPap	User	458	2023-10-28 10:45:24.427335	2023-10-28 10:45:24.427335
1375	Svetlqjx Svetlqjx	User	465	2023-10-30 01:34:05.875032	2023-10-30 01:34:05.875032
315	1 tbsp sake	Ingredient	180	2021-12-24 14:08:58.497601	2021-12-30 19:06:24.517918
309	100g Spitzchabis	Ingredient	174	2021-12-24 14:08:58.4545	2021-12-30 19:06:24.523138
324	cover pan with lid and let the gyoza steam until water is almost gone (about 10min)	Instruction	114	2021-12-24 14:19:33.950065	2021-12-30 19:06:24.5299
340	Lentil soup - recipe from a Dubai trip 🛩 A friend of a friend cooked that lentil soup at a dinner party and it was one of the best lentil soups I ever had 🤤 I needed to get the recipe and now I am sharing it with all of you 😉	Recipe	28	2022-01-05 13:38:26.927156	2022-01-05 13:41:29.589069
341	3 tbsp olive oil	Ingredient	192	2022-01-05 13:44:11.524881	2022-01-05 13:44:11.524881
338	1 clove garlic	Ingredient	191	2022-01-05 13:38:26.903421	2022-01-05 13:44:11.529837
342	1 large onion	Ingredient	193	2022-01-05 13:44:11.536037	2022-01-05 13:44:11.536037
343	250g red lentils	Ingredient	194	2022-01-05 13:44:11.543193	2022-01-05 13:44:11.543193
344	1/4 tsp cumin	Ingredient	195	2022-01-05 13:44:11.548108	2022-01-05 13:44:11.548108
345	1/4 tsp tumeric	Ingredient	196	2022-01-05 13:44:11.552728	2022-01-05 13:44:11.552728
346	1/4 tsp paprika	Ingredient	197	2022-01-05 13:44:11.557355	2022-01-05 13:44:11.557355
347	1/4 tsp dried chilies	Ingredient	198	2022-01-05 13:44:11.562466	2022-01-05 13:44:11.562466
348	2 veggie or chicken stock cubes	Ingredient	199	2022-01-05 13:44:11.566931	2022-01-05 13:44:11.566931
349	add cut garlic and onion	Instruction	120	2022-01-05 13:46:17.676391	2022-01-05 13:46:17.676391
350	add lentils and fry for 2min (make sure it does not stick to the bottom of the pot)	Instruction	121	2022-01-05 13:46:17.681441	2022-01-05 13:46:17.681441
351	add spices	Instruction	122	2022-01-05 13:46:17.686731	2022-01-05 13:46:17.686731
352	add 1l of water and stock cubes	Instruction	123	2022-01-05 13:46:17.691447	2022-01-05 13:46:17.691447
353	cook for 30min on medium heat	Instruction	124	2022-01-05 13:46:17.696038	2022-01-05 13:46:17.696038
355	lime juice	Ingredient	200	2022-01-05 13:46:34.660809	2022-01-05 13:46:34.660809
386	Half cabbage 🥬 by cutting a 5cm slit into the stem and rip apart the two halves. Then cut another 3cm slit into the halves‘ stems (so you can rip them apart again at a later step).	Instruction	134	2022-01-16 09:43:06.255509	2022-01-16 10:19:57.782976
356	chives	Ingredient	201	2022-01-05 14:02:19.574546	2022-01-05 14:02:19.574546
354	blend and serve with lime juice and chives	Instruction	125	2022-01-05 13:46:17.700316	2022-01-05 14:02:31.313544
216	Put the 1.5dl of water into a glass and add to it dashi, soy sauce, sake and sugar. Mix well	Instruction	72	2021-12-14 10:00:00.325331	2022-01-11 18:26:14.050526
403	Wet all the 🥬 halves. 	Instruction	135	2022-01-16 10:19:57.79061	2022-01-16 10:19:57.79061
357	250g of soba noodles	Ingredient	202	2022-01-12 16:38:52.986211	2022-01-12 16:45:29.170673
361	2-3 garlic cloves	Ingredient	204	2022-01-12 16:45:29.202136	2022-01-12 16:45:29.202136
362	2 red chillies	Ingredient	205	2022-01-12 16:45:29.224017	2022-01-12 16:45:29.224017
363	Large piece of ginger (2cm)	Ingredient	206	2022-01-12 16:45:29.242595	2022-01-12 16:45:29.242595
365	5 tablespoons of olive oil	Ingredient	208	2022-01-12 16:45:29.293118	2022-01-12 16:45:29.293118
366	2 tablespoons of soy sauce	Ingredient	209	2022-01-12 16:45:29.312305	2022-01-12 16:45:29.312305
367	1 teaspoon of sugar	Ingredient	210	2022-01-12 16:45:29.329013	2022-01-12 16:45:29.329013
299	mix espresso with Cointreau 🥃 and orange juice 🍊 and let it cool down	Instruction	101	2021-12-24 10:06:29.760522	2023-07-02 14:44:23.196617
1380	KevinDopay KevinDopay	User	470	2023-10-30 13:45:32.56466	2023-10-30 13:45:32.56466
368	1 tablespoon of sesame oil	Ingredient	211	2022-01-12 16:45:29.340339	2022-01-12 16:45:29.340339
369	Put all the other ingredients into a mixer and mix until one homogenous green sauce.	Instruction	127	2022-01-12 16:47:04.190541	2022-01-12 16:47:04.190541
370	Add sauce to a portion of soba noodles ans enjoy 😊 	Instruction	128	2022-01-12 16:47:04.196234	2022-01-12 16:47:04.196234
404	Take the salt and distibute it thoroughly into all the cabbages.	Instruction	136	2022-01-16 10:19:57.797339	2022-01-16 10:19:57.797339
360	3 cups of coriander leaves, incl stalks	Ingredient	203	2022-01-12 16:45:29.186301	2022-01-12 16:47:58.109033
364	2-3 limes (Zest and juice)	Ingredient	207	2022-01-12 16:45:29.265111	2022-01-12 18:01:22.856429
405	Let them rest for 30mins. Then turn them over to distribute the salt water and rest another 30mins. Repeat this once more (3 x 30mins). While they rest, start with the next step.	Instruction	137	2022-01-16 10:19:57.803999	2022-01-16 10:19:57.803999
406	Prepare the porridge 🥣: Put the 400ml water into pot and add rice flour. Bring to boil. Then add the sugar and cook for another 10mins on medium-low heat. Let it cool off.	Instruction	138	2022-01-16 10:19:57.81064	2022-01-16 10:19:57.81064
407	Mix ginger, onions and garlic into a paste. Add fish sauce and soy sauce. Add all to cooled-off porridge.	Instruction	139	2022-01-16 10:19:57.81782	2022-01-16 10:19:57.81782
1307	Nudle zum Salbei und Gräm fraiche dezue. Umerüähre. 	Instruction	334	2023-09-05 20:25:20.220722	2023-09-05 20:25:20.220722
1308	Abschmöcke.\nBHOOM - Fertig 👩🏽‍🍳🧑🏽‍🍳	Instruction	335	2023-09-05 20:26:28.49805	2023-09-05 20:26:28.49805
1332	DavidInfed DavidInfed	User	422	2023-09-15 18:07:09.564016	2023-09-15 18:07:09.564016
1343	Ivandycle Ivandycle	User	433	2023-10-01 11:59:15.952972	2023-10-01 11:59:15.952972
1353	Melvinneurf Melvinneurf	User	443	2023-10-11 09:13:19.098028	2023-10-11 09:13:19.098028
379	Radish Pickles This Korean radish pickles recipe is very simple but incredibly delicious 😃 eat with sticky rice 🍚 or just as snack (when having beer 🍻😉)	Recipe	32	2022-01-15 18:40:31.682956	2022-01-15 18:43:50.0295
377	1kg radish	Ingredient	214	2022-01-15 18:40:31.669314	2022-01-15 18:44:57.472723
380	135g sugar	Ingredient	215	2022-01-15 18:44:57.477988	2022-01-15 18:44:57.477988
382	2 tbsp salt	Ingredient	217	2022-01-15 18:44:57.486963	2022-01-15 18:44:57.486963
378	mix sugar, vinegar and salt in a bowl and add 300ml water	Instruction	131	2022-01-15 18:40:31.679304	2022-01-15 18:47:32.214785
383	cut radish in small cubes and add	Instruction	132	2022-01-15 18:47:32.219626	2022-01-15 18:47:32.219626
384	pickle in refigerator for at least 1 day and up to a month before serving	Instruction	133	2022-01-15 18:47:32.224131	2022-01-15 18:47:32.224131
359	Soba noodles with coriander sauce The combination of coriander 🌿 with the sourness of lime 🍋 and the spiciness of chilli 🌶 will be a revelation 😇	Recipe	29	2022-01-12 16:38:53.007705	2022-01-16 09:42:34.783091
381	135ml white vinegar	Ingredient	216	2022-01-15 18:44:57.48255	2022-01-22 20:51:17.617352
385	6kg cabbage 🥬 (Chinakohl)	Ingredient	218	2022-01-16 09:43:06.247684	2022-01-16 09:58:27.899896
388	600g salt 🧂	Ingredient	219	2022-01-16 09:58:27.907216	2022-01-16 09:58:27.907216
389	400ml water 💧	Ingredient	220	2022-01-16 09:58:27.914508	2022-01-16 09:58:27.914508
390	4 tablespoons rice flour or normal flour 🍚 	Ingredient	221	2022-01-16 09:58:27.921408	2022-01-16 09:58:27.921408
391	4 tablespoons sugar	Ingredient	222	2022-01-16 09:58:27.929175	2022-01-16 09:58:27.929175
392	60 garlic cloves 🧄	Ingredient	223	2022-01-16 09:58:27.935996	2022-01-16 09:58:27.935996
393	2 onions 🧅	Ingredient	224	2022-01-16 09:58:27.942379	2022-01-16 09:58:27.942379
394	Handfull ginger	Ingredient	225	2022-01-16 09:58:27.94895	2022-01-16 09:58:27.94895
395	Ca 700g Korean pepper flakes 🌶 	Ingredient	226	2022-01-16 09:58:27.95565	2022-01-16 09:58:27.95565
396	200ml fish sauce 🐠	Ingredient	227	2022-01-16 09:58:27.962179	2022-01-16 09:58:27.962179
397	70ml soy sauce	Ingredient	228	2022-01-16 09:58:27.973713	2022-01-16 09:58:27.973713
398	Optional: Korean fermented shrimps	Ingredient	229	2022-01-16 09:58:27.981281	2022-01-16 09:58:27.981281
399	1 radish (ca. 700g)	Ingredient	230	2022-01-16 09:58:27.988597	2022-01-16 09:58:27.988597
400	3 carrots 🥕	Ingredient	231	2022-01-16 09:58:27.995783	2022-01-16 09:58:27.995783
401	Ca. 4 bunches spring onions 🌾	Ingredient	232	2022-01-16 09:58:28.003913	2022-01-16 09:58:28.003913
402	Optional: 4 bunches of chives or garlic chives	Ingredient	233	2022-01-16 09:58:28.010973	2022-01-16 09:58:28.010973
408	Take the shripms and squeeze sauce into porride and finely chop them afterwards. Also add to porrige.	Instruction	140	2022-01-16 10:19:57.825219	2022-01-16 10:19:57.825219
409	Add all the pepper flakes to porride and mix together.	Instruction	141	2022-01-16 10:19:57.832445	2022-01-16 10:19:57.832445
410	Cut raddish and carrots into small sticks (as thin as possible)	Instruction	142	2022-01-16 10:19:57.840752	2022-01-16 10:19:57.840752
411	Cut chives and spring onions into small pieces. 	Instruction	143	2022-01-16 10:19:57.847115	2022-01-16 10:19:57.847115
412	Mix veggies with porridge in a large bowl.	Instruction	144	2022-01-16 10:19:57.853816	2022-01-16 10:19:57.853816
413	Rinse cabbage very well to remove all excess salt.  While you do this, rip them apart again into quarters. Wash and drain carefully. The should be as dry as possible (give them a good squeeze).	Instruction	145	2022-01-16 10:19:57.87789	2022-01-16 10:19:57.87789
414	Fill the 🥬 quarters with the paste and make sure it‘s evenly distributed.	Instruction	146	2022-01-16 10:19:57.899525	2022-01-16 10:19:57.899525
387	Kimchi Always have to have a batch of homemade kimchi 🥬 at home. It‘s really not that hard, all you need is a bit of patience and some space.	Recipe	33	2022-01-16 09:43:06.258796	2022-01-16 10:20:27.85174
358	Cook the soba noodles according to instructions and cool off with cold water afterwards.	Instruction	126	2022-01-12 16:38:53.002702	2022-02-11 17:53:30.08674
415	Fold the filled 🥬 quarters and put them into a clay pot (you can also use another container such as tupper or glass jar). As you fill the pot, press cabbages down to remove air pockets.	Instruction	147	2022-01-16 10:19:57.931179	2022-01-16 10:19:57.931179
416	Let the fresh kimchi rest at room temperature for two days. Then start cooling the kimchi. In autumn/winter, just leave outside. In summer/spring you may want to put it in a cellar or fridge (but beware of the smell 👃).	Instruction	148	2022-01-16 10:19:57.954483	2022-01-16 10:19:57.954483
417	15 gralic cloves (fresh & young ones) 🧄	Ingredient	234	2022-01-22 13:26:21.797739	2022-03-06 18:09:07.911266
451	4 Butterkekse	Ingredient	249	2022-02-04 20:27:48.01103	2022-02-04 20:27:48.01103
418	Remove green stems / cores from each garlic 🧄 clove	Instruction	149	2022-01-22 13:26:21.811382	2022-01-22 13:43:12.972833
428	Rinse pasta and put it back immediately into the pot. Add the sauce and the cut parsley leaves to the pot.	Instruction	154	2022-01-22 13:43:12.998245	2022-01-22 13:43:12.998245
429	Important: Now vigorously stir and mix the pasta until a nice slimy sauce of pasta starch and the oily sauce emerges.	Instruction	155	2022-01-22 13:43:13.015571	2022-01-22 13:43:13.015571
420	200ml olive oil 🫒	Ingredient	235	2022-01-22 13:32:43.505673	2022-01-22 13:45:51.552238
421	200ml water 💧	Ingredient	236	2022-01-22 13:32:43.510648	2022-01-22 13:45:51.556552
422	1 bunch of parsley 🌿	Ingredient	237	2022-01-22 13:32:43.515584	2022-01-22 13:45:51.560554
423	1 teaspoon of cayenne pepper powder 🌶	Ingredient	238	2022-01-22 13:32:43.520763	2022-01-22 13:45:51.564056
431	500g pasta 🍝	Ingredient	239	2022-01-22 13:44:45.447322	2022-01-22 13:45:51.567464
424	Put all the cloves 🧄 into a small pot with cold water 💧 (just enogh to cover them in water) and then bring to a boil. Once it‘s boiling, rinse the water and replace with cold water. Repeat 2 times.	Instruction	150	2022-01-22 13:43:12.977943	2022-01-22 13:48:54.384272
425	Put oil 🫒 and water 💧 into a container. Add the stems of parsely 🍃. Add the cayenne pepper powder 🌶. Add the cooked garlic cloves 🧄. Mix all with blender to a homogenous sauce.	Instruction	151	2022-01-22 13:43:12.983109	2022-01-22 13:48:54.387779
426	Take the parsley leaves 🍃 and cut them very finely.	Instruction	152	2022-01-22 13:43:12.988897	2022-01-22 13:48:54.391272
427	Meanwhile, cook the pasta 🍝  in water until al dente.	Instruction	153	2022-01-22 13:43:12.993589	2022-01-22 13:48:54.394532
430	Serve pasta. Add some salt 🧂 and / or parmesan cheese 🧀 if desired.	Instruction	156	2022-01-22 13:43:13.020824	2022-01-22 13:48:54.397831
444	3 TL Zucker	Ingredient	247	2022-02-04 20:23:42.632003	2022-02-24 11:07:41.498316
1309	Davidgor Davidgor	User	413	2023-09-06 01:39:43.894246	2023-09-06 01:39:43.894246
1333	Igorltit Igorltit	User	423	2023-09-19 12:12:49.739732	2023-09-19 12:12:49.739732
1344	ThomasToona ThomasToona	User	434	2023-10-02 02:37:25.992528	2023-10-02 02:37:25.992528
435	2 tomatos	Ingredient	241	2022-02-04 15:06:04.233923	2022-02-04 15:06:04.233923
436	Add cut tomatos and let it rest for 10min	Instruction	158	2022-02-04 15:06:04.245767	2022-02-04 15:06:04.245767
439	Quarkcrème mit Beerensauce Yum yum yum light dessert 🤓	Recipe	36	2022-02-04 20:20:16.044172	2022-02-04 20:21:35.611727
440	300g Beeren (TK oder frisch)	Ingredient	243	2022-02-04 20:23:42.60588	2022-02-04 20:23:42.60588
437	500g Magerquark	Ingredient	242	2022-02-04 20:20:16.032135	2022-02-04 20:23:42.610159
441	100ml Rahm	Ingredient	244	2022-02-04 20:23:42.615537	2022-02-04 20:23:42.615537
442	1 Zitrone	Ingredient	245	2022-02-04 20:23:42.621018	2022-02-04 20:23:42.621018
443	1 Pack Vanillezucker	Ingredient	246	2022-02-04 20:23:42.626736	2022-02-04 20:23:42.626736
445	1 Prise Salz	Ingredient	248	2022-02-04 20:23:42.638887	2022-02-04 20:23:42.638887
438	Beeren mit 1/2 Pack Vanillezucker und 1 TL Zucker kurz aufkochen und auskühlen lassen	Instruction	159	2022-02-04 20:20:16.041259	2022-02-04 20:26:55.325547
446	Rahm halbsteif schlagen	Instruction	160	2022-02-04 20:26:55.331915	2022-02-04 20:26:55.331915
448	Rahm darunterziehen	Instruction	162	2022-02-04 20:26:55.344512	2022-02-04 20:26:55.344512
449	Butterkekse zerbröseln	Instruction	163	2022-02-04 20:26:55.350689	2022-02-04 20:26:55.350689
450	Quarkcrème, Beeren und Butterkekse schichten und kühlstellen	Instruction	164	2022-02-04 20:26:55.357443	2022-02-04 20:26:55.357443
1354	Wendyget Wendyget	User	444	2023-10-16 19:32:23.834314	2023-10-16 19:32:23.834314
1362	WilliamJut WilliamJut	User	452	2023-10-23 16:33:58.458924	2023-10-23 16:33:58.458924
1369	Svetlsss Svetlsss	User	459	2023-10-28 12:20:02.377473	2023-10-28 12:20:02.377473
1376	Sergwaa Sergwaa	User	466	2023-10-30 08:36:05.691077	2023-10-30 08:36:05.691077
1381	casinos casinos	User	471	2023-10-30 19:25:39.662908	2023-10-30 19:25:39.662908
1384	Igorldj Igorldj	User	474	2023-10-31 01:52:39.637233	2023-10-31 01:52:39.637233
1387	Sergbuc Sergbuc	User	477	2023-10-31 15:16:50.238116	2023-10-31 15:16:50.238116
1390	Svetlcah Svetlcah	User	480	2023-11-01 00:57:00.52718	2023-11-01 00:57:00.52718
1392	Rosalbarax Rosalbarax	User	482	2023-11-01 02:04:46.295635	2023-11-01 02:04:46.295635
1394	Svetlcpy Svetlcpy	User	484	2023-11-01 09:18:23.226969	2023-11-01 09:18:23.226969
1396	Igorytr Igorytr	User	486	2023-11-01 11:40:57.447011	2023-11-01 11:40:57.447011
1398	Irinjnh Irinjnh	User	488	2023-11-01 23:24:12.019783	2023-11-01 23:24:12.019783
1400	Svetlanasoq Svetlanasoq	User	490	2023-11-02 17:09:13.345151	2023-11-02 17:09:13.345151
1402	Veronarsu Veronarsu	User	492	2023-11-02 23:59:50.99717	2023-11-02 23:59:50.99717
1404	Irinoqw Irinoqw	User	494	2023-11-03 06:33:58.426005	2023-11-03 06:33:58.426005
1406	Wendyget Wendyget	User	496	2023-11-03 11:24:10.174027	2023-11-03 11:24:10.174027
1409	Irintrw Irintrw	User	499	2023-11-03 20:44:52.984457	2023-11-03 20:44:52.984457
1411	Irinoot Irinoot	User	501	2023-11-04 05:09:53.493041	2023-11-04 05:09:53.493041
1413	Irinrbh Irinrbh	User	503	2023-11-04 18:12:46.182807	2023-11-04 18:12:46.182807
1415	Leoneqj Leoneqj	User	505	2023-11-05 05:35:03.721012	2023-11-05 05:35:03.721012
1416	Vilianawjq Vilianawjq	User	506	2023-11-05 05:35:38.642885	2023-11-05 05:35:38.642885
1417	Davidxgr Davidxgr	User	507	2023-11-05 05:35:57.134936	2023-11-05 05:35:57.134936
1419	Davidxzk Davidxzk	User	509	2023-11-06 01:37:42.840778	2023-11-06 01:37:42.840778
1421	ShaneWaype ShaneWaype	User	511	2023-11-06 09:38:34.88903	2023-11-06 09:38:34.88903
1424	Vilianacsc Vilianacsc	User	514	2023-11-06 21:39:42.551755	2023-11-06 21:39:42.551755
1426	Leonrcf Leonrcf	User	516	2023-11-07 05:10:05.435553	2023-11-07 05:10:05.435553
1428	Leonafs Leonafs	User	518	2023-11-07 16:17:28.19151	2023-11-07 16:17:28.19151
1430	Vilianaiwz Vilianaiwz	User	520	2023-11-07 19:13:23.523128	2023-11-07 19:13:23.523128
1432	FloydSmoli FloydSmoli	User	522	2023-11-07 21:13:02.046366	2023-11-07 21:13:02.046366
1434	Vikizou Vikizou	User	524	2023-11-08 00:32:47.486358	2023-11-08 00:32:47.486358
1436	Juliepd Juliepd	User	526	2023-11-08 10:07:48.884717	2023-11-08 10:07:48.884717
1438	Serzswz Serzswz	User	528	2023-11-08 11:38:26.74143	2023-11-08 11:38:26.74143
1440	Juliviy Juliviy	User	530	2023-11-09 07:05:06.189757	2023-11-09 07:05:06.189757
1442	Vikitzz Vikitzz	User	532	2023-11-09 17:21:39.256919	2023-11-09 17:21:39.256919
1444	Serzvoy Serzvoy	User	534	2023-11-10 08:14:46.08766	2023-11-10 08:14:46.08766
447	Magerquark mit 1/2 Pack Vanillezucker, 2 TL Zucker, Zitronenzeste von 1/2 Zitrone, Saft der ganze Zitronen und Salz cremig rühren	Instruction	161	2022-02-04 20:26:55.338077	2022-02-24 11:07:41.504989
198	Pimpinelle (Kleiner Wiesenkopf)	Ingredient	113	2021-12-08 09:30:15.929645	2022-02-26 07:52:35.759099
552	Miriam Wüest	User	22	2022-03-16 15:57:10.027502	2022-03-16 15:57:10.027502
555	swiss favorite carrot cake Yummi	Recipe	65	2022-03-16 15:57:10.167192	2022-03-16 16:00:04.520609
577	cut aubergines in 1.5cm slices	Instruction	204	2022-04-03 18:01:01.384653	2022-04-03 18:29:31.183755
559	12 marzipan carrots	Ingredient	287	2022-03-16 16:04:49.861664	2022-03-16 16:04:49.861664
554	Beat the sugar, egg yolk and water in a bowl with a hand whisk for about 5 minutes until fluffy.	Instruction	195	2022-03-16 15:57:10.156244	2022-03-16 16:10:44.176638
560	Mix the carrots and all the ingredients up to and including the gin into the mixture. mix in the flour and baking powder.\r\n	Instruction	196	2022-03-16 16:10:44.187359	2022-03-16 16:10:44.187359
561	Beat the egg whites with the salt and fold into the mixture.	Instruction	197	2022-03-16 16:10:44.219575	2022-03-16 16:10:44.219575
562	Bake for 45 minutes in a preheated oven at 180 degrees (top and bottom heat) on the middle shelf.	Instruction	198	2022-03-16 16:10:44.235547	2022-03-16 16:10:44.235547
563	Cool, remove carefully and don't forget to decorate.	Instruction	199	2022-03-16 16:10:44.251552	2022-03-16 16:10:44.251552
556	1 dl favorite gin,\r\n1 lime, grated zest and juice,\r\n1 hand full of poppy seeds,\r\n250 grams of carrots,\r\n250 ground almonds,\r\n80 grams of flour,\r\n2 teaspoons of baking soda	Ingredient	284	2022-03-16 16:04:49.836903	2022-03-16 16:16:42.258375
558	300 grams of powdered sugar,\r\n2 tbsp water,\r\n2 tbsp lime juice	Ingredient	286	2022-03-16 16:04:49.85529	2022-03-16 16:16:42.268377
1446	Serzcjn Serzcjn	User	536	2023-11-10 17:23:36.160684	2023-11-10 17:23:36.160684
419	Pasta aglio 🧄 e olio 🍝  Probably my number one ☝️ pasta recipe. You‘ll be surprised by how tasty it is, depite, or maybe because of its simplicity. All you need is a blender, garlic 🧄, parsley 🌿 and some cayenne pepper 🌶 powder.	Recipe	34	2022-01-22 13:26:21.815535	2022-02-14 00:04:02.889791
589	1 tbsp tomato purée	Ingredient	303	2022-04-03 18:14:29.874517	2022-04-03 18:31:54.579846
557	5 egg white,\r\n1 pinch of salt	Ingredient	285	2022-03-16 16:04:49.845023	2022-11-02 06:07:28.149139
537	Christian Paris	User	12	2022-02-15 15:39:39.914275	2022-02-15 15:39:39.914275
538	Fancis Brunner	User	13	2022-02-15 15:39:41.37742	2022-02-15 15:39:41.37742
539	Maria Brunner	User	14	2022-02-15 15:39:42.817119	2022-02-15 15:39:42.817119
540	Janette Auer	User	15	2022-02-15 15:39:44.270038	2022-02-15 15:39:44.270038
541	Marc Walter	User	16	2022-02-15 15:39:45.747746	2022-02-15 15:39:45.747746
542	Hanspeter Friedrich	User	18	2022-02-15 15:44:35.588476	2022-02-15 15:44:35.588476
543	Jacob Cruz	User	19	2022-02-15 15:44:37.048164	2022-02-15 15:44:37.048164
544	Alexandra Mince	User	20	2022-02-15 15:44:38.5161	2022-02-15 15:44:38.5161
545	Connie Allen	User	21	2022-02-23 10:14:31.159243	2022-02-23 10:14:31.159243
1310	Annagoape Annagoape	User	414	2023-09-09 05:04:34.83195	2023-09-09 05:04:34.83195
1334	MashaDyeva MashaDyeva	User	424	2023-09-21 15:05:10.427385	2023-09-21 15:05:10.427385
1345	Robertmow Robertmow	User	435	2023-10-03 00:52:11.575194	2023-10-03 00:52:11.575194
1355	IraFetle IraFetle	User	445	2023-10-17 22:54:39.732992	2023-10-17 22:54:39.732992
1363	Igordyl Igordyl	User	453	2023-10-23 22:03:15.157604	2023-10-23 22:03:15.157604
197	Parsley (Petersilie)	Ingredient	112	2021-12-08 09:30:15.923878	2022-02-26 07:52:07.45148
199	Sorrel (Sauerampfer)	Ingredient	114	2021-12-08 09:30:15.935204	2022-02-26 07:52:07.459901
200	Chives (Schnittlauch)	Ingredient	115	2021-12-08 09:30:15.943784	2022-02-26 07:52:07.464869
553	5 egg yolks,\r\n250 grams of sugar,\r\n2 tablespoons hot water	Ingredient	283	2022-03-16 15:57:10.137416	2022-11-02 06:08:07.658131
575	Adam Lonsdale	User	23	2022-03-31 12:42:26.817313	2022-03-31 12:42:26.817313
578	Moussaka à la Naomi Vegetarian moussaka using beans instead of minced meat. Super hearty dish and it’s even better reheated 😋	Recipe	69	2022-04-03 18:01:01.389098	2022-04-03 18:02:54.50003
576	2 aubergines 🍆 	Ingredient	292	2022-04-03 18:01:01.364269	2022-04-03 18:14:29.79559
579	500g waxy potatoes 🥔 	Ingredient	293	2022-04-03 18:14:29.803026	2022-04-03 18:14:29.803026
580	salt	Ingredient	294	2022-04-03 18:14:29.810622	2022-04-03 18:14:29.810622
581	olive oil	Ingredient	295	2022-04-03 18:14:29.818357	2022-04-03 18:14:29.818357
582	2 tbsp olive oil	Ingredient	296	2022-04-03 18:14:29.825267	2022-04-03 18:14:29.825267
583	1 small onion 🧅 	Ingredient	297	2022-04-03 18:14:29.832131	2022-04-03 18:14:29.832131
584	3 cloves 🧄 	Ingredient	298	2022-04-03 18:14:29.838855	2022-04-03 18:14:29.838855
585	1 can (400g) pelati	Ingredient	299	2022-04-03 18:14:29.847501	2022-04-03 18:14:29.847501
586	1 can (400g) cannellini beans (or any other beans)	Ingredient	300	2022-04-03 18:14:29.854158	2022-04-03 18:14:29.854158
587	1 pinch sugar	Ingredient	301	2022-04-03 18:14:29.860881	2022-04-03 18:14:29.860881
588	1 dash white wine vinegar	Ingredient	302	2022-04-03 18:14:29.867879	2022-04-03 18:14:29.867879
590	1 cube veggie stock	Ingredient	304	2022-04-03 18:14:29.88111	2022-04-03 18:14:29.88111
591	2 tbsp oregano	Ingredient	305	2022-04-03 18:14:29.887901	2022-04-03 18:14:29.887901
592	1/4 tsp cinnamon	Ingredient	306	2022-04-03 18:14:29.894206	2022-04-03 18:14:29.894206
593	salt & pepper	Ingredient	307	2022-04-03 18:14:29.900282	2022-04-03 18:14:29.900282
594	40g butter 🧈 	Ingredient	308	2022-04-03 18:14:29.906656	2022-04-03 18:14:29.906656
595	30g flour	Ingredient	309	2022-04-03 18:14:29.912929	2022-04-03 18:14:29.912929
596	4dl milk	Ingredient	310	2022-04-03 18:14:29.919075	2022-04-03 18:14:29.919075
597	75g pecorino 🧀 	Ingredient	311	2022-04-03 18:14:29.924961	2022-04-03 18:14:29.924961
598	2 eggs 🥚 	Ingredient	312	2022-04-03 18:14:29.931058	2022-04-03 18:14:29.931058
599	salt & pepper	Ingredient	313	2022-04-03 18:14:29.93726	2022-04-03 18:14:29.93726
600	preheat oven to 180 degrees	Instruction	205	2022-04-03 18:29:31.178514	2022-04-03 18:29:31.178514
601	salt on both sides and place on paper towel	Instruction	206	2022-04-03 18:29:31.190567	2022-04-03 18:29:31.190567
602	cover with paper towel and weight down with chopping board	Instruction	207	2022-04-03 18:29:31.197063	2022-04-03 18:29:31.197063
603	leave for 30min	Instruction	208	2022-04-03 18:29:31.203496	2022-04-03 18:29:31.203496
604	cut potatoes in 1cm slices	Instruction	209	2022-04-03 18:29:31.209684	2022-04-03 18:29:31.209684
606	back potatoes in oven for 15min	Instruction	211	2022-04-03 18:29:31.221073	2022-04-03 18:29:31.221073
607	after 30min spread some olive oil over aubergines	Instruction	212	2022-04-03 18:29:31.226331	2022-04-03 18:29:31.226331
608	back aubergines in oven for 15min	Instruction	213	2022-04-03 18:29:31.231847	2022-04-03 18:29:31.231847
609	for the tomato sauce: heat olive oil in a pan	Instruction	214	2022-04-03 18:29:31.242087	2022-04-03 18:29:31.242087
610	add chopped onion and pressed garlic and fry for 5min	Instruction	215	2022-04-03 18:29:31.248308	2022-04-03 18:29:31.248308
611	add salt, pepper, sugar and vinegar and fry for 1min	Instruction	216	2022-04-03 18:29:31.254845	2022-04-03 18:29:31.254845
612	add tomato purée and fry for 1min	Instruction	217	2022-04-03 18:29:31.26034	2022-04-03 18:29:31.26034
613	add pelati, 400ml water and can of beans (incl. liquid)	Instruction	218	2022-04-03 18:29:31.266143	2022-04-03 18:29:31.266143
614	add veggie stock cube, oregano and cinnamon	Instruction	219	2022-04-03 18:29:31.271873	2022-04-03 18:29:31.271873
615	cook for 15min	Instruction	220	2022-04-03 18:29:31.27758	2022-04-03 18:29:31.27758
616	for the bechamel sauce: add butter, flour and milk to a separate pan and bring to cook (stir well)	Instruction	221	2022-04-03 18:29:31.283911	2022-04-03 18:29:31.283911
617	let it cool down a bit	Instruction	222	2022-04-03 18:29:31.289761	2022-04-03 18:29:31.289761
619	now layer all starting with aubergine and potatoes, add tomato sauce and then the bechamel sauce, repeat twice and finish with bechamel sauce	Instruction	224	2022-04-03 18:29:31.301318	2022-04-03 18:29:31.301318
620	sprinkle with remaining 25g pecorino	Instruction	225	2022-04-03 18:29:31.307004	2022-04-03 18:29:31.307004
621	back in oven for ca. 40min	Instruction	226	2022-04-03 18:29:31.312766	2022-04-03 18:29:31.312766
622	let it rest for 10min before serving	Instruction	227	2022-04-03 18:29:31.318809	2022-04-03 18:29:31.318809
623	enjoy!! 🙂	Instruction	228	2022-04-03 18:29:31.324235	2022-04-03 18:29:31.324235
618	add eggs, 50g of pecorino, salt, pepper and mix well	Instruction	223	2022-04-03 18:29:31.295977	2022-04-03 18:31:18.288883
605	sprinkle with some olive oil and salt	Instruction	210	2022-04-03 18:29:31.21519	2022-04-03 18:32:45.53077
626	Vanilla sauce Vanilla sauce for Germknödel or for any other dessert 🤩 	Recipe	70	2022-04-03 18:33:06.596605	2022-04-03 18:34:23.397131
651	130ml milk	Ingredient	329	2022-08-16 20:15:19.236172	2022-08-16 20:25:27.948053
627	1 vanilla pod	Ingredient	315	2022-04-03 18:36:48.740616	2022-04-03 18:36:48.740616
628	1 pack vanilla sugar	Ingredient	316	2022-04-03 18:36:48.747501	2022-04-03 18:36:48.747501
629	3.5 tbsp sugar	Ingredient	317	2022-04-03 18:36:48.753837	2022-04-03 18:36:48.753837
630	1 pinch salt	Ingredient	318	2022-04-03 18:36:48.760655	2022-04-03 18:36:48.760655
631	2 tbsp corn starch	Ingredient	319	2022-04-03 18:36:48.767249	2022-04-03 18:36:48.767249
632	2 eggs	Ingredient	320	2022-04-03 18:36:48.773465	2022-04-03 18:36:48.773465
625	add all ingredients into pan	Instruction	229	2022-04-03 18:33:06.592937	2022-04-03 18:39:48.053627
633	while stirring with an egg whisk bring almost to boil	Instruction	230	2022-04-03 18:39:48.059655	2022-04-03 18:39:48.059655
634	take away from heat and keep stirring for another 1-2min	Instruction	231	2022-04-03 18:39:48.066027	2022-04-03 18:39:48.066027
624	6dl milk	Ingredient	314	2022-04-03 18:33:06.585912	2022-04-03 18:41:04.032322
635	4dl cream	Ingredient	321	2022-04-03 18:41:04.03927	2022-04-03 18:41:04.03927
636	Inou Ridder	User	24	2022-04-12 20:37:55.765819	2022-04-12 20:37:55.765819
329	1 pack gyoza dough (24 sheets)	Ingredient	184	2021-12-24 14:22:22.80301	2022-05-18 11:47:40.899662
639	Fluffy pancakes 🥞 Tried to make some fluffy 🥞 and thought they ended up quite nice! Very simple and straightforward to make.	Recipe	71	2022-07-04 18:51:30.399971	2022-07-04 18:53:07.912283
637	300g flour	Ingredient	322	2022-07-04 18:51:30.355909	2022-07-04 18:55:00.615215
640	300ml milk 🥛	Ingredient	323	2022-07-04 18:55:00.62137	2022-07-04 18:55:00.62137
641	2 teaspoons sugar	Ingredient	324	2022-07-04 18:55:00.627787	2022-07-04 18:55:00.627787
642	2 teaspoons baking powder	Ingredient	325	2022-07-04 18:55:00.634671	2022-07-04 18:55:00.634671
643	1 teaspoon salt 🧂	Ingredient	326	2022-07-04 18:55:00.640686	2022-07-04 18:55:00.640686
644	1 egg 🥚 	Ingredient	327	2022-07-04 18:55:00.646383	2022-07-04 18:55:00.646383
638	Put all the dry stuff into a bowl (flour, sugar, baking powder, salt) and mix well	Instruction	232	2022-07-04 18:51:30.395873	2022-07-04 19:01:26.048345
645	Add the egg and the milk	Instruction	233	2022-07-04 19:01:26.055374	2022-07-04 19:01:26.055374
646	Melt the butter and add as well	Instruction	234	2022-07-04 19:01:26.064011	2022-07-04 19:01:26.064011
647	Take a small soup spoon of dough and pour it into a preheated, only slightly-greased non-stick pan	Instruction	235	2022-07-04 19:01:26.070622	2022-07-04 19:01:26.070622
648	Give is enough time on medium heat (don’t touch it) before turning it around and frying the other side	Instruction	236	2022-07-04 19:01:26.076137	2022-07-04 19:01:26.076137
649	Enjoy your pancakes with some butter and maple 🍁/ palm🌴 syrup 	Instruction	237	2022-07-04 19:01:26.081557	2022-07-04 19:01:26.081557
650	60g butter 🧈	Ingredient	328	2022-07-04 19:02:28.384879	2022-07-04 19:02:28.384879
653	Germknödel  Stephen’s life time favorite dish 😋 It’s doughy, fluffy, hearty and just delicous! Served with vanilla sauce (find recipe here in goormey) and poppy seeds sugar dust 🤤	Recipe	72	2022-08-16 20:15:19.24997	2022-08-16 20:19:50.422103
654	42g fresh yeast	Ingredient	330	2022-08-16 20:25:27.954067	2022-08-16 20:25:27.954067
655	2 tbsp sugar	Ingredient	331	2022-08-16 20:25:27.959068	2022-08-16 20:25:27.959068
656	400g flour	Ingredient	332	2022-08-16 20:25:27.964101	2022-08-16 20:25:27.964101
657	1/2 tsp salt	Ingredient	333	2022-08-16 20:25:27.968868	2022-08-16 20:25:27.968868
659	2 eggs	Ingredient	335	2022-08-16 20:25:27.979289	2022-08-16 20:25:27.979289
660	8 tsp plum jam (for Swiss people: go for Alnatura Pflaumenmus, do not use Pflaumenkonfi)	Ingredient	336	2022-08-16 20:25:27.984473	2022-08-16 20:25:27.984473
661	1 tbsp sugar	Ingredient	337	2022-08-16 20:25:27.989398	2022-08-16 20:25:27.989398
662	3 tbsp poppy seeds	Ingredient	338	2022-08-16 20:25:27.994126	2022-08-16 20:25:27.994126
663	1l vanilla sauce (find recipe in goormey)	Ingredient	339	2022-08-16 20:25:27.999002	2022-08-16 20:25:27.999002
652	Gently heat milk to lukewarm, add yeast and 1 tbsp sugar and mix until the yeast is fully dissolved (mix should never boil, the yeast would die)	Instruction	238	2022-08-16 20:15:19.246605	2022-08-16 20:38:10.935818
664	Add flour, 1 tbsp sugar, salt, butter and eggs to bowl and mix with a hand mixer	Instruction	239	2022-08-16 20:38:10.94069	2022-08-16 20:38:10.94069
658	50g soft butter	Ingredient	334	2022-08-16 20:25:27.974078	2022-08-16 20:40:31.007532
667	Divide dough into 8 pieces, form discs, fill them with each 1 tsp plum jam and form round dumplings. Let them rest for 15min.	Instruction	242	2022-08-16 20:38:10.954481	2022-08-16 20:38:10.954481
668	Steam dumplings for 12-15min	Instruction	243	2022-08-16 20:38:10.958429	2022-08-16 20:38:10.958429
669	Grind sugar and poppy seeds in a mortar	Instruction	244	2022-08-16 20:38:10.963417	2022-08-16 20:38:10.963417
665	Add milk yeast mix little by little to bowl and keep mixing until smooth dough forms	Instruction	240	2022-08-16 20:38:10.945236	2022-08-16 20:40:31.01084
666	Form the dough into a ball on a flour dusted surface and let the dough rise in the bowl covered with a kitchen towel at a warm place (ca. 1h) until the dough volume is doubled	Instruction	241	2022-08-16 20:38:10.94951	2022-08-16 20:40:31.013784
670	Serve dumplings with vanilla sauce and poppy seeds sugar mix	Instruction	245	2022-08-16 20:38:10.967506	2022-08-16 20:40:31.016954
671	1 teaspoon of dashi (fish flakes - optional)	Ingredient	340	2022-10-05 16:01:29.765164	2022-10-05 16:01:29.765164
674	Teriyaki sauce jelly Teriyaki sauce in jelly form. The jelly was an accident but ended up being super delicious 😋 and useful to thinken other dishes 😃	Recipe	73	2022-11-10 17:29:22.320201	2022-11-10 17:31:46.635376
672	100ml soy sauce	Ingredient	341	2022-11-10 17:29:22.309621	2022-11-10 17:35:42.66665
675	100ml water	Ingredient	342	2022-11-10 17:35:42.670542	2022-11-10 17:35:42.670542
676	50g brown sugar	Ingredient	343	2022-11-10 17:35:42.675188	2022-11-10 17:35:42.675188
677	1 tbsp honey	Ingredient	344	2022-11-10 17:35:42.678897	2022-11-10 17:35:42.678897
678	1 tbsp ground fresh garlic 	Ingredient	345	2022-11-10 17:35:42.686103	2022-11-10 17:35:42.686103
679	1 tsp ground fresh ginger	Ingredient	346	2022-11-10 17:35:42.690426	2022-11-10 17:35:42.690426
680	1 tsp sesame oil	Ingredient	347	2022-11-10 17:35:42.694258	2022-11-10 17:35:42.694258
673	Mix all ingredients except for the cornstarch in a pan and let it simmer for 10min	Instruction	246	2022-11-10 17:29:22.317939	2022-11-10 17:38:56.640689
683	The teriyaki sauce is ready to use (warm) or fill into a glass and let it cool down to get the jelly	Instruction	248	2022-11-10 17:38:56.647818	2022-11-10 17:38:56.647818
684	Use as a dip or use to cook (tofu, meat, veggies or whatever makes you happy 😊)	Instruction	249	2022-11-10 17:38:56.65109	2022-11-10 17:38:56.65109
681	1.5 tbsp cornstarch dissolved in a bit of cold water	Ingredient	348	2022-11-10 17:35:42.697593	2022-11-10 17:39:29.817453
682	Add cornstarch (dissolved in cold water) and bring to cook to thinken the sauce, cook for another 2min	Instruction	247	2022-11-10 17:38:56.644252	2022-11-10 17:39:52.893143
774	🥜 🍜 💥 Quick delicious noodles	Recipe	81	2023-01-08 14:42:47.305752	2023-01-08 14:49:43.049369
694	200g pumpkin	Ingredient	353	2022-11-28 17:11:38.809187	2022-11-28 17:14:21.641119
697	2 garlic cloves	Ingredient	354	2022-11-28 17:14:21.659622	2022-11-28 17:14:21.659622
689	WCFedOuEUfwv yuPVwQXIrL	User	25	2022-11-24 12:51:53.940415	2022-11-24 12:51:53.940415
690		Ingredient	351	2022-11-24 12:52:28.764335	2022-11-24 12:52:28.764335
691		Instruction	251	2022-11-24 12:52:28.772367	2022-11-24 12:52:28.772367
692	 	Recipe	75	2022-11-24 12:52:28.775818	2022-11-24 12:52:28.775818
693	3 dl water	Ingredient	352	2022-11-27 12:28:50.072938	2022-11-27 12:28:50.072938
698	1 chili	Ingredient	355	2022-11-28 17:14:21.676863	2022-11-28 17:14:21.676863
699	Handful parsley	Ingredient	356	2022-11-28 17:14:21.777333	2022-11-28 17:14:21.777333
700	340g pasta (or as much as 2 people can eat)	Ingredient	357	2022-11-28 17:14:21.790486	2022-11-28 17:14:21.790486
701	Parmesan to serve	Ingredient	358	2022-11-28 17:14:21.800466	2022-11-28 17:14:21.800466
702	Roasted pumpkin seeds to servce	Ingredient	359	2022-11-28 17:14:21.813606	2022-11-28 17:14:21.813606
696	Pumpkin pasta 🎃  Sooo delicious 😋 perfect autumn dish 🙂	Recipe	76	2022-11-28 17:11:38.839717	2022-12-20 21:19:24.60821
703	Cook garlic cloves in water for 5min	Instruction	253	2022-11-28 17:20:07.416141	2022-11-28 17:20:07.416141
695	Bake pumpkin in oven until it’s tender	Instruction	252	2022-11-28 17:11:38.833089	2022-11-28 19:40:12.45443
844	Chop garlic	Instruction	307	2023-01-14 14:09:43.727356	2023-01-14 14:09:43.727356
845	Butter an oven-safe pan	Instruction	308	2023-01-14 14:09:43.739819	2023-01-14 14:09:43.739819
1311	MorrisSip MorrisSip	User	415	2023-09-09 12:10:37.622456	2023-09-09 12:10:37.622456
705	Cook pasta in salt water until they are al denta	Instruction	255	2022-11-28 17:20:07.482758	2022-11-28 17:20:07.482758
707	Add chopped parsley leaves	Instruction	257	2022-11-28 17:20:07.559074	2022-11-28 17:20:07.559074
708	Serve with parmesan and roasted pumpkin seeds	Instruction	258	2022-11-28 17:20:07.597419	2022-11-28 17:20:07.597419
709	Salt and pepper	Ingredient	360	2022-11-28 17:20:42.788306	2022-11-28 17:20:42.788306
712	Pumpkin pie This is a quick and dirty recipe with a lot of cheating 😆	Recipe	77	2022-11-28 19:21:13.145788	2022-11-28 19:21:59.039153
710	1 pack shortpastry	Ingredient	361	2022-11-28 19:21:13.114	2022-11-28 19:27:26.27768
714	1 pack vanilla pudding powder	Ingredient	363	2022-11-28 19:27:26.327773	2022-11-28 19:27:26.327773
715	250g cream	Ingredient	364	2022-11-28 19:27:26.356142	2022-11-28 19:27:26.356142
716	100g sugar	Ingredient	365	2022-11-28 19:27:26.370148	2022-11-28 19:27:26.370148
717	2 pinches of salt	Ingredient	366	2022-11-28 19:27:26.406528	2022-11-28 19:27:26.406528
718	3 eggs	Ingredient	367	2022-11-28 19:27:26.438246	2022-11-28 19:27:26.438246
719	3 tsp ground cinnamon	Ingredient	368	2022-11-28 19:27:26.476248	2022-11-28 19:27:26.476248
720	1 tsp ground ginger	Ingredient	369	2022-11-28 19:27:26.504738	2022-11-28 19:27:26.504738
721	1/2 tsp ground cardamom	Ingredient	370	2022-11-28 19:27:26.532814	2022-11-28 19:27:26.532814
722	1/2 tsp ground cloves	Ingredient	371	2022-11-28 19:27:26.55666	2022-11-28 19:27:26.55666
723	1/2 tsp lemon zest	Ingredient	372	2022-11-28 19:27:26.57671	2022-11-28 19:27:26.57671
724	1/4 tsp ground nutmeg	Ingredient	373	2022-11-28 19:27:26.587185	2022-11-28 19:27:26.587185
725	Preheat oven to 180 degrees	Instruction	260	2022-11-28 19:37:14.113939	2022-11-28 19:37:14.113939
711	Mix vanilla pudding powder and cream	Instruction	259	2022-11-28 19:21:13.135166	2022-11-28 19:37:14.122418
726	Add pumpkin puree and mix well	Instruction	261	2022-11-28 19:37:14.131539	2022-11-28 19:37:14.131539
727	In a separate bowl, mix eggs, sugar and salt with a handheld electrix mixer until it’s fluffy	Instruction	262	2022-11-28 19:37:14.148127	2022-11-28 19:37:14.148127
728	Mix remaining spices, pumpkin pudding mix and egg sugar mix together (no need to use the mixer)	Instruction	263	2022-11-28 19:37:14.158331	2022-11-28 19:37:14.158331
729	Put shortpastry into a cake pan (either us baking paper or butter to make the pie not sticking to the pan)	Instruction	264	2022-11-28 19:37:14.170241	2022-11-28 19:37:14.170241
730	Put pumpkin mix into shortpastry	Instruction	265	2022-11-28 19:37:14.183849	2022-11-28 19:37:14.183849
731	Bake the pie in the middle of the oven for ca. 50min	Instruction	266	2022-11-28 19:37:14.198646	2022-11-28 19:37:14.198646
732	Serve with whipped cream and/or vanilla ice cream	Instruction	267	2022-11-28 19:37:14.207839	2022-11-28 19:37:14.207839
713	400g baked pumpkin (pumpkin puree)	Ingredient	362	2022-11-28 19:27:26.303412	2022-11-28 19:38:22.3064
733	Whipped cream and/or vanilla ice cream to serve	Ingredient	374	2022-11-28 19:38:22.333689	2022-11-28 19:38:22.333689
1335	ytmp3music ytmp3music	User	425	2023-09-22 00:15:59.299954	2023-09-22 00:15:59.299954
706	Bring together pasta, pasta water and pumpkin mix in a pan (it should me a creamy mix)	Instruction	256	2022-11-28 17:20:07.522425	2022-11-28 19:40:12.474821
736	Kale & chickpeas I just threw together what I found in our fridge and cupboard 🤓	Recipe	78	2022-12-20 18:38:05.455308	2022-12-20 21:08:13.889655
734	1 pack kale (around 300g)	Ingredient	375	2022-12-20 18:38:05.436213	2022-12-20 21:11:17.475231
737	2 tbsp olive oil	Ingredient	376	2022-12-20 21:11:17.484445	2022-12-20 21:11:17.484445
738	1 small onion	Ingredient	377	2022-12-20 21:11:17.493833	2022-12-20 21:11:17.493833
739	3 cloves garlic	Ingredient	378	2022-12-20 21:11:17.502701	2022-12-20 21:11:17.502701
740	1 chili	Ingredient	379	2022-12-20 21:11:17.513936	2022-12-20 21:11:17.513936
741	1 tbsp soy sauce	Ingredient	380	2022-12-20 21:11:17.528559	2022-12-20 21:11:17.528559
742	1 tsp rice vinegar (or use another vinegar and a pitch of sugar)	Ingredient	381	2022-12-20 21:11:17.552127	2022-12-20 21:11:17.552127
743	1 tsp Dijon mustard	Ingredient	382	2022-12-20 21:11:17.558331	2022-12-20 21:11:17.558331
744	Pepper	Ingredient	383	2022-12-20 21:11:17.565286	2022-12-20 21:11:17.565286
745	1 can chickpeas	Ingredient	384	2022-12-20 21:11:17.582425	2022-12-20 21:11:17.582425
735	Chop onion, garlic and chili	Instruction	268	2022-12-20 18:38:05.450337	2022-12-20 21:15:19.976572
746	Heat olive oil in a pan and add onion, garlic and chili and fry for 3 minuea	Instruction	269	2022-12-20 21:15:19.98841	2022-12-20 21:15:19.98841
747	Season with soy sauce, vinegar and pepper	Instruction	270	2022-12-20 21:15:19.997592	2022-12-20 21:15:19.997592
750	50ml cream (optional, to indulge)	Ingredient	385	2022-12-20 21:17:15.033482	2022-12-20 21:17:15.033482
748	Add mustard, the liquid of the chickpeas and a half a cup of water (and cream if you want)	Instruction	271	2022-12-20 21:15:20.006393	2022-12-20 21:17:15.063283
749	Cut kale into stripes, add to pan, close pan with a lid and let it cook for 10 minutes (mix after 5 minutes)	Instruction	272	2022-12-20 21:15:20.01272	2022-12-20 21:17:15.077698
1346	online gambling in new jersey online gambling in new jersey	User	436	2023-10-03 07:22:10.653706	2023-10-03 07:22:10.653706
1356	Evgencib Evgencib	User	446	2023-10-18 11:03:57.033351	2023-10-18 11:03:57.033351
1364	DudleyBom DudleyBom	User	454	2023-10-24 15:52:50.504664	2023-10-24 15:52:50.504664
756	Curry Cauliflowers Simple and fast baked cauliflower, with a curry twist	Recipe	80	2023-01-02 17:08:34.020229	2023-01-02 17:09:28.052621
754	1 whole cauliflower	Ingredient	387	2023-01-02 17:08:33.996377	2023-01-02 17:09:41.832966
771	1/2 teaspoon honey	Ingredient	398	2023-01-02 17:31:56.112759	2023-01-03 06:29:53.516838
757	2 tablespoons vinegar	Ingredient	388	2023-01-02 17:11:23.432604	2023-01-02 17:27:27.540654
758	4 tablespoons olive oil 🫒 	Ingredient	389	2023-01-02 17:27:27.554551	2023-01-02 17:27:27.554551
759	2 teaspoons curry powder	Ingredient	390	2023-01-02 17:27:27.566127	2023-01-02 17:27:27.566127
760	2 teaspoons garlic powder 🧄 	Ingredient	391	2023-01-02 17:27:27.575713	2023-01-02 17:27:27.575713
761	1 teaspoon coriander seeds	Ingredient	392	2023-01-02 17:27:27.586699	2023-01-02 17:27:27.586699
762	1 teaspoon cumin seed	Ingredient	393	2023-01-02 17:27:27.59938	2023-01-02 17:27:27.59938
763	1 teaspoon mustard	Ingredient	394	2023-01-02 17:27:27.612941	2023-01-02 17:27:27.612941
764	1 teaspoon salt 🧂 	Ingredient	395	2023-01-02 17:27:27.623393	2023-01-02 17:27:27.623393
765	1 teaspoon soy sauce	Ingredient	396	2023-01-02 17:27:27.637094	2023-01-02 17:27:27.637094
766	Pinch of chilli powder (optional)	Ingredient	397	2023-01-02 17:27:27.655493	2023-01-02 17:27:27.655493
755	Half cauliflower and rip into small bite-sized peaces	Instruction	274	2023-01-02 17:08:34.012882	2023-01-02 17:30:55.581775
767	Grind cumin and coriander seeds	Instruction	275	2023-01-02 17:30:55.596035	2023-01-02 17:30:55.596035
768	Mix all ingredients and ground seeds into a paste	Instruction	276	2023-01-02 17:30:55.606446	2023-01-02 17:30:55.606446
769	Mix paste and cauliflower peaces together	Instruction	277	2023-01-02 17:30:55.618283	2023-01-02 17:30:55.618283
770	Distribute cauliflower on a baking tray and bake for 20mins at around 200C	Instruction	278	2023-01-02 17:30:55.628186	2023-01-02 17:30:55.628186
1370	Sergzli Sergzli	User	460	2023-10-29 04:11:06.689078	2023-10-29 04:11:06.689078
1371	Igorljz Igorljz	User	461	2023-10-29 04:11:10.162087	2023-10-29 04:11:10.162087
1372	Svetlfgy Svetlfgy	User	462	2023-10-29 04:11:52.696165	2023-10-29 04:11:52.696165
1377	Igorbfw Igorbfw	User	467	2023-10-30 08:48:13.488519	2023-10-30 08:48:13.488519
798	1 tsp lemon zest	Ingredient	418	2023-01-14 13:24:56.733257	2023-01-14 13:31:32.782361
1312	VernonPioke VernonPioke	User	416	2023-09-11 08:58:01.811033	2023-09-11 08:58:01.811033
785	Cook ramen, keep some starchy water	Instruction	280	2023-01-08 15:05:36.694288	2023-01-08 15:05:36.694288
801	Roasted sesame, pumpkin and/or sunflower seeds (or any other roasted seeds)	Ingredient	421	2023-01-14 13:24:56.770696	2023-01-14 13:31:32.790305
806	Season with crushed garlic, lemon zest, lemon juice, olive oil, salt and pepper	Instruction	288	2023-01-14 13:30:23.628741	2023-01-14 13:32:11.132955
810	Cheesecake 🍰 Very simple recipe 🤓	Recipe	83	2023-01-14 13:32:33.476307	2023-01-14 13:42:23.195606
152	Marie Rose	User	11	2021-12-03 09:48:42.584045	2023-01-08 15:15:31.887929
811	200g pure butter shortbread highlanders (Walkers from Migros) or any other cookies	Ingredient	423	2023-01-14 13:45:44.427008	2023-01-14 13:45:44.427008
812	pinch of salt	Ingredient	424	2023-01-14 13:45:44.450524	2023-01-14 13:45:44.450524
788	150g ramen noodle	Ingredient	410	2023-01-08 21:36:29.497935	2023-01-09 15:44:55.047708
772	2 garlic cloves	Ingredient	399	2023-01-08 14:42:47.282864	2023-01-09 15:44:55.058045
775	Knob of ginger	Ingredient	400	2023-01-08 15:05:36.552112	2023-01-09 15:44:55.066544
776	Chilli flakes	Ingredient	401	2023-01-08 15:05:36.564246	2023-01-09 15:44:55.073906
777	Handful spring onions\r\n	Ingredient	402	2023-01-08 15:05:36.579655	2023-01-09 15:44:55.082534
778	Roasted sesame oil	Ingredient	403	2023-01-08 15:05:36.59613	2023-01-09 15:44:55.090482
780	(Light) Soy sauce	Ingredient	405	2023-01-08 15:05:36.622946	2023-01-09 15:44:55.098938
781	Hoisin sauce	Ingredient	406	2023-01-08 15:05:36.637058	2023-01-09 15:44:55.108425
782	Rice vinegar	Ingredient	407	2023-01-08 15:05:36.650833	2023-01-09 15:44:55.118225
783	Sesame paste	Ingredient	408	2023-01-08 15:05:36.663636	2023-01-09 15:44:55.12903
784	Peanut butter	Ingredient	409	2023-01-08 15:05:36.676533	2023-01-09 15:44:55.137384
786	Throw in your bowl;\r\n- pressed garlic\r\n- grated ginger\r\n- 1 tbsp chilli\r\n- chopped spring onions\r\n\r\nHeat oil and sizzle over.	Instruction	281	2023-01-08 15:05:36.705838	2023-01-09 15:44:55.147202
787	Add;\r\n- 3 tbsp light soy sauce\r\n- 1 tbsp hoisin sauce\r\n- 1.5 tbsp rice vinegar\r\n- 2 tbsp sesame paste\r\n- 1 tbsp peanut butter \r\n\r\nStir. Add more starchy water, stir more, until creamy as fuck.\r\nTop with chilli, fresh coriander and most importantly fried garlic and garlic oil (yes, thats a staple!). Slice of lime on the side!\r\nBHOOM!	Instruction	282	2023-01-08 15:05:36.722314	2023-01-09 15:44:55.154423
791	Kohlrabi beans salad Inspired by Ottolenghi and added my own twist to it. The beans make this salad super creamy ☺️	Recipe	82	2023-01-14 13:19:05.196523	2023-01-14 13:21:28.691676
789	1 medium sized kohlrabi	Ingredient	411	2023-01-14 13:19:05.156426	2023-01-14 13:24:56.652027
792	1 spring onion	Ingredient	412	2023-01-14 13:24:56.664403	2023-01-14 13:24:56.664403
793	Handful dill	Ingredient	413	2023-01-14 13:24:56.673706	2023-01-14 13:24:56.673706
794	Handful dried cassis	Ingredient	414	2023-01-14 13:24:56.683394	2023-01-14 13:24:56.683394
795	1 can borlotti beans (or any other beans)	Ingredient	415	2023-01-14 13:24:56.701954	2023-01-14 13:24:56.701954
796	1 garlic clove	Ingredient	416	2023-01-14 13:24:56.711147	2023-01-14 13:24:56.711147
797	4 tbsp lemon juice	Ingredient	417	2023-01-14 13:24:56.722487	2023-01-14 13:24:56.722487
799	6 tbsp olive oil	Ingredient	419	2023-01-14 13:24:56.744669	2023-01-14 13:24:56.744669
800	Salt and pepper	Ingredient	420	2023-01-14 13:24:56.756726	2023-01-14 13:24:56.756726
790	Cut kohlrabi very thinly (or use slicer) and then cut in stripes	Instruction	283	2023-01-14 13:19:05.188292	2023-01-14 13:30:23.555587
802	Cut spring onion in slices	Instruction	284	2023-01-14 13:30:23.571414	2023-01-14 13:30:23.571414
803	Chop dill	Instruction	285	2023-01-14 13:30:23.58729	2023-01-14 13:30:23.58729
804	Add all ingredients into a bowl	Instruction	286	2023-01-14 13:30:23.601886	2023-01-14 13:30:23.601886
805	Add dried cassis and washed beans	Instruction	287	2023-01-14 13:30:23.615647	2023-01-14 13:30:23.615647
807	Serve with roasted seeds	Instruction	289	2023-01-14 13:30:23.640085	2023-01-14 13:30:23.640085
813	100g melted butter	Ingredient	425	2023-01-14 13:45:44.464948	2023-01-14 13:45:44.464948
808	800g Philadelphia cream cheese	Ingredient	422	2023-01-14 13:32:33.452222	2023-01-14 13:45:44.475927
814	200g crème fraîche	Ingredient	426	2023-01-14 13:45:44.487411	2023-01-14 13:45:44.487411
815	130g sugar	Ingredient	427	2023-01-14 13:45:44.499086	2023-01-14 13:45:44.499086
816	1 pack vanilla sugar	Ingredient	428	2023-01-14 13:45:44.520025	2023-01-14 13:45:44.520025
817	1 vanilla pod	Ingredient	429	2023-01-14 13:45:44.535057	2023-01-14 13:45:44.535057
818	2 tbsp flour	Ingredient	430	2023-01-14 13:45:44.548621	2023-01-14 13:45:44.548621
819	4 eggs	Ingredient	431	2023-01-14 13:45:44.561204	2023-01-14 13:45:44.561204
820	1 tbsp lemon juice	Ingredient	432	2023-01-14 13:45:44.585537	2023-01-14 13:45:44.585537
821	1 tsp lemon zest	Ingredient	433	2023-01-14 13:45:44.59527	2023-01-14 13:45:44.59527
822	Preheat oven to 175 degrees celsius	Instruction	291	2023-01-14 13:57:02.614064	2023-01-14 13:57:02.614064
823	Butter a cake pan	Instruction	292	2023-01-14 13:57:02.625495	2023-01-14 13:57:02.625495
809	Crush cookies into very small pieces 	Instruction	290	2023-01-14 13:32:33.469116	2023-01-14 13:57:02.63435
824	Mix cookies with a pinch of salt and melted butter	Instruction	293	2023-01-14 13:57:02.644823	2023-01-14 13:57:02.644823
825	Put the mix into the cake pan and press into the pan using something flat like a jar	Instruction	294	2023-01-14 13:57:02.658817	2023-01-14 13:57:02.658817
826	Bake for 15min, then take it out and let it cool off a bit	Instruction	295	2023-01-14 13:57:02.670598	2023-01-14 13:57:02.670598
827	While waiting prepare the filling	Instruction	296	2023-01-14 13:57:02.681962	2023-01-14 13:57:02.681962
829	Add sugar, vanilla sugar, vanilla pulp from the vanilla pod, lemon juice, lemon zest and crème fraîche and mix well	Instruction	298	2023-01-14 13:57:02.710641	2023-01-14 13:57:02.710641
830	Beat the eggs separately in another bowl	Instruction	299	2023-01-14 13:57:02.7219	2023-01-14 13:57:02.7219
832	Add filling to the cake pan	Instruction	301	2023-01-14 13:57:02.753429	2023-01-14 13:57:02.753429
833	Bake for 45min and add an oven-safe pan filled with water into the oven (so the cake doesn‘t dry out and/or get too much colour)	Instruction	302	2023-01-14 13:57:02.769219	2023-01-14 13:57:02.769219
834	When you take out the cake the middle still needs to be jiggely	Instruction	303	2023-01-14 13:57:02.781842	2023-01-14 13:57:02.781842
835	Add flour and mix well	Instruction	304	2023-01-14 14:02:05.542723	2023-01-14 14:02:05.542723
831	Carefully mix the eggs with the other ingredients	Instruction	300	2023-01-14 13:57:02.735473	2023-01-14 14:02:05.551469
1336	SoniaDyeva SoniaDyeva	User	426	2023-09-22 12:27:48.924023	2023-09-22 12:27:48.924023
828	Whisk the cream cheese for 2-3min until it‘s creamy	Instruction	297	2023-01-14 13:57:02.695606	2023-01-15 19:27:38.724007
836	1kg waxy potatoes	Ingredient	434	2023-01-14 14:02:16.452041	2023-01-14 14:05:56.717999
839	5 garlic cloves	Ingredient	435	2023-01-14 14:05:56.732262	2023-01-14 14:05:56.732262
840	5dl milk	Ingredient	436	2023-01-14 14:05:56.743129	2023-01-14 14:05:56.743129
841	Salt and pepper	Ingredient	437	2023-01-14 14:05:56.753182	2023-01-14 14:05:56.753182
842	50g grated parmesan or any other cheese (optional)	Ingredient	438	2023-01-14 14:05:56.762648	2023-01-14 14:05:56.762648
843	Preheat oven to 200 degrees celsius	Instruction	306	2023-01-14 14:09:43.706561	2023-01-14 14:09:43.706561
837	Slice potatoes into very thin slices using a slicer	Instruction	305	2023-01-14 14:02:16.463156	2023-01-14 14:09:43.715717
846	Layer the potatoes and garlic, salt and pepper every layer, start and end the layers with potatoes	Instruction	309	2023-01-14 14:09:43.754036	2023-01-14 14:09:43.754036
848	Sprinkle parmesan on top and bake for another 30-40min	Instruction	311	2023-01-14 14:09:43.777171	2023-01-14 14:09:43.777171
847	Add 5dl milk and bake in the oven for 15min	Instruction	310	2023-01-14 14:09:43.765379	2023-01-14 14:10:31.676087
838	Potatos au gratin 🥔  Light version with milk but you can replace a part of the milk with cream 😉	Recipe	84	2023-01-14 14:02:16.470609	2023-01-14 14:11:24.526577
849	Mfjejdkwdwfkjwkw,.//fwdbdjswfjwsjdakdjwsjfhwkdajdk рырвоышвофшаргырагфошвОРРРраы: kkwjdkwdwfkefwksmxdke Заосшырацоырвфвравыо gjdjwsfegfksfgrjkfkfhjk goormey.com Mfjejdkwdwfkjwkw,.//fwdbdjswfjwsjdakdjwsjfhwkdajdk рырвоышвофшаргырагфошвОРРРраы: kkwjdkwdwfkefwksmxdke Заосшырацоырвфвравыо gjdjwsfegfksfgrjkfkfhjk goormey.com	User	26	2023-01-23 22:41:07.066781	2023-01-23 22:41:07.066781
853	100ml olive oil	Ingredient	440	2023-01-29 17:55:58.66019	2023-01-29 17:55:58.66019
704	Mix baked pumpkin, olive oil, parsley stems, chili and garlic with a blender and mix well (add water if the mix is too thick to blend), season with pepper\r\n\r\n(If the pasta water is salty enough you don’t need to season the pumpkin mix with extra salt)	Instruction	254	2022-11-28 17:20:07.45147	2023-01-29 17:55:58.673691
852	Oyakodon vegetarian The original Oyakdon is made with chicken but I am using tofu for this vegetrian version. Oyako means parent and child so in this recipe referring to chicken 🐔 and egg 🥚 This expression is also used for salmon 🐟 and salmon roe combined dishes 😌🤓	Recipe	85	2023-01-29 17:50:07.188088	2023-01-29 17:56:05.256291
850	2 large or 3 small onions	Ingredient	439	2023-01-29 17:50:07.166092	2023-01-29 17:59:05.07458
855	2 tbsp soy sauce	Ingredient	442	2023-01-29 17:59:05.099003	2023-01-29 17:59:05.099003
856	2 tbsp mirin	Ingredient	443	2023-01-29 17:59:05.111024	2023-01-29 17:59:05.111024
857	2 pinches sugar	Ingredient	444	2023-01-29 17:59:05.123407	2023-01-29 17:59:05.123407
858	1 pack tofu (soft or firm, it’s up to your liking)	Ingredient	445	2023-01-29 17:59:05.13583	2023-01-29 17:59:05.13583
859	4 eggs	Ingredient	446	2023-01-29 17:59:05.147758	2023-01-29 17:59:05.147758
860	1 spring onion	Ingredient	447	2023-01-29 17:59:05.162639	2023-01-29 17:59:05.162639
861	1 tsp sesame oil	Ingredient	448	2023-01-29 17:59:05.172283	2023-01-29 17:59:05.172283
854	1dl dashi (do not add if you go full vegetarian since it’s fish stock. I use 1 tsp of dashi powder and dissolve in 1dl water. Dashi gives a deep and slightly smokey taste.)	Ingredient	441	2023-01-29 17:59:05.088111	2023-01-29 18:06:15.552361
1313	Maangchi's Green Beans Simple but delicious way of preparing green beans\n\nhttps://www.youtube.com/watch?v=8fxPfg7QERY	Recipe	93	2023-09-12 16:08:42.630859	2023-09-12 16:34:48.082808
864	Cut tofu into pieces (ca. 1.5x1.5cm), add and cook for another 5min	Instruction	314	2023-01-29 18:51:35.463439	2023-01-29 18:51:35.463439
1314	500g green beans	Ingredient	480	2023-09-12 16:10:41.638059	2023-09-12 16:10:41.638059
851	Cut onions into strips	Instruction	312	2023-01-29 17:50:07.181782	2023-01-29 18:54:15.088276
863	Put onions into a pan, add dashi (optional or use 1dl water instead), soy sauce, mirin and sugar and cook for 5min	Instruction	313	2023-01-29 18:06:15.574714	2023-01-29 18:54:15.096989
865	In the meanwhile, break eggs into a bowl and “cut” the egg white with chopsticks and poke the egg yorks. Mix gently so you still see egg yoke and egg white mostly separated (it should not be mixed like for an omelette)	Instruction	315	2023-01-29 18:51:35.473577	2023-01-29 18:54:15.107522
866	Add 2/3 of eggs into pan (try to get more of the egg white in since they need a bit longer to cook) and gently cook until the eggs start to clot	Instruction	316	2023-01-29 18:51:35.491731	2023-01-29 18:54:15.117796
867	Add the rest of the eggs and cook until the eggs are almost done (you can decide how runny the eggs should be)	Instruction	317	2023-01-29 18:51:35.503102	2023-01-29 18:54:15.127149
862	Shichimi and sansho pepper (optional)	Ingredient	449	2023-01-29 17:59:05.182169	2023-01-29 18:54:54.904211
868	Serve on bowl with rice 🍚 and garnish with cut spring onions and sesame oil (and shichimi and sansho pepper - optional)	Instruction	318	2023-01-29 18:51:35.513208	2023-01-29 18:54:54.913392
869	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10583 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10583 <<<	User	27	2023-01-30 14:02:39.119047	2023-01-30 14:02:39.119047
870	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12036 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12036 <<<	User	28	2023-01-30 14:04:19.418545	2023-01-30 14:04:19.418545
871	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14014 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14014 <<<	User	29	2023-01-30 14:09:55.876167	2023-01-30 14:09:55.876167
872	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38557 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38557 <<<	User	30	2023-01-30 14:14:07.73437	2023-01-30 14:14:07.73437
957	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47011 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47011 <<<	User	115	2023-01-30 19:24:33.133521	2023-01-30 19:24:33.133521
1315	1 large onion	Ingredient	481	2023-09-12 16:10:53.071502	2023-09-12 16:10:53.071502
1316	8 garlic cloves	Ingredient	482	2023-09-12 16:11:34.651514	2023-09-12 16:11:34.651514
1317	100ml water from cooked beans	Ingredient	483	2023-09-12 16:12:10.870984	2023-09-12 16:12:10.870984
1318	Cook bean for 7mins in some water. Once cooked, keep 100ml of the water.	Instruction	336	2023-09-12 16:12:54.170509	2023-09-12 16:12:54.170509
1319	Chop garlic cloves and fry briefly in some cooking oil.	Instruction	337	2023-09-12 16:13:31.114954	2023-09-12 16:13:31.114954
1320	Add the cooked beans to garlic, as well as put-aside bean water	Instruction	338	2023-09-12 16:13:44.021488	2023-09-12 16:14:07.983036
1321	1 tablespoon soy sauce	Ingredient	484	2023-09-12 16:14:30.174719	2023-09-12 16:14:30.174719
1322	Add soy sauce and chopped onions to pan	Instruction	339	2023-09-12 16:14:53.713494	2023-09-12 16:14:53.713494
1323	Keep cooking and stirring until water in boiled down	Instruction	340	2023-09-12 16:15:23.91941	2023-09-12 16:15:23.91941
1324	1 tablespoon sesame oil	Ingredient	485	2023-09-12 16:15:35.890874	2023-09-12 16:15:35.890874
1325	Add the sesame oil	Instruction	341	2023-09-12 16:15:53.118739	2023-09-12 16:15:53.118739
1326	Enjoy!	Instruction	342	2023-09-12 16:16:00.001899	2023-09-12 16:16:00.001899
1337	KartinaKig KartinaKig	User	427	2023-09-22 22:42:22.892715	2023-09-22 22:42:22.892715
1347	Jasonvep Jasonvep	User	437	2023-10-03 23:08:12.759285	2023-10-03 23:08:12.759285
1357	online casinos that pay real money online casinos that pay real money	User	447	2023-10-19 16:03:52.307019	2023-10-19 16:03:52.307019
873	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29284 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29284 <<<	User	31	2023-01-30 14:15:35.651504	2023-01-30 14:15:35.651504
874	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16119 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16119 <<<	User	32	2023-01-30 14:20:55.661771	2023-01-30 14:20:55.661771
875	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12786 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12786 <<<	User	33	2023-01-30 14:24:57.626819	2023-01-30 14:24:57.626819
876	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42105 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42105 <<<	User	34	2023-01-30 14:26:34.201599	2023-01-30 14:26:34.201599
877	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40334 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40334 <<<	User	35	2023-01-30 14:32:04.575662	2023-01-30 14:32:04.575662
878	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2993 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2993 <<<	User	36	2023-01-30 14:36:08.69352	2023-01-30 14:36:08.69352
879	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22117 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22117 <<<	User	37	2023-01-30 14:37:40.21117	2023-01-30 14:37:40.21117
880	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52306 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52306 <<<	User	38	2023-01-30 14:43:00.415774	2023-01-30 14:43:00.415774
881	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12627 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12627 <<<	User	39	2023-01-30 14:47:19.112018	2023-01-30 14:47:19.112018
882	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6278 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6278 <<<	User	40	2023-01-30 14:48:49.853578	2023-01-30 14:48:49.853578
883	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21937 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21937 <<<	User	41	2023-01-30 14:53:58.357685	2023-01-30 14:53:58.357685
884	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27289 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27289 <<<	User	42	2023-01-30 14:58:14.12477	2023-01-30 14:58:14.12477
885	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16643 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16643 <<<	User	43	2023-01-30 14:59:57.950265	2023-01-30 14:59:57.950265
886	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-23968 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-23968 <<<	User	44	2023-01-30 15:05:11.924878	2023-01-30 15:05:11.924878
887	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18509 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18509 <<<	User	45	2023-01-30 15:09:38.732382	2023-01-30 15:09:38.732382
888	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27369 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27369 <<<	User	46	2023-01-30 15:11:25.407847	2023-01-30 15:11:25.407847
889	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16939 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16939 <<<	User	47	2023-01-30 15:16:26.59164	2023-01-30 15:16:26.59164
890	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40734 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40734 <<<	User	48	2023-01-30 15:20:42.082779	2023-01-30 15:20:42.082779
891	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29631 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29631 <<<	User	49	2023-01-30 15:22:38.260097	2023-01-30 15:22:38.260097
892	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20214 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20214 <<<	User	50	2023-01-30 15:27:25.134035	2023-01-30 15:27:25.134035
893	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12931 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12931 <<<	User	51	2023-01-30 15:31:35.721313	2023-01-30 15:31:35.721313
894	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25284 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25284 <<<	User	52	2023-01-30 15:33:39.69866	2023-01-30 15:33:39.69866
895	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40279 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40279 <<<	User	53	2023-01-30 15:38:26.416327	2023-01-30 15:38:26.416327
896	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31099 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31099 <<<	User	54	2023-01-30 15:42:32.454707	2023-01-30 15:42:32.454707
897	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3052 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3052 <<<	User	55	2023-01-30 15:44:34.260183	2023-01-30 15:44:34.260183
898	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33677 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33677 <<<	User	56	2023-01-30 15:49:35.004185	2023-01-30 15:49:35.004185
899	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39467 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39467 <<<	User	57	2023-01-30 15:53:22.069073	2023-01-30 15:53:22.069073
900	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18744 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18744 <<<	User	58	2023-01-30 15:55:31.264734	2023-01-30 15:55:31.264734
901	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-19382 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-19382 <<<	User	59	2023-01-30 16:00:28.805677	2023-01-30 16:00:28.805677
902	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40049 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40049 <<<	User	60	2023-01-30 16:04:28.746089	2023-01-30 16:04:28.746089
903	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16890 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16890 <<<	User	61	2023-01-30 16:06:33.247149	2023-01-30 16:06:33.247149
904	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25829 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25829 <<<	User	62	2023-01-30 16:11:40.509832	2023-01-30 16:11:40.509832
905	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24659 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24659 <<<	User	63	2023-01-30 16:15:42.95418	2023-01-30 16:15:42.95418
906	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49859 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49859 <<<	User	64	2023-01-30 16:17:40.337544	2023-01-30 16:17:40.337544
907	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35948 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35948 <<<	User	65	2023-01-30 16:22:54.799407	2023-01-30 16:22:54.799407
908	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39906 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39906 <<<	User	66	2023-01-30 16:26:42.109696	2023-01-30 16:26:42.109696
909	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33576 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33576 <<<	User	67	2023-01-30 16:28:51.584384	2023-01-30 16:28:51.584384
910	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22682 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22682 <<<	User	68	2023-01-30 16:33:56.880224	2023-01-30 16:33:56.880224
911	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30079 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30079 <<<	User	69	2023-01-30 16:37:48.248246	2023-01-30 16:37:48.248246
912	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37395 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37395 <<<	User	70	2023-01-30 16:39:57.436342	2023-01-30 16:39:57.436342
913	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18548 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18548 <<<	User	71	2023-01-30 16:45:00.12363	2023-01-30 16:45:00.12363
914	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44082 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44082 <<<	User	72	2023-01-30 16:48:43.979587	2023-01-30 16:48:43.979587
915	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39425 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39425 <<<	User	73	2023-01-30 16:50:56.472721	2023-01-30 16:50:56.472721
916	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-41292 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-41292 <<<	User	74	2023-01-30 16:55:49.378746	2023-01-30 16:55:49.378746
917	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33095 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33095 <<<	User	75	2023-01-30 16:59:34.515645	2023-01-30 16:59:34.515645
918	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51683 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51683 <<<	User	76	2023-01-30 17:01:57.023801	2023-01-30 17:01:57.023801
919	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2269 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2269 <<<	User	77	2023-01-30 17:07:01.882093	2023-01-30 17:07:01.882093
920	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24102 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24102 <<<	User	78	2023-01-30 17:10:41.41097	2023-01-30 17:10:41.41097
921	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40637 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40637 <<<	User	79	2023-01-30 17:13:00.8886	2023-01-30 17:13:00.8886
922	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22540 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22540 <<<	User	80	2023-01-30 17:18:12.474027	2023-01-30 17:18:12.474027
923	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5780 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5780 <<<	User	81	2023-01-30 17:21:49.866684	2023-01-30 17:21:49.866684
924	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20265 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20265 <<<	User	82	2023-01-30 17:24:08.650839	2023-01-30 17:24:08.650839
925	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12198 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12198 <<<	User	83	2023-01-30 17:29:15.912259	2023-01-30 17:29:15.912259
926	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2581 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2581 <<<	User	84	2023-01-30 17:32:54.774524	2023-01-30 17:32:54.774524
927	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8973 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8973 <<<	User	85	2023-01-30 17:35:17.01913	2023-01-30 17:35:17.01913
928	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11637 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11637 <<<	User	86	2023-01-30 17:40:29.303238	2023-01-30 17:40:29.303238
929	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50138 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50138 <<<	User	87	2023-01-30 17:43:51.948422	2023-01-30 17:43:51.948422
930	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6431 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6431 <<<	User	88	2023-01-30 17:46:12.603076	2023-01-30 17:46:12.603076
931	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52327 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52327 <<<	User	89	2023-01-30 17:51:26.774432	2023-01-30 17:51:26.774432
932	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45532 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45532 <<<	User	90	2023-01-30 17:54:47.094564	2023-01-30 17:54:47.094564
933	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9875 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9875 <<<	User	91	2023-01-30 17:57:04.627042	2023-01-30 17:57:04.627042
934	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14384 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14384 <<<	User	92	2023-01-30 18:02:24.347594	2023-01-30 18:02:24.347594
935	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8949 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8949 <<<	User	93	2023-01-30 18:05:57.203863	2023-01-30 18:05:57.203863
1206	Michaeladugs Michaeladugs	User	364	2023-05-15 07:21:47.363733	2023-05-15 07:21:47.363733
936	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25153 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25153 <<<	User	94	2023-01-30 18:08:12.379164	2023-01-30 18:08:12.379164
937	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29310 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29310 <<<	User	95	2023-01-30 18:13:27.942121	2023-01-30 18:13:27.942121
938	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6775 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6775 <<<	User	96	2023-01-30 18:17:11.200579	2023-01-30 18:17:11.200579
939	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22870 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22870 <<<	User	97	2023-01-30 18:19:13.526842	2023-01-30 18:19:13.526842
940	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-36474 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-36474 <<<	User	98	2023-01-30 18:24:24.862116	2023-01-30 18:24:24.862116
941	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4800 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4800 <<<	User	99	2023-01-30 18:28:14.850983	2023-01-30 18:28:14.850983
942	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29995 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29995 <<<	User	100	2023-01-30 18:30:10.234215	2023-01-30 18:30:10.234215
943	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42534 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42534 <<<	User	101	2023-01-30 18:35:25.57409	2023-01-30 18:35:25.57409
944	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49379 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49379 <<<	User	102	2023-01-30 18:39:16.822507	2023-01-30 18:39:16.822507
945	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50492 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50492 <<<	User	103	2023-01-30 18:41:09.574415	2023-01-30 18:41:09.574415
946	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17584 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17584 <<<	User	104	2023-01-30 18:46:21.476164	2023-01-30 18:46:21.476164
947	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9414 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9414 <<<	User	105	2023-01-30 18:50:06.372104	2023-01-30 18:50:06.372104
948	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21919 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21919 <<<	User	106	2023-01-30 18:51:55.00882	2023-01-30 18:51:55.00882
949	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34229 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34229 <<<	User	107	2023-01-30 18:57:11.608454	2023-01-30 18:57:11.608454
950	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2334 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2334 <<<	User	108	2023-01-30 19:01:00.566874	2023-01-30 19:01:00.566874
951	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43575 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43575 <<<	User	109	2023-01-30 19:02:43.690021	2023-01-30 19:02:43.690021
952	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47542 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47542 <<<	User	110	2023-01-30 19:08:11.950074	2023-01-30 19:08:11.950074
953	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52094 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52094 <<<	User	111	2023-01-30 19:12:00.541202	2023-01-30 19:12:00.541202
954	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28667 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28667 <<<	User	112	2023-01-30 19:13:43.260337	2023-01-30 19:13:43.260337
955	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1733 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1733 <<<	User	113	2023-01-30 19:19:01.313794	2023-01-30 19:19:01.313794
956	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2829 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2829 <<<	User	114	2023-01-30 19:22:50.582	2023-01-30 19:22:50.582
1207	Audraomist Audraomist	User	365	2023-05-17 13:16:23.292886	2023-05-17 13:16:23.292886
958	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37685 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37685 <<<	User	116	2023-01-30 19:29:46.589558	2023-01-30 19:29:46.589558
959	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38113 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38113 <<<	User	117	2023-01-30 19:33:38.852126	2023-01-30 19:33:38.852126
960	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26239 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26239 <<<	User	118	2023-01-30 19:35:22.359669	2023-01-30 19:35:22.359669
961	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8691 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8691 <<<	User	119	2023-01-30 19:40:42.661215	2023-01-30 19:40:42.661215
962	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31707 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31707 <<<	User	120	2023-01-30 19:44:24.147117	2023-01-30 19:44:24.147117
963	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29131 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29131 <<<	User	121	2023-01-30 19:46:08.84925	2023-01-30 19:46:08.84925
964	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48770 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48770 <<<	User	122	2023-01-30 19:51:22.555191	2023-01-30 19:51:22.555191
965	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20867 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20867 <<<	User	123	2023-01-30 19:55:06.319176	2023-01-30 19:55:06.319176
966	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25931 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25931 <<<	User	124	2023-01-30 19:57:00.704504	2023-01-30 19:57:00.704504
967	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49276 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49276 <<<	User	125	2023-01-30 20:02:06.888991	2023-01-30 20:02:06.888991
968	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27513 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27513 <<<	User	126	2023-01-30 20:05:55.180315	2023-01-30 20:05:55.180315
969	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50724 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50724 <<<	User	127	2023-01-30 20:07:49.716173	2023-01-30 20:07:49.716173
970	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32545 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32545 <<<	User	128	2023-01-30 20:13:02.504614	2023-01-30 20:13:02.504614
971	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11677 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11677 <<<	User	129	2023-01-30 20:17:02.292537	2023-01-30 20:17:02.292537
972	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24753 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24753 <<<	User	130	2023-01-30 20:18:46.679151	2023-01-30 20:18:46.679151
973	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40343 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40343 <<<	User	131	2023-01-30 20:23:47.595209	2023-01-30 20:23:47.595209
974	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48883 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48883 <<<	User	132	2023-01-30 20:28:06.52852	2023-01-30 20:28:06.52852
975	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22851 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22851 <<<	User	133	2023-01-30 20:29:36.370353	2023-01-30 20:29:36.370353
976	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12710 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12710 <<<	User	134	2023-01-30 20:34:43.486819	2023-01-30 20:34:43.486819
977	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28780 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28780 <<<	User	135	2023-01-30 20:39:06.901197	2023-01-30 20:39:06.901197
978	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2507 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2507 <<<	User	136	2023-01-30 20:40:34.274482	2023-01-30 20:40:34.274482
1208	NathanboT NathanboT	User	366	2023-05-17 15:41:29.436148	2023-05-17 15:41:29.436148
1217	SiterKnofs SiterKnofs	User	375	2023-06-02 05:44:35.871915	2023-06-02 05:44:35.871915
979	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-179 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-179 <<<	User	137	2023-01-30 20:45:34.464815	2023-01-30 20:45:34.464815
980	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27562 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27562 <<<	User	138	2023-01-30 20:49:57.405347	2023-01-30 20:49:57.405347
981	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9490 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9490 <<<	User	139	2023-01-30 20:51:33.958725	2023-01-30 20:51:33.958725
982	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15511 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15511 <<<	User	140	2023-01-30 20:56:22.266689	2023-01-30 20:56:22.266689
983	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30406 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30406 <<<	User	141	2023-01-30 21:00:46.266378	2023-01-30 21:00:46.266378
984	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48271 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48271 <<<	User	142	2023-01-30 21:02:24.276331	2023-01-30 21:02:24.276331
985	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1637 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1637 <<<	User	143	2023-01-30 21:07:15.366766	2023-01-30 21:07:15.366766
986	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-36698 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-36698 <<<	User	144	2023-01-30 21:11:34.323822	2023-01-30 21:11:34.323822
987	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24597 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24597 <<<	User	145	2023-01-30 21:13:09.094947	2023-01-30 21:13:09.094947
988	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32201 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32201 <<<	User	146	2023-01-30 21:17:57.859611	2023-01-30 21:17:57.859611
989	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47964 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47964 <<<	User	147	2023-01-30 21:22:17.397278	2023-01-30 21:22:17.397278
990	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20316 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20316 <<<	User	148	2023-01-30 21:23:51.299397	2023-01-30 21:23:51.299397
991	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51919 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51919 <<<	User	149	2023-01-30 21:28:44.261825	2023-01-30 21:28:44.261825
992	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10056 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10056 <<<	User	150	2023-01-30 21:32:52.912715	2023-01-30 21:32:52.912715
993	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5242 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5242 <<<	User	151	2023-01-30 21:34:35.328209	2023-01-30 21:34:35.328209
994	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45764 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45764 <<<	User	152	2023-01-30 21:39:21.72494	2023-01-30 21:39:21.72494
995	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42425 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42425 <<<	User	153	2023-01-30 21:43:30.480001	2023-01-30 21:43:30.480001
996	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22133 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22133 <<<	User	154	2023-01-30 21:45:11.439293	2023-01-30 21:45:11.439293
997	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29798 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29798 <<<	User	155	2023-01-30 21:50:12.868032	2023-01-30 21:50:12.868032
998	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21636 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21636 <<<	User	156	2023-01-30 21:54:11.018611	2023-01-30 21:54:11.018611
999	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6637 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-6637 <<<	User	157	2023-01-30 21:55:45.204838	2023-01-30 21:55:45.204838
1210	Cliftons#gendnick[Hueastjyw23] Cliftons#gendnick[Hueastjyw23]	User	368	2023-05-20 21:08:45.820386	2023-05-20 21:08:45.820386
1000	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43110 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43110 <<<	User	158	2023-01-30 22:00:46.267405	2023-01-30 22:00:46.267405
1001	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12119 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12119 <<<	User	159	2023-01-30 22:04:49.208449	2023-01-30 22:04:49.208449
1002	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16560 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16560 <<<	User	160	2023-01-30 22:06:23.481963	2023-01-30 22:06:23.481963
1003	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15498 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15498 <<<	User	161	2023-01-30 22:11:21.157133	2023-01-30 22:11:21.157133
1004	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42038 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42038 <<<	User	162	2023-01-30 22:15:26.237874	2023-01-30 22:15:26.237874
1005	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30948 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30948 <<<	User	163	2023-01-30 22:16:55.445797	2023-01-30 22:16:55.445797
1006	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35276 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35276 <<<	User	164	2023-01-30 22:21:46.022968	2023-01-30 22:21:46.022968
1007	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33713 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33713 <<<	User	165	2023-01-30 22:26:04.041646	2023-01-30 22:26:04.041646
1008	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34755 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34755 <<<	User	166	2023-01-30 22:27:32.103671	2023-01-30 22:27:32.103671
1009	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11419 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11419 <<<	User	167	2023-01-30 22:32:17.99094	2023-01-30 22:32:17.99094
1010	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17022 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17022 <<<	User	168	2023-01-30 22:36:41.925215	2023-01-30 22:36:41.925215
1011	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51346 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51346 <<<	User	169	2023-01-30 22:38:03.800366	2023-01-30 22:38:03.800366
1012	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27718 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27718 <<<	User	170	2023-01-30 22:42:56.087884	2023-01-30 22:42:56.087884
1013	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16629 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16629 <<<	User	171	2023-01-30 22:47:12.575566	2023-01-30 22:47:12.575566
1014	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9984 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9984 <<<	User	172	2023-01-30 22:48:32.491145	2023-01-30 22:48:32.491145
1015	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43515 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43515 <<<	User	173	2023-01-30 22:53:30.745783	2023-01-30 22:53:30.745783
1016	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48446 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48446 <<<	User	174	2023-01-30 22:57:57.874791	2023-01-30 22:57:57.874791
1017	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11632 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11632 <<<	User	175	2023-01-30 22:59:22.987558	2023-01-30 22:59:22.987558
1018	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49679 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49679 <<<	User	176	2023-01-30 23:04:13.816457	2023-01-30 23:04:13.816457
1019	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47056 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47056 <<<	User	177	2023-01-30 23:08:42.269522	2023-01-30 23:08:42.269522
1211	AzatJen AzatJen	User	369	2023-05-21 17:58:53.414694	2023-05-21 17:58:53.414694
1218	Alexeyfig Alexeyfig	User	376	2023-06-02 08:50:25.266164	2023-06-02 08:50:25.266164
1220	iconicrat iconicrat	User	378	2023-06-11 17:15:50.52833	2023-06-11 17:15:50.52833
1020	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24317 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24317 <<<	User	178	2023-01-30 23:10:01.077938	2023-01-30 23:10:01.077938
1021	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51108 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51108 <<<	User	179	2023-01-30 23:15:02.527129	2023-01-30 23:15:02.527129
1022	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37026 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37026 <<<	User	180	2023-01-30 23:19:31.284207	2023-01-30 23:19:31.284207
1023	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21909 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-21909 <<<	User	181	2023-01-30 23:20:53.779561	2023-01-30 23:20:53.779561
1024	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26287 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26287 <<<	User	182	2023-01-30 23:25:45.434556	2023-01-30 23:25:45.434556
1025	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48612 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48612 <<<	User	183	2023-01-30 23:30:04.578272	2023-01-30 23:30:04.578272
1026	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26194 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26194 <<<	User	184	2023-01-30 23:31:30.158214	2023-01-30 23:31:30.158214
1027	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51695 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51695 <<<	User	185	2023-01-30 23:36:20.464866	2023-01-30 23:36:20.464866
1028	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18310 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18310 <<<	User	186	2023-01-30 23:40:29.158859	2023-01-30 23:40:29.158859
1029	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39489 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39489 <<<	User	187	2023-01-30 23:41:58.20344	2023-01-30 23:41:58.20344
1030	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22004 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22004 <<<	User	188	2023-01-30 23:46:48.844357	2023-01-30 23:46:48.844357
1031	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50685 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50685 <<<	User	189	2023-01-30 23:51:12.361019	2023-01-30 23:51:12.361019
1032	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28900 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28900 <<<	User	190	2023-01-30 23:52:39.64143	2023-01-30 23:52:39.64143
1033	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9963 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9963 <<<	User	191	2023-01-30 23:57:23.508542	2023-01-30 23:57:23.508542
1034	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24928 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24928 <<<	User	192	2023-01-31 00:01:49.047888	2023-01-31 00:01:49.047888
1035	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29695 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29695 <<<	User	193	2023-01-31 00:03:07.862492	2023-01-31 00:03:07.862492
1036	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20539 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20539 <<<	User	194	2023-01-31 00:07:52.381546	2023-01-31 00:07:52.381546
1037	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43476 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43476 <<<	User	195	2023-01-31 00:12:14.922094	2023-01-31 00:12:14.922094
1038	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51017 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51017 <<<	User	196	2023-01-31 00:13:35.849853	2023-01-31 00:13:35.849853
1039	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45820 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45820 <<<	User	197	2023-01-31 00:18:26.613517	2023-01-31 00:18:26.613517
1040	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27417 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27417 <<<	User	198	2023-01-31 00:22:44.68507	2023-01-31 00:22:44.68507
1041	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9156 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9156 <<<	User	199	2023-01-31 00:24:06.022602	2023-01-31 00:24:06.022602
1042	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12625 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12625 <<<	User	200	2023-01-31 00:28:55.840814	2023-01-31 00:28:55.840814
1043	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38937 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38937 <<<	User	201	2023-01-31 00:33:15.854098	2023-01-31 00:33:15.854098
1044	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25613 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25613 <<<	User	202	2023-01-31 00:34:34.631131	2023-01-31 00:34:34.631131
1045	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-7491 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-7491 <<<	User	203	2023-01-31 00:39:30.004352	2023-01-31 00:39:30.004352
1046	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32572 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32572 <<<	User	204	2023-01-31 00:43:41.783768	2023-01-31 00:43:41.783768
1047	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4927 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4927 <<<	User	205	2023-01-31 00:45:07.930104	2023-01-31 00:45:07.930104
1048	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35735 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35735 <<<	User	206	2023-01-31 00:50:00.550726	2023-01-31 00:50:00.550726
1049	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26290 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26290 <<<	User	207	2023-01-31 00:54:03.241526	2023-01-31 00:54:03.241526
1050	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18096 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18096 <<<	User	208	2023-01-31 00:55:36.261158	2023-01-31 00:55:36.261158
1051	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42824 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42824 <<<	User	209	2023-01-31 01:00:25.626393	2023-01-31 01:00:25.626393
1052	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3944 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3944 <<<	User	210	2023-01-31 01:04:23.270796	2023-01-31 01:04:23.270796
1053	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3771 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3771 <<<	User	211	2023-01-31 01:05:52.278348	2023-01-31 01:05:52.278348
1054	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50720 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50720 <<<	User	212	2023-01-31 01:10:46.164206	2023-01-31 01:10:46.164206
1055	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39751 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39751 <<<	User	213	2023-01-31 01:14:35.856152	2023-01-31 01:14:35.856152
1056	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12602 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12602 <<<	User	214	2023-01-31 01:16:09.461814	2023-01-31 01:16:09.461814
1057	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1084 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1084 <<<	User	215	2023-01-31 01:21:00.984088	2023-01-31 01:21:00.984088
1058	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35388 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35388 <<<	User	216	2023-01-31 01:24:54.902171	2023-01-31 01:24:54.902171
1059	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8750 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8750 <<<	User	217	2023-01-31 01:26:24.104296	2023-01-31 01:26:24.104296
1060	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50265 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50265 <<<	User	218	2023-01-31 01:31:18.37074	2023-01-31 01:31:18.37074
1061	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18877 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18877 <<<	User	219	2023-01-31 01:35:12.532279	2023-01-31 01:35:12.532279
1212	Hermanmet Hermanmet	User	370	2023-05-22 03:56:05.956119	2023-05-22 03:56:05.956119
1062	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20205 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20205 <<<	User	220	2023-01-31 01:36:41.227173	2023-01-31 01:36:41.227173
1063	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-382 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-382 <<<	User	221	2023-01-31 01:41:47.420716	2023-01-31 01:41:47.420716
1064	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28819 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28819 <<<	User	222	2023-01-31 01:45:33.142225	2023-01-31 01:45:33.142225
1065	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34726 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34726 <<<	User	223	2023-01-31 01:47:02.17026	2023-01-31 01:47:02.17026
1066	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15392 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-15392 <<<	User	224	2023-01-31 01:52:05.640197	2023-01-31 01:52:05.640197
1067	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39740 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39740 <<<	User	225	2023-01-31 01:55:45.925492	2023-01-31 01:55:45.925492
1068	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27395 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27395 <<<	User	226	2023-01-31 01:57:19.726341	2023-01-31 01:57:19.726341
1069	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2167 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-2167 <<<	User	227	2023-01-31 02:02:31.249694	2023-01-31 02:02:31.249694
1070	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33807 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33807 <<<	User	228	2023-01-31 02:06:10.000897	2023-01-31 02:06:10.000897
1071	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44070 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44070 <<<	User	229	2023-01-31 02:07:49.560811	2023-01-31 02:07:49.560811
1072	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47310 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-47310 <<<	User	230	2023-01-31 02:13:01.561272	2023-01-31 02:13:01.561272
1073	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5147 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5147 <<<	User	231	2023-01-31 02:16:32.857013	2023-01-31 02:16:32.857013
1074	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11311 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11311 <<<	User	232	2023-01-31 02:18:16.680561	2023-01-31 02:18:16.680561
1075	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10373 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10373 <<<	User	233	2023-01-31 02:23:19.484661	2023-01-31 02:23:19.484661
1076	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28308 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28308 <<<	User	234	2023-01-31 02:26:49.248384	2023-01-31 02:26:49.248384
1077	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22083 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-22083 <<<	User	235	2023-01-31 02:28:46.38816	2023-01-31 02:28:46.38816
1078	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4341 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4341 <<<	User	236	2023-01-31 02:33:51.190171	2023-01-31 02:33:51.190171
1079	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25511 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25511 <<<	User	237	2023-01-31 02:37:20.305158	2023-01-31 02:37:20.305158
1080	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44052 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44052 <<<	User	238	2023-01-31 02:39:11.644307	2023-01-31 02:39:11.644307
1081	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40119 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40119 <<<	User	239	2023-01-31 02:44:15.849747	2023-01-31 02:44:15.849747
1082	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26747 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26747 <<<	User	240	2023-01-31 02:47:46.612701	2023-01-31 02:47:46.612701
1213	Peterofig Peterofig	User	371	2023-05-25 13:11:46.825491	2023-05-25 13:11:46.825491
1083	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49142 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49142 <<<	User	241	2023-01-31 02:49:39.387472	2023-01-31 02:49:39.387472
1084	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12134 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12134 <<<	User	242	2023-01-31 02:54:38.778634	2023-01-31 02:54:38.778634
1085	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20075 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20075 <<<	User	243	2023-01-31 02:58:08.195723	2023-01-31 02:58:08.195723
1086	Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30793 <<< Sale of Bitcoin and Ethereum with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30793 <<<	User	244	2023-01-31 03:00:08.825177	2023-01-31 03:00:08.825177
1087	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48922 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48922 <<<	User	245	2023-01-31 03:05:06.356322	2023-01-31 03:05:06.356322
1088	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46849 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46849 <<<	User	246	2023-01-31 03:08:37.59575	2023-01-31 03:08:37.59575
1089	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4365 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4365 <<<	User	247	2023-01-31 03:10:41.668816	2023-01-31 03:10:41.668816
1090	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17820 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17820 <<<	User	248	2023-01-31 03:15:28.287529	2023-01-31 03:15:28.287529
1091	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32924 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32924 <<<	User	249	2023-01-31 03:18:59.94217	2023-01-31 03:18:59.94217
1092	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28232 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28232 <<<	User	250	2023-01-31 03:21:04.515273	2023-01-31 03:21:04.515273
1093	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34806 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34806 <<<	User	251	2023-01-31 03:25:51.827496	2023-01-31 03:25:51.827496
1094	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16105 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-16105 <<<	User	252	2023-01-31 03:29:17.556536	2023-01-31 03:29:17.556536
1095	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48350 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48350 <<<	User	253	2023-01-31 03:31:22.3186	2023-01-31 03:31:22.3186
1096	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9794 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-9794 <<<	User	254	2023-01-31 03:36:03.492323	2023-01-31 03:36:03.492323
1097	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43625 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43625 <<<	User	255	2023-01-31 03:39:34.677346	2023-01-31 03:39:34.677346
1098	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49931 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49931 <<<	User	256	2023-01-31 03:41:38.83069	2023-01-31 03:41:38.83069
1099	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35218 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35218 <<<	User	257	2023-01-31 03:46:26.679793	2023-01-31 03:46:26.679793
1100	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40570 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-40570 <<<	User	258	2023-01-31 03:49:57.47183	2023-01-31 03:49:57.47183
1101	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46674 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46674 <<<	User	259	2023-01-31 03:51:58.925479	2023-01-31 03:51:58.925479
1102	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17770 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17770 <<<	User	260	2023-01-31 03:56:42.255031	2023-01-31 03:56:42.255031
1103	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14128 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14128 <<<	User	261	2023-01-31 04:00:15.003923	2023-01-31 04:00:15.003923
1214	Alexanfig Alexanfig	User	372	2023-05-27 11:24:55.100274	2023-05-27 11:24:55.100274
1104	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5107 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5107 <<<	User	262	2023-01-31 04:02:16.053179	2023-01-31 04:02:16.053179
1105	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5636 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5636 <<<	User	263	2023-01-31 04:07:04.901981	2023-01-31 04:07:04.901981
1106	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-19578 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-19578 <<<	User	264	2023-01-31 04:10:37.522765	2023-01-31 04:10:37.522765
1107	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20072 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20072 <<<	User	265	2023-01-31 04:12:41.529766	2023-01-31 04:12:41.529766
1108	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25822 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25822 <<<	User	266	2023-01-31 04:17:28.840806	2023-01-31 04:17:28.840806
1109	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52344 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52344 <<<	User	267	2023-01-31 04:21:00.404759	2023-01-31 04:21:00.404759
1110	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27093 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-27093 <<<	User	268	2023-01-31 04:23:06.89006	2023-01-31 04:23:06.89006
1111	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25533 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25533 <<<	User	269	2023-01-31 04:27:52.664473	2023-01-31 04:27:52.664473
1112	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4574 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-4574 <<<	User	270	2023-01-31 04:31:18.592339	2023-01-31 04:31:18.592339
1113	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11366 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11366 <<<	User	271	2023-01-31 04:33:30.914264	2023-01-31 04:33:30.914264
1114	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24376 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24376 <<<	User	272	2023-01-31 04:38:16.071801	2023-01-31 04:38:16.071801
1115	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8067 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-8067 <<<	User	273	2023-01-31 04:41:54.621569	2023-01-31 04:41:54.621569
1116	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44828 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44828 <<<	User	274	2023-01-31 04:44:00.896281	2023-01-31 04:44:00.896281
1117	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3174 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3174 <<<	User	275	2023-01-31 04:48:55.266249	2023-01-31 04:48:55.266249
1118	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11348 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11348 <<<	User	276	2023-01-31 04:52:32.974799	2023-01-31 04:52:32.974799
1119	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35468 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-35468 <<<	User	277	2023-01-31 04:54:32.769371	2023-01-31 04:54:32.769371
1120	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37271 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-37271 <<<	User	278	2023-01-31 04:59:23.484537	2023-01-31 04:59:23.484537
1121	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5312 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5312 <<<	User	279	2023-01-31 05:02:58.874166	2023-01-31 05:02:58.874166
1122	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49888 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49888 <<<	User	280	2023-01-31 05:04:53.893696	2023-01-31 05:04:53.893696
1123	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5895 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5895 <<<	User	281	2023-01-31 05:09:53.602968	2023-01-31 05:09:53.602968
1124	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48304 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48304 <<<	User	282	2023-01-31 05:13:26.701952	2023-01-31 05:13:26.701952
1125	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18694 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18694 <<<	User	283	2023-01-31 05:15:20.129099	2023-01-31 05:15:20.129099
1126	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3619 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3619 <<<	User	284	2023-01-31 05:20:24.107449	2023-01-31 05:20:24.107449
1127	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5031 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5031 <<<	User	285	2023-01-31 05:23:57.70253	2023-01-31 05:23:57.70253
1128	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46225 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-46225 <<<	User	286	2023-01-31 05:25:51.367786	2023-01-31 05:25:51.367786
1129	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1742 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-1742 <<<	User	287	2023-01-31 05:30:52.63446	2023-01-31 05:30:52.63446
1130	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26300 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-26300 <<<	User	288	2023-01-31 05:34:29.494237	2023-01-31 05:34:29.494237
1131	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44219 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-44219 <<<	User	289	2023-01-31 05:36:21.859711	2023-01-31 05:36:21.859711
1132	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12026 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12026 <<<	User	290	2023-01-31 05:41:26.822436	2023-01-31 05:41:26.822436
1133	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45218 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45218 <<<	User	291	2023-01-31 05:45:03.887574	2023-01-31 05:45:03.887574
1134	Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12582 <<< Super Promotion: Cryptocurrency sale with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-12582 <<<	User	292	2023-01-31 05:46:51.919436	2023-01-31 05:46:51.919436
1135	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30559 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30559 <<<	User	293	2023-01-31 05:51:53.748899	2023-01-31 05:51:53.748899
1136	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-547 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-547 <<<	User	294	2023-01-31 05:55:41.516752	2023-01-31 05:55:41.516752
1137	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31788 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-31788 <<<	User	295	2023-01-31 05:57:21.29389	2023-01-31 05:57:21.29389
1138	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3064 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3064 <<<	User	296	2023-01-31 06:02:26.475348	2023-01-31 06:02:26.475348
1139	BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50984 <<< BIG SALE OF BITCOIN AND ETHEREUM WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50984 <<<	User	297	2023-01-31 06:06:30.255485	2023-01-31 06:06:30.255485
1140	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5892 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-5892 <<<	User	298	2023-01-31 06:07:59.465046	2023-01-31 06:07:59.465046
1141	This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48698 <<< This is your chance to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48698 <<<	User	299	2023-01-31 06:13:18.467084	2023-01-31 06:13:18.467084
1142	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43860 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43860 <<<	User	300	2023-01-31 06:17:16.336107	2023-01-31 06:17:16.336107
1143	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30492 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30492 <<<	User	301	2023-01-31 06:18:44.090163	2023-01-31 06:18:44.090163
1144	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20859 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20859 <<<	User	302	2023-01-31 06:23:53.79622	2023-01-31 06:23:53.79622
1145	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11399 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11399 <<<	User	303	2023-01-31 06:27:55.049148	2023-01-31 06:27:55.049148
1215	Ivaninfig Ivaninfig	User	373	2023-05-28 18:09:05.522551	2023-05-28 18:09:05.522551
1219	Charleswaw Charleswaw	User	377	2023-06-11 05:07:44.034224	2023-06-11 05:07:44.034224
1146	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30619 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30619 <<<	User	304	2023-01-31 06:29:24.401802	2023-01-31 06:29:24.401802
1147	SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14320 <<< SUPER PROMOTION: CRYPTOCURRENCY SALE WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14320 <<<	User	305	2023-01-31 06:34:36.351836	2023-01-31 06:34:36.351836
1148	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38953 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38953 <<<	User	306	2023-01-31 06:38:27.187971	2023-01-31 06:38:27.187971
1149	Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43527 <<< Buy bitcoin and ether with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-43527 <<<	User	307	2023-01-31 06:39:55.45338	2023-01-31 06:39:55.45338
1150	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25528 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-25528 <<<	User	308	2023-01-31 06:45:12.912974	2023-01-31 06:45:12.912974
1151	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32776 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-32776 <<<	User	309	2023-01-31 06:49:04.430443	2023-01-31 06:49:04.430443
1152	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29636 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-29636 <<<	User	310	2023-01-31 06:50:29.792479	2023-01-31 06:50:29.792479
1153	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38039 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-38039 <<<	User	311	2023-01-31 06:55:42.824434	2023-01-31 06:55:42.824434
1154	SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28164 <<< SALE OF BITCOIN AND ETHEREUM WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-28164 <<<	User	312	2023-01-31 06:59:36.450785	2023-01-31 06:59:36.450785
1155	BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10042 <<< BUY CRYPTOCURRENCY WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-10042 <<<	User	313	2023-01-31 07:00:59.430603	2023-01-31 07:00:59.430603
1156	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24079 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-24079 <<<	User	314	2023-01-31 07:06:26.33188	2023-01-31 07:06:26.33188
1157	Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-23426 <<< Hurry up to buy bitcoin and ether with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-23426 <<<	User	315	2023-01-31 07:10:16.70624	2023-01-31 07:10:16.70624
1158	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50809 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-50809 <<<	User	316	2023-01-31 07:11:52.043947	2023-01-31 07:11:52.043947
1159	Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30809 <<< Buy cryptocurrency with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-30809 <<<	User	317	2023-01-31 07:17:15.426948	2023-01-31 07:17:15.426948
1160	THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49997 <<< THIS CRYPTO EXCHANGE HAS GONE CRAZY AND IS SELLING CRYPTOCURRENCIES AT A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-49997 <<<	User	318	2023-01-31 07:21:04.950392	2023-01-31 07:21:04.950392
1161	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42742 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-42742 <<<	User	319	2023-01-31 07:22:38.080055	2023-01-31 07:22:38.080055
1162	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52387 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-52387 <<<	User	320	2023-01-31 07:27:58.015137	2023-01-31 07:27:58.015137
1163	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17311 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17311 <<<	User	321	2023-01-31 07:31:48.097433	2023-01-31 07:31:48.097433
1164	THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39691 <<< THIS IS YOUR CHANCE TO BUY CRYPTOCURRENCIES WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-39691 <<<	User	322	2023-01-31 07:33:25.843381	2023-01-31 07:33:25.843381
1165	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17698 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17698 <<<	User	323	2023-01-31 07:38:37.767168	2023-01-31 07:38:37.767168
1166	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18879 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18879 <<<	User	324	2023-01-31 07:42:28.134636	2023-01-31 07:42:28.134636
1216	JerryGrEfe JerryGrEfe	User	374	2023-05-31 09:46:48.083349	2023-05-31 09:46:48.083349
1167	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11620 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-11620 <<<	User	325	2023-01-31 07:44:07.333475	2023-01-31 07:44:07.333475
1168	BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20391 <<< BUY BITCOIN AND ETHER WITH 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20391 <<<	User	326	2023-01-31 07:49:20.600537	2023-01-31 07:49:20.600537
1169	Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14108 <<< Big Sale of Bitcoin and Ethereum with 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-14108 <<<	User	327	2023-01-31 07:53:03.536806	2023-01-31 07:53:03.536806
1170	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51664 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-51664 <<<	User	328	2023-01-31 07:54:44.288877	2023-01-31 07:54:44.288877
1171	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20626 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-20626 <<<	User	329	2023-01-31 08:00:06.477272	2023-01-31 08:00:06.477272
1172	MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-7084 <<< MASSIVE CRYPTOCURRENCY SALE WITH 50% OFF >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-7084 <<<	User	330	2023-01-31 08:03:43.047064	2023-01-31 08:03:43.047064
1173	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34259 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-34259 <<<	User	331	2023-01-31 08:05:29.159123	2023-01-31 08:05:29.159123
1174	This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48897 <<< This crypto exchange has gone crazy and is selling cryptocurrencies at a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-48897 <<<	User	332	2023-01-31 08:10:54.199298	2023-01-31 08:10:54.199298
1175	Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45583 <<< Massive Cryptocurrency Sale with 50% off >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-45583 <<<	User	333	2023-01-31 08:14:29.828798	2023-01-31 08:14:29.828798
1176	This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33062 <<< This is your chance to buy cryptocurrencies with a 50% discount >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-33062 <<<	User	334	2023-01-31 08:16:19.982456	2023-01-31 08:16:19.982456
1177	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3332 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3332 <<<	User	335	2023-01-31 08:21:40.640137	2023-01-31 08:21:40.640137
1178	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18628 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-18628 <<<	User	336	2023-01-31 08:25:17.246837	2023-01-31 08:25:17.246837
1179	HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17518 <<< HURRY UP TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-17518 <<<	User	337	2023-01-31 08:27:04.429583	2023-01-31 08:27:04.429583
1180	THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3057 <<< THIS IS YOUR CHANCE TO BUY BITCOIN AND ETHER WITH A 50% DISCOUNT >>> https://telegra.ph/Bitcoin-Ethereum-and-other-cryptocurrencies-with-a-50-discount-01-30-3057 <<<	User	338	2023-01-31 08:32:31.972433	2023-01-31 08:32:31.972433
1181	YOU WILL RECEIVE 150,000,000 (SHIB) SHIBA INU TOKENS, DETAILS IN YOUR ACCOUNT >>> https://shib-airdrop-news.orererintaistan.tk/news-105337 <<< YOU WILL RECEIVE 150,000,000 (SHIB) SHIBA INU TOKENS, DETAILS IN YOUR ACCOUNT >>> https://shib-airdrop-news.orererintaistan.tk/news-105337 <<<	User	339	2023-01-31 08:44:49.231041	2023-01-31 08:44:49.231041
1182	mysyvcyxqkc mysyvcyxqkc	User	340	2023-03-03 10:44:17.011844	2023-03-03 10:44:17.011844
1183	Rogerfak Rogerfak	User	341	2023-04-07 23:17:28.552711	2023-04-07 23:17:28.552711
1184	Lucillewep Lucillewep	User	342	2023-04-11 02:27:02.948495	2023-04-11 02:27:02.948495
1185	EscortDiz EscortDiz	User	343	2023-04-12 05:52:16.6449	2023-04-12 05:52:16.6449
1186	Ronaldtow Ronaldtow	User	344	2023-04-13 17:35:38.452135	2023-04-13 17:35:38.452135
1187	Shannonstoob Shannonstoob	User	345	2023-04-16 03:47:15.473581	2023-04-16 03:47:15.473581
1188	JeffreyAnaew JeffreyAnaew	User	346	2023-04-18 19:27:31.138979	2023-04-18 19:27:31.138979
1189	Arthurfig Arthurfig	User	347	2023-04-19 10:59:00.614329	2023-04-19 10:59:00.614329
1190	Charlesanync Charlesanync	User	348	2023-04-19 16:26:30.282086	2023-04-19 16:26:30.282086
1191	RolandoGox RolandoGox	User	349	2023-04-19 18:55:43.706642	2023-04-19 18:55:43.706642
1192	Arthurfig Arthurfig	User	350	2023-04-20 19:09:20.485392	2023-04-20 19:09:20.485392
1193	Raymonddix Raymonddix	User	351	2023-04-20 21:30:15.874134	2023-04-20 21:30:15.874134
1194	JamesGlirl JamesGlirl	User	352	2023-04-23 18:52:33.05815	2023-04-23 18:52:33.05815
1195	IrinaFluefeliCed IrinaFluefeliCed	User	353	2023-04-24 08:47:59.050262	2023-04-24 08:47:59.050262
1196	Travistix Travistix	User	354	2023-04-26 22:02:58.658385	2023-04-26 22:02:58.658385
1197	pgzaa pgzaa	User	355	2023-04-27 18:19:47.078128	2023-04-27 18:19:47.078128
1198	Charlesanync Charlesanync	User	356	2023-04-29 03:53:14.298153	2023-04-29 03:53:14.298153
1199	Brandoncep Brandoncep	User	357	2023-04-30 15:55:43.291077	2023-04-30 15:55:43.291077
1200	CSdretnency CSdretnency	User	358	2023-05-01 07:32:40.981037	2023-05-01 07:32:40.981037
1201	Davidecork Davidecork	User	359	2023-05-04 06:23:21.368778	2023-05-04 06:23:21.368778
1202	PetroniGox PetroniGox	User	360	2023-05-04 16:13:19.313173	2023-05-04 16:13:19.313173
1203	Nancytut Nancytut	User	361	2023-05-07 14:48:29.579041	2023-05-07 14:48:29.579041
1204	Vasiliyfig Vasiliyfig	User	362	2023-05-13 10:34:36.845103	2023-05-13 10:34:36.845103
1205	Lolitadrorm Lolitadrorm	User	363	2023-05-14 04:57:06.906476	2023-05-14 04:57:06.906476
1209	Irinased Irinased	User	367	2023-05-18 01:07:19.071444	2023-05-18 01:07:19.071444
1221	Davidgor Davidgor	User	379	2023-06-13 02:28:23.262853	2023-06-13 02:28:23.262853
1222	liеeJeora liеeJeora	User	380	2023-06-24 06:57:54.229734	2023-06-24 06:57:54.229734
1225	White bean hummus  Very simple and delicious 😋 	Recipe	86	2023-06-25 19:18:43.089053	2023-06-26 04:19:10.177894
1223	1 can white beans	Ingredient	450	2023-06-25 19:18:43.079061	2023-06-26 04:23:27.112376
1226	2 tbsp tahini (be generous with the amount)	Ingredient	451	2023-06-26 04:23:27.118688	2023-06-26 04:23:27.118688
1227	4 tbsp olive oil	Ingredient	452	2023-06-26 04:23:27.124587	2023-06-26 04:23:27.124587
1228	2 tbsp lemon juice	Ingredient	453	2023-06-26 04:23:27.129535	2023-06-26 04:23:27.129535
1229	1 tsp coriander seeds	Ingredient	454	2023-06-26 04:23:27.134417	2023-06-26 04:23:27.134417
1230	Super small dash of honey	Ingredient	455	2023-06-26 04:23:27.138443	2023-06-26 04:23:27.138443
1231	Super small dash of Dijon mustard	Ingredient	456	2023-06-26 04:23:27.14277	2023-06-26 04:23:27.14277
1232	Salt and pepper	Ingredient	457	2023-06-26 04:23:27.147181	2023-06-26 04:23:27.147181
1224	Drain canned white beans but keep the liquid	Instruction	319	2023-06-25 19:18:43.086517	2023-06-26 04:26:49.342845
1233	Add all ingredients into blender (or add to bowl and us hand blender)	Instruction	320	2023-06-26 04:26:49.349156	2023-06-26 04:26:49.349156
1234	Add back some of the liquid and mix until creamy (I usually use almost all liquid but a little bit is always left so the hummus is not too runny)	Instruction	321	2023-06-26 04:26:49.354278	2023-06-26 04:26:49.354278
1235	1 small clove of garlic pressed	Ingredient	458	2023-06-26 04:28:43.601296	2023-06-26 04:28:43.601296
1327	KevinCoept KevinCoept	User	417	2023-09-13 11:47:42.642862	2023-09-13 11:47:42.642862
1236	340g pasta 🍝 	Ingredient	459	2023-06-29 15:12:09.482413	2023-06-29 15:28:41.925895
1239	1 small can of white tuna in oil	Ingredient	460	2023-06-29 15:28:41.934175	2023-06-29 15:28:41.934175
1240	Ca 200ml sourcream	Ingredient	461	2023-06-29 15:28:41.946457	2023-06-29 15:28:41.946457
1241	1 onion 🧅 	Ingredient	462	2023-06-29 15:28:41.951413	2023-06-29 15:28:41.951413
1242	2 garlic cloves 🧄 	Ingredient	463	2023-06-29 15:28:41.956051	2023-06-29 15:28:41.956051
1243	1 tablespoon kapers	Ingredient	464	2023-06-29 15:28:41.960587	2023-06-29 15:28:41.960587
1244	Some white wine 🍷 	Ingredient	465	2023-06-29 15:28:41.96528	2023-06-29 15:28:41.96528
1245	Some lemon juice 🍋 	Ingredient	466	2023-06-29 15:28:41.970064	2023-06-29 15:28:41.970064
1246	1 tablespoon black olives 🫒 	Ingredient	467	2023-06-29 15:28:41.974476	2023-06-29 15:28:41.974476
1247	Some pasta water 💦 	Ingredient	468	2023-06-29 15:28:41.978955	2023-06-29 15:28:41.978955
1248	Put pasta in water with plenty of salt.	Instruction	323	2023-06-29 15:38:32.359248	2023-06-29 15:38:32.359248
1253	Salt, pepper, chli, according to taste	Ingredient	469	2023-06-29 16:07:39.199002	2023-09-17 15:17:21.036803
1249	Sear for 2 - 3 minutes	Instruction	324	2023-06-29 15:38:32.36865	2023-06-29 15:38:32.36865
1250	Deglaze with white wine and simmer for another 2 - 3 min	Instruction	325	2023-06-29 15:38:32.373419	2023-06-29 15:38:32.373419
1251	Add the sourcream and then finally add some of the pasta water taken from the almost-cooked pasta.	Instruction	326	2023-06-29 15:38:32.378721	2023-06-29 15:38:32.378721
1237	Chop onions finely and sweat for 2 - 3 minutes in tuna oil	Instruction	322	2023-06-29 15:12:09.4903	2023-06-29 15:53:57.896187
1252	Chop garlic and olives finely and put all in a pot with kapers and thyme	Instruction	327	2023-06-29 15:53:57.902442	2023-06-29 15:53:57.902442
1254	TeresaPhins TeresaPhins	User	381	2023-07-01 10:44:16.155064	2023-07-01 10:44:16.155064
305	1 egg 🥚 	Ingredient	172	2021-12-24 13:01:09.635384	2023-07-02 14:40:51.510338
282	250g mascarpone 	Ingredient	163	2021-12-24 09:32:56.748622	2023-07-02 14:40:51.515062
285	200ml cream 	Ingredient	164	2021-12-24 09:48:33.454179	2023-07-02 14:40:51.51919
286	35g sugar 	Ingredient	165	2021-12-24 09:48:33.461051	2023-07-02 14:40:51.522292
288	1 drop lemon juice 🍋 	Ingredient	167	2021-12-24 09:48:33.474126	2023-07-02 14:40:51.527947
290	4 espresso ☕️ 	Ingredient	169	2021-12-24 09:48:33.48707	2023-07-02 14:40:51.530947
287	1 good pinch of salt 🧂 	Ingredient	166	2021-12-24 09:48:33.467295	2023-07-02 14:44:23.176605
291	3 tablespoons Cointreau 🥃 	Ingredient	170	2021-12-24 09:48:33.494222	2023-07-02 14:44:23.18183
1255	3 tablespoons orange juice 🍊 	Ingredient	470	2023-07-02 14:40:51.539112	2023-07-02 14:44:23.185788
301	dip Löffelbiscuits in espresso mix (don’t let them soak too much) and add as next layer	Instruction	103	2021-12-24 10:06:29.775435	2023-07-02 14:44:23.200634
304	let it rest in the fridge for at least 2h (the fresher the fluffier)	Instruction	106	2021-12-24 10:06:29.798163	2023-07-02 14:44:23.204696
1256	Davidgor Davidgor	User	382	2023-07-02 22:55:33.41555	2023-07-02 22:55:33.41555
1257	TeresaPhins TeresaPhins	User	383	2023-07-03 13:13:37.147441	2023-07-03 13:13:37.147441
1258	Gruzthemy Gruzthemy	User	384	2023-07-05 21:53:10.173043	2023-07-05 21:53:10.173043
1259	EllisaFat EllisaFat	User	385	2023-07-21 02:38:21.601051	2023-07-21 02:38:21.601051
1260	Cheap-Soft-bella Cheap-Soft-bella	User	386	2023-07-23 19:33:30.64232	2023-07-23 19:33:30.64232
1261	Emerykem Emerykem	User	387	2023-07-27 14:53:23.789871	2023-07-27 14:53:23.789871
1262	badcosmo badcosmo	User	388	2023-07-29 16:02:01.122849	2023-07-29 16:02:01.122849
1263	Henrytiews Henrytiews	User	389	2023-07-30 11:40:09.683562	2023-07-30 11:40:09.683562
1264	Robbietom Robbietom	User	390	2023-07-30 12:38:43.894747	2023-07-30 12:38:43.894747
1265	Jonadono Jonadono	User	391	2023-07-31 14:21:47.929737	2023-07-31 14:21:47.929737
1266	VernonPioke VernonPioke	User	392	2023-08-01 00:09:34.380328	2023-08-01 00:09:34.380328
1267	enigmapoints enigmapoints	User	393	2023-08-01 01:13:02.922097	2023-08-01 01:13:02.922097
1268	Davidplody Davidplody	User	394	2023-08-01 06:33:58.368526	2023-08-01 06:33:58.368526
1269	StevenFut StevenFut	User	395	2023-08-03 03:23:58.339768	2023-08-03 03:23:58.339768
1270	herzrott herzrott	User	396	2023-08-04 10:03:51.92181	2023-08-04 10:03:51.92181
1271	loderuners loderuners	User	397	2023-08-06 13:28:50.460134	2023-08-06 13:28:50.460134
1272	KeithCal KeithCal	User	398	2023-08-06 22:11:22.412429	2023-08-06 22:11:22.412429
1273	DennisKeemo DennisKeemo	User	399	2023-08-08 15:45:30.387642	2023-08-08 15:45:30.387642
1274	Killerhazard Killerhazard	User	400	2023-08-11 00:29:03.951363	2023-08-11 00:29:03.951363
1275	ThomasCuh ThomasCuh	User	401	2023-08-11 11:48:37.176193	2023-08-11 11:48:37.176193
1276	Howardbeece Howardbeece	User	402	2023-08-12 05:17:44.020466	2023-08-12 05:17:44.020466
1277	Howardbeece Howardbeece	User	403	2023-08-12 21:14:15.227976	2023-08-12 21:14:15.227976
1278	Howardbeece Howardbeece	User	404	2023-08-14 13:15:46.803095	2023-08-14 13:15:46.803095
1238	Jean-Louis and Doro’s tuna pasta This is one of my favourite pastas: tangy from the wine and kapers, hearty and slightly sweet from the onions and the tuna. Serves all your taste buds!	Recipe	87	2023-06-29 15:12:09.493225	2023-09-17 15:16:55.626999
1338	Senyamib Senyamib	User	428	2023-09-25 11:10:55.346576	2023-09-25 11:10:55.346576
1348	RobertDom RobertDom	User	438	2023-10-04 01:27:50.279722	2023-10-04 01:27:50.279722
1358	casino online casino online	User	448	2023-10-21 19:48:14.289673	2023-10-21 19:48:14.289673
1365	CurtisKeeno CurtisKeeno	User	455	2023-10-25 03:34:46.257475	2023-10-25 03:34:46.257475
1373	Sergaiy Sergaiy	User	463	2023-10-30 01:03:30.5382	2023-10-30 01:03:30.5382
1378	Svetlnzb Svetlnzb	User	468	2023-10-30 09:00:58.234361	2023-10-30 09:00:58.234361
1382	Sergpjw Sergpjw	User	472	2023-10-31 01:20:18.709732	2023-10-31 01:20:18.709732
1385	RichardImmuh RichardImmuh	User	475	2023-10-31 07:20:25.495943	2023-10-31 07:20:25.495943
1388	Igortbh Igortbh	User	478	2023-10-31 16:27:55.834501	2023-10-31 16:27:55.834501
1279	Robbietom Robbietom	User	405	2023-08-25 03:19:59.86149	2023-08-25 03:19:59.86149
1280	Raymonderymn Raymonderymn	User	406	2023-08-25 10:04:58.0104	2023-08-25 10:04:58.0104
1281	liboeJeora liboeJeora	User	407	2023-08-25 13:11:50.084647	2023-08-25 13:11:50.084647
1328	ThomasJoype ThomasJoype	User	418	2023-09-13 12:59:45.230776	2023-09-13 12:59:45.230776
1339	Jorgelib Jorgelib	User	429	2023-09-26 13:24:25.863518	2023-09-26 13:24:25.863518
1349	BrunoAttet BrunoAttet	User	439	2023-10-05 17:19:43.219847	2023-10-05 17:19:43.219847
1359	Matthewnog Matthewnog	User	449	2023-10-22 01:58:09.988704	2023-10-22 01:58:09.988704
1366	baccarat baccarat	User	456	2023-10-26 02:33:55.772041	2023-10-26 02:33:55.772041
1374	Igoryif Igoryif	User	464	2023-10-30 01:21:58.653663	2023-10-30 01:21:58.653663
1379	RaymondRhive RaymondRhive	User	469	2023-10-30 12:28:15.625797	2023-10-30 12:28:15.625797
1383	Svetlgpo Svetlgpo	User	473	2023-10-31 01:38:32.328457	2023-10-31 01:38:32.328457
1386	Svetllbk Svetllbk	User	476	2023-10-31 13:33:23.909313	2023-10-31 13:33:23.909313
1389	casino casino	User	479	2023-10-31 17:35:10.566146	2023-10-31 17:35:10.566146
1391	Sergmap Sergmap	User	481	2023-11-01 01:52:09.68287	2023-11-01 01:52:09.68287
1393	Igorenh Igorenh	User	483	2023-11-01 02:12:26.580027	2023-11-01 02:12:26.580027
1291	JohnnyCleat JohnnyCleat	User	408	2023-08-29 13:16:59.037737	2023-08-29 13:16:59.037737
1292	liboeJeora liboeJeora	User	409	2023-08-30 01:16:00.777447	2023-08-30 01:16:00.777447
1293	KevinFaf KevinFaf	User	410	2023-09-01 04:49:32.650011	2023-09-01 04:49:32.650011
1395	Sergkon Sergkon	User	485	2023-11-01 11:32:13.782197	2023-11-01 11:32:13.782197
1397	Svetlanajbf Svetlanajbf	User	487	2023-11-01 21:23:06.60055	2023-11-01 21:23:06.60055
1399	Veronaunx Veronaunx	User	489	2023-11-02 01:55:42.178754	2023-11-02 01:55:42.178754
1401	Irinpuo Irinpuo	User	491	2023-11-02 23:28:07.281287	2023-11-02 23:28:07.281287
1403	Svetlanahpe Svetlanahpe	User	493	2023-11-03 04:35:11.534964	2023-11-03 04:35:11.534964
1405	Veronawor Veronawor	User	495	2023-11-03 06:59:12.654209	2023-11-03 06:59:12.654209
1407	Henryented Henryented	User	497	2023-11-03 18:08:45.941305	2023-11-03 18:08:45.941305
1408	Svetlanauod Svetlanauod	User	498	2023-11-03 18:12:33.287962	2023-11-03 18:12:33.287962
1410	Veronalil Veronalil	User	500	2023-11-04 02:24:42.741715	2023-11-04 02:24:42.741715
1412	Svetlananui Svetlananui	User	502	2023-11-04 15:03:00.65863	2023-11-04 15:03:00.65863
1414	Veronaceg Veronaceg	User	504	2023-11-04 19:12:49.693784	2023-11-04 19:12:49.693784
1418	Leonvry Leonvry	User	508	2023-11-06 01:04:24.818949	2023-11-06 01:04:24.818949
1420	Vilianauki Vilianauki	User	510	2023-11-06 02:04:12.196004	2023-11-06 02:04:12.196004
1422	Leonbne Leonbne	User	512	2023-11-06 21:28:51.462524	2023-11-06 21:28:51.462524
1423	Davidpgo Davidpgo	User	513	2023-11-06 21:32:13.602137	2023-11-06 21:32:13.602137
1425	Davidour Davidour	User	515	2023-11-07 05:10:04.584673	2023-11-07 05:10:04.584673
1427	Vilianazdk Vilianazdk	User	517	2023-11-07 05:24:26.015178	2023-11-07 05:24:26.015178
1429	Davidrmo Davidrmo	User	519	2023-11-07 18:20:25.95119	2023-11-07 18:20:25.95119
1431	online casinos online casinos	User	521	2023-11-07 20:20:17.278573	2023-11-07 20:20:17.278573
1433	Julihau Julihau	User	523	2023-11-08 00:22:34.296446	2023-11-08 00:22:34.296446
1435	Serzvkp Serzvkp	User	525	2023-11-08 00:45:59.145276	2023-11-08 00:45:59.145276
1437	Vikibnv Vikibnv	User	527	2023-11-08 10:52:08.455751	2023-11-08 10:52:08.455751
1439	Vikivyt Vikivyt	User	529	2023-11-08 21:47:53.861441	2023-11-08 21:47:53.861441
1441	Serzerl Serzerl	User	531	2023-11-09 07:35:02.485212	2023-11-09 07:35:02.485212
1443	Juliibf Juliibf	User	533	2023-11-10 06:35:50.004477	2023-11-10 06:35:50.004477
1445	Julifsk Julifsk	User	535	2023-11-10 16:43:53.514693	2023-11-10 16:43:53.514693
1447	Julikov Julikov	User	537	2023-11-11 03:42:16.786509	2023-11-11 03:42:16.786509
1448	Vikiwpe Vikiwpe	User	538	2023-11-11 05:37:42.74669	2023-11-11 05:37:42.74669
1449	Serzstt Serzstt	User	539	2023-11-11 05:42:24.134019	2023-11-11 05:42:24.134019
1450	Evatap Evatap	User	540	2023-11-11 13:21:25.176586	2023-11-11 13:21:25.176586
1451	Eldaribm Eldaribm	User	541	2023-11-11 17:32:54.894023	2023-11-11 17:32:54.894023
1452	Robant Robant	User	542	2023-11-11 18:13:23.447001	2023-11-11 18:13:23.447001
1453	Evahnf Evahnf	User	543	2023-11-12 03:59:12.642836	2023-11-12 03:59:12.642836
1454	Roblmm Roblmm	User	544	2023-11-12 10:01:52.158899	2023-11-12 10:01:52.158899
1455	Robxac Robxac	User	545	2023-11-13 01:21:40.825299	2023-11-13 01:21:40.825299
1456	Eldarfhz Eldarfhz	User	546	2023-11-13 01:44:01.409436	2023-11-13 01:44:01.409436
1457	Evaypx Evaypx	User	547	2023-11-13 04:17:14.392177	2023-11-13 04:17:14.392177
1458	Robpjl Robpjl	User	548	2023-11-13 17:57:56.417501	2023-11-13 17:57:56.417501
1459	Evacwn Evacwn	User	549	2023-11-14 02:43:59.788358	2023-11-14 02:43:59.788358
1460	Nicco's Foccacia A brilliant recipe from one of my students. Fluffy, tasty, easy to make.	Recipe	94	2023-11-14 10:00:53.763184	2023-11-14 10:01:42.926581
1462	30g - Sugar 🍭	Ingredient	487	2023-11-14 10:03:06.612092	2023-11-14 10:03:06.612092
1463	100g - Butter 🧈	Ingredient	488	2023-11-14 10:03:24.860495	2023-11-14 10:03:24.860495
1464	25g - Salt 🧂	Ingredient	489	2023-11-14 10:03:43.416287	2023-11-14 10:03:43.416287
1465	500ml - Water 💧	Ingredient	490	2023-11-14 10:04:07.090701	2023-11-14 10:04:07.090701
1461	1kg - White flour 🥖	Ingredient	486	2023-11-14 10:02:39.835727	2023-11-14 10:04:42.852482
1467	Melt butter in pan	Instruction	343	2023-11-14 10:05:38.011689	2023-11-14 10:05:38.011689
1466	50g - Yeast 🍄	Ingredient	491	2023-11-14 10:04:30.555402	2023-11-14 10:07:28.990274
1468	Put sugar and yeast into a cup and mix until liquid	Instruction	344	2023-11-14 10:06:07.77155	2023-11-14 10:08:59.940366
1469	Mix together butter, yeast and all other ingredients and knead well	Instruction	345	2023-11-14 10:08:56.159508	2023-11-14 10:09:37.389884
1470	Let dough rest for about 1h, ideally put a wet cloth over the dough and put in over at 50C.	Instruction	346	2023-11-14 10:10:09.192264	2023-11-14 10:10:09.192264
1471	Spread dough on baking tray (not too big so that bread will also have some volume) and bake for approx 30min at 170C.	Instruction	347	2023-11-14 10:11:28.635893	2023-11-14 10:11:28.635893
1472	Gessikafig Gessikafig	User	550	2023-11-14 14:25:46.460065	2023-11-14 14:25:46.460065
1473	Evarzl Evarzl	User	551	2023-11-14 14:43:55.207491	2023-11-14 14:43:55.207491
1474	Eldarayi Eldarayi	User	552	2023-11-14 16:53:49.507007	2023-11-14 16:53:49.507007
1475	Robvyn Robvyn	User	553	2023-11-15 02:10:29.511747	2023-11-15 02:10:29.511747
1476	Eldargyq Eldargyq	User	554	2023-11-15 17:51:30.485352	2023-11-15 17:51:30.485352
1477	Ilushikxuo Ilushikxuo	User	555	2023-11-15 23:52:47.44949	2023-11-15 23:52:47.44949
1478	Margaretyqi Margaretyqi	User	556	2023-11-16 02:33:10.821322	2023-11-16 02:33:10.821322
1479	Gessikafig Gessikafig	User	557	2023-11-16 06:49:02.01229	2023-11-16 06:49:02.01229
1480	Eldarcyp Eldarcyp	User	558	2023-11-16 11:02:55.720414	2023-11-16 11:02:55.720414
1481	Viktoriwey Viktoriwey	User	559	2023-11-17 06:46:32.52409	2023-11-17 06:46:32.52409
1482	Margaretcrq Margaretcrq	User	560	2023-11-17 19:37:16.753398	2023-11-17 19:37:16.753398
1483	Ilushikttw Ilushikttw	User	561	2023-11-18 00:01:55.903731	2023-11-18 00:01:55.903731
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.questions (id, content, question_type, created_at, updated_at, moderation, hint, survey_id, "position") FROM stdin;
7	How much do you like food?	scale	2022-03-30 13:28:45.605132	2022-03-30 13:31:08.325685	\N		1	1
8	How often do you cook?	text	2022-03-30 13:31:30.873004	2022-03-30 13:32:42.751106	\N	You can also indicate how many times per week, e.g.	1	2
9	Do you enjoy creating new recipes?	text	2022-03-30 13:33:20.650399	2022-03-30 13:33:56.517498	\N	You can elaborate or just write "yes" or "no"	1	3
12	Where / How do you store recipes?	text	2022-03-30 13:35:07.978581	2022-03-30 13:36:40.039044	\N	e.g. "I don't" or "I take notes"\r\n	1	6
10	How do you share those recipes?	text	2022-03-30 13:34:28.774334	2022-03-30 13:37:29.751347	\N	e.g. "I send notes", "via email", "via text message"	1	4
11	How do you find recipes?	text	2022-03-30 13:34:46.83074	2022-03-30 13:37:54.355208	\N	e.g. google, books, friends	1	5
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.recipes (id, name, description, created_at, updated_at, user_id, serves, published) FROM stdin;
25	Tiramisu 🍮	Not more to say than this is the best tiramisu ever! 😜	2021-12-24 09:32:56.733765	2023-08-25 16:58:59.503949	2	4	t
13	Miso soup à la Naomi	This is a miso soup adapted to my taste and can be enriched with whatever veggies you have at home. Hearty winter dish 🍲	2021-11-04 16:14:10.727608	2023-08-25 16:58:59.51904	2	4	t
14	Roggen al dente Andy style	Perfect rice substitute: Rye in rice cooker	2021-11-05 10:21:00.666194	2023-08-25 16:58:59.526738	1	1	t
1	Fried Tofu with egg	This recipe is amazing for a quick fix when you don't have a lot of time but still need something tasty and healthy. Always got some tofu and egg in my fridge.	2021-10-26 12:36:34.690331	2023-08-25 16:58:59.538195	1	2	t
5	Eingelegter Chinakohl 	Knackig lecker eingelegter Chinakohl perfekt zu Reis oder einfach als Vorspeise (Otsumami)	2021-10-29 08:46:00.777106	2023-08-25 16:58:59.546369	2	2	t
21	Avocado carpaccio 🥑 Japanese style	Just delicious!!! 🤤 	2021-12-23 13:18:44.17812	2023-08-25 16:58:59.554203	2	1	t
4	Natto umami explosion	If you‘re looking for a crazy umami explosion, this is the recipe. Eat this with a cup of rice and you have a fantastic meal!	2021-10-29 08:35:30.431203	2023-08-25 16:58:59.558021	1	2	t
2	Kabocha Kürbis	Japanischer Kürbis à la Naomi	2021-10-27 06:25:48.626249	2023-08-25 16:58:59.570023	2	4	t
17	Cauliflower & red lentil curry 🍛 	Easy curry and you can replace the cauliflower with almost any other veggie 🙂	2021-12-05 12:33:59.497656	2023-08-25 16:58:59.573796	2	4	t
9	Green leaves dish 🍃 against food waste	You can use any sort of green leaves for this recipe from spinach to beetroot leaves to radish leaves, whatever is flying around in your fridge and usually ends up in your compost	2021-11-02 05:10:38.172833	2023-08-25 16:58:59.578027	2	2	t
10	Thai Larb Mu	I'm absolutely in love with this dish. Amazing combination of flavours and ingredients. It's a salad made from meat. Minced pork is seasoned with fish sauce, chili flakes, lime juice, toasted sticky rice and some beautiful herbs to round it off.	2021-11-02 14:17:57.179863	2023-08-25 16:58:59.581751	1	2	t
23	Naomi‘s favorite smoothie 🍓🫐🍒	I just love it! Because I use frozen berries it always feels like eating a dessert 🍨 	2021-12-23 13:37:27.657783	2023-08-25 16:58:59.588934	2	2	t
11	Sticky rice 🍚 what to do with leftovers	Made too much rice and don’t know what to do with it? 🤔 use the leftovers and try this easy and delicious dish	2021-11-03 16:55:41.290713	2023-08-25 16:58:59.592591	2	2	t
12	Naomi’s secret salad sauce 😋	If you ever had a salad at our place and you were wondering about the salad sauce.. here’s the secret! 🤓	2021-11-04 10:36:05.71069	2023-08-25 16:58:59.600148	2	4	t
19	Hijiki	Sweet Japanese umami explosion! Add a bit of rice and you‘re good to go. Hijiki is a seaweed.	2021-12-14 09:51:16.226072	2023-08-25 16:58:59.604977	1	2	t
32	Radish Pickles	This Korean radish pickles recipe is very simple but incredibly delicious 😃 eat with sticky rice 🍚 or just as snack (when having beer 🍻😉)	2022-01-15 18:40:31.640747	2023-08-25 16:58:59.608977	2	4	t
29	Soba noodles with coriander sauce	The combination of coriander 🌿 with the sourness of lime 🍋 and the spiciness of chilli 🌶 will be a revelation 😇	2022-01-12 16:38:52.938109	2023-08-25 16:58:59.613179	1	2	t
20	Arroz à la Stephen & Naomi	We came across this yummy dish on our Portugal trip in 2020. It‘s a great use of leftover rice and it‘s a hearty winter dish to warm you up 🔥 	2021-12-16 13:51:31.356617	2023-08-25 16:58:59.618123	2	2	t
26	Gyoza 🥟 🥟 🥟	Mama Caduff‘s gyoza 🥰	2021-12-24 14:04:18.415318	2023-08-25 16:58:59.637962	2	4	t
34	Pasta aglio 🧄 e olio 🍝 	Probably my number one ☝️ pasta recipe. You‘ll be surprised by how tasty it is, depite, or maybe because of its simplicity. All you need is a blender, garlic 🧄, parsley 🌿 and some cayenne pepper 🌶 powder.	2022-01-22 13:26:21.757675	2023-08-25 16:58:59.646095	1	3	t
18	Frankfurter green sauce	Green sauce is a popular dish from Frankfurt. The cold herb sauce is considered a Hessian cultural asset. But no matter where you are: The recipe for the "Grie Sauce" is loved everywhere.	2021-12-08 09:19:51.828921	2023-08-25 16:58:59.649808	1	4	t
33	Kimchi	Always have to have a batch of homemade kimchi 🥬 at home. It‘s really not that hard, all you need is a bit of patience and some space.	2022-01-16 09:43:06.237373	2023-08-25 16:58:59.653405	1	20	t
36	Quarkcrème mit Beerensauce	Yum yum yum light dessert 🤓	2022-02-04 20:20:16.020256	2023-08-25 16:58:59.70496	2	4	t
65	swiss favorite carrot cake	Yummi	2022-03-16 15:57:10.123124	2023-08-25 16:58:59.71246	22	12	t
70	Vanilla sauce	Vanilla sauce for Germknödel or for any other dessert 🤩 	2022-04-03 18:33:06.576143	2023-08-25 16:58:59.727667	2	4	t
71	Fluffy pancakes 🥞	Tried to make some fluffy 🥞 and thought they ended up quite nice! Very simple and straightforward to make.	2022-07-04 18:51:30.301936	2023-08-25 16:58:59.731407	1	4	t
28	Lentil soup - recipe from a Dubai trip 🛩	A friend of a friend cooked that lentil soup at a dinner party and it was one of the best lentil soups I ever had 🤤 I needed to get the recipe and now I am sharing it with all of you 😉	2022-01-05 13:38:26.876795	2023-08-25 16:58:59.522774	2	2	t
22	Kimchi Jjigae	Super yummy kimchi stew, you can’t get enough of it! You can also use other pieces of meat or no meat at all 🙂 Best served with white sticky rice 🍚 	2021-12-23 13:23:20.518137	2023-08-25 16:58:59.62648	2	2	t
69	Moussaka à la Naomi	Vegetarian moussaka using beans instead of minced meat. Super hearty dish and it’s even better reheated 😋	2022-04-03 18:01:01.303341	2023-08-25 16:58:59.72369	2	4	t
72	Germknödel 	Stephen’s life time favorite dish 😋 It’s doughy, fluffy, hearty and just delicous! Served with vanilla sauce (find recipe here in goormey) and poppy seeds sugar dust 🤤	2022-08-16 20:15:19.209921	2023-08-25 16:58:59.735149	2	8	t
73	Teriyaki sauce jelly	Teriyaki sauce in jelly form. The jelly was an accident but ended up being super delicious 😋 and useful to thinken other dishes 😃	2022-11-10 17:29:22.269296	2023-08-25 16:58:59.740533	2	4	t
77	Pumpkin pie	This is a quick and dirty recipe with a lot of cheating 😆	2022-11-28 19:21:13.087285	2023-08-25 16:58:59.748748	2	8	t
76	Pumpkin pasta 🎃 	Sooo delicious 😋 perfect autumn dish 🙂	2022-11-28 17:11:38.755988	2023-08-25 16:58:59.756219	2	2	t
78	Kale & chickpeas	I just threw together what I found in our fridge and cupboard 🤓	2022-12-20 18:38:05.419342	2023-08-25 16:58:59.759777	2	2	t
80	Curry Cauliflowers	Simple and fast baked cauliflower, with a curry twist	2023-01-02 17:08:33.977775	2023-08-25 16:58:59.763728	1	2	t
81	🥜 🍜 💥	Quick delicious noodles	2023-01-08 14:42:47.236636	2023-08-25 16:58:59.767329	11	1	t
82	Kohlrabi beans salad	Inspired by Ottolenghi and added my own twist to it. The beans make this salad super creamy ☺️	2023-01-14 13:19:05.095832	2023-08-25 16:58:59.770858	2	2	t
84	Potatos au gratin 🥔 	Light version with milk but you can replace a part of the milk with cream 😉	2023-01-14 14:02:16.437522	2023-08-25 16:58:59.774621	2	4	t
83	Cheesecake 🍰	Very simple recipe 🤓	2023-01-14 13:32:33.435305	2023-08-25 16:58:59.778089	2	8	t
85	Oyakodon vegetarian	The original Oyakdon is made with chicken but I am using tofu for this vegetrian version. Oyako means parent and child so in this recipe referring to chicken 🐔 and egg 🥚 This expression is also used for salmon 🐟 and salmon roe combined dishes 😌🤓	2023-01-29 17:50:07.121188	2023-08-25 16:58:59.781653	2	2	t
86	White bean hummus 	Very simple and delicious 😋 	2023-06-25 19:18:43.051056	2023-08-25 16:58:59.785325	2	2	t
92	Biarritz Noodles	Salbei Pasta with a touch of butter	2023-09-05 20:08:51.076843	2023-09-05 20:26:32.605865	11	3	t
93	Maangchi's Green Beans	Simple but delicious way of preparing green beans\n\nhttps://www.youtube.com/watch?v=8fxPfg7QERY	2023-09-12 16:08:42.624673	2023-09-12 16:34:48.077581	1	2	t
87	Jean-Louis and Doro’s tuna pasta	This is one of my favourite pastas: tangy from the wine and kapers, hearty and slightly sweet from the onions and the tuna. Serves all your taste buds!	2023-06-29 15:12:09.459978	2023-09-17 15:16:55.616966	1	2	t
94	Nicco's Foccacia	A brilliant recipe from one of my students. Fluffy, tasty, easy to make.	2023-11-14 10:00:53.7571	2023-11-14 10:12:55.600941	1	6	t
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.schema_migrations (version) FROM stdin;
20210727141800
20210727160242
20210727160746
20210729153706
20210729154742
20210806073748
20210806073749
20210807151411
20210807154229
20210811130814
20210816123953
20210816131730
20210816150818
20210816152954
20211026084833
20211026085147
20211028153506
20211029122229
20211029140402
20211102152111
20211104100136
20211105143619
20211202074154
20211202152058
20211208141339
20220212101009
20220212101010
20220212101011
20220219185635
20220219185636
20220219185637
20220219185638
20220219185639
20220219185640
20220219185641
20220322145335
20220322153741
20220322160348
20220322162144
20220323164433
20220325172511
20220328134350
20220328141001
20220328151015
20220328183855
20230824170931
20230825163920
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.submissions (id, created_at, updated_at, survey_id, email, submission_complete) FROM stdin;
5	2022-03-30 14:35:33.953821	2022-03-30 14:46:25.147343	1	geoffcheah@gmail.com	t
6	2022-03-30 14:43:12.036448	2022-03-30 14:48:34.144354	1	adlonz@yahoo.co.uk	t
7	2022-03-30 14:50:44.612321	2022-03-30 14:53:22.970588	1	imuncomfortablegivingawaymyemail@librio.com	t
8	2022-03-30 14:51:15.026087	2022-03-30 14:54:12.376181	1	oh.jacqueline@gmail.com	t
9	2022-03-30 14:59:26.891273	2022-03-30 15:02:04.363622	1	nina_hofmann@hotmail.com	t
10	2022-03-30 15:14:00.181312	2022-03-30 15:17:04.961246	1	naomi.caduff@gmail.com	t
11	2022-03-30 15:59:59.028963	2022-03-30 16:01:33.061063	1		t
12	2022-03-30 16:02:42.797673	2022-03-30 16:04:42.04616	1		t
13	2022-03-30 16:08:41.660713	2022-03-30 16:14:27.212336	1	mark@librio.com	t
14	2022-03-30 17:09:36.219233	2022-03-30 17:11:46.155329	1		t
15	2022-03-30 17:26:53.390633	2022-03-30 17:32:07.874796	1	manuela.lipp@gmail.com	t
16	2022-03-30 19:44:28.912019	2022-03-30 20:07:31.613523	1	leti_per@icloud.com	t
18	2022-03-31 07:35:15.303926	2022-03-31 07:37:11.671248	1	steffi.a.russell@gmail.com	t
20	2022-03-31 12:56:47.648762	2022-03-31 12:56:47.648762	1		\N
19	2022-03-31 12:56:11.618474	2022-03-31 12:57:40.362098	1		t
21	2022-03-31 16:07:45.30433	2022-03-31 16:10:40.995799	1	anon@bt.com	t
22	2022-03-31 19:09:57.271463	2022-03-31 19:11:15.033073	1	dominik.schuez@gmail.com	t
23	2022-04-02 10:03:05.224012	2022-04-02 10:03:57.33036	1	amshanks@hotmail.co.uk	t
24	2022-04-04 06:59:24.354924	2022-04-04 07:01:56.192434	1	clairegautier1809@gmail.com	t
25	2022-04-04 19:06:45.384073	2022-04-04 19:15:29.838698	1		t
26	2022-04-05 11:40:34.536064	2022-04-05 11:40:34.536064	1	miriam.wueest	\N
27	2022-04-05 14:33:34.857397	2022-04-05 14:33:34.857397	1	miriam.wueest@hotmail.com	\N
28	2022-04-06 03:50:05.825395	2022-04-06 04:06:38.801961	1	miriam.wueest@hotmail.com	t
29	2022-04-07 03:56:26.943274	2022-04-07 04:04:19.518905	1	kirin.goldi033@gmail.com	t
30	2022-04-12 20:32:46.960397	2022-04-12 20:35:46.698987	1	inou-is-the-coolest-person-ever@inousworld.inou	t
17	2022-03-30 19:58:02.938681	2022-08-16 20:31:03.470156	1		t
32	2022-11-22 08:56:33.781202	2022-11-22 08:56:33.781202	1		\N
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.surveys (id, name, created_at, updated_at, description) FROM stdin;
1	Customer Discovery 1	2022-03-30 09:51:36.404076	2022-03-30 14:27:05.463787	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: goormey
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, admin, first_name, last_name) FROM stdin;
21	connierballen@gmail.com	$2a$12$Y1qV6P63MQVSTOI9iauLXu0sWsSwpHnJYmh0LCdWA95s1.LGIAR9G	\N	\N	\N	2022-02-23 10:14:30.751213	2022-02-23 10:16:59.878214	f	Connie	Allen
22	miriam.wueest@hotmail.com	$2a$12$isYOlOuZBYRMDmufNcnyuODmpihlImJ3MlG4WjwW.Xyi9EKSdmzWG	\N	\N	\N	2022-03-16 15:57:09.593689	2022-03-16 16:15:19.53508	f	Miriam	Wüest
23	adlonz@yahoo.co.uk	$2a$12$nbfcZg/MnRGYkA3SP1d1rO5MnpYl21zPla3xsVcCs9b3dB6NPiuwy	\N	\N	\N	2022-03-31 12:42:26.340001	2022-03-31 12:42:26.340001	f	Adam	Lonsdale
9	schuzste@gmail.com	$2a$12$GW7EyryzBdNESAvggqn8YeQNkr.wjdmFq7Sn9NT9E38Oenpg8xLQy	\N	\N	\N	2021-10-28 13:38:00.823233	2021-10-28 13:38:00.823233	f	Test	User
340	rlpmkosdohv@hotmails.com	$2a$12$vEyETGwurz6Ggf5t8RM5OujrBZiTTS56kOeygaLOO/TfSaZ9Tjr0e	\N	\N	\N	2023-03-03 10:44:16.967473	2023-03-03 10:44:16.967473	f	mysyvcyxqkc	mysyvcyxqkc
24	inouridder@gmail.com	$2a$12$u8CrThUjNcJ/HRgoJ6E6m.FhhiD0HyCG3E6KFml0CCS34cv4df8Hm	\N	\N	\N	2022-04-12 20:37:55.351723	2022-04-12 20:37:55.351723	f	Inou	Ridder
2	naomi.caduff@gmail.com	$2a$12$C7mpXW4egcOfLoNuVC99PO3rCtr8/Nb0KHgXL4.pSlZgEj78K6idm	\N	\N	2021-12-30 19:04:06.979383	2021-10-27 06:25:17.657204	2022-10-03 08:29:09.927142	f	Naomi	Caduff
10	inou@gmail.com	$2a$12$YgCjtYnTdG0RxHhLJdRjV.6P1idn4XmIdwQis2iT9IkSyIAZ1WLBa	\N	\N	\N	2021-11-16 12:12:25.611022	2021-11-16 12:12:25.611022	f	Inou	Ridder
12	christian.paris@goormey.com	$2a$12$peMYJeRvGHD1ZqCkp5cgoO/9Aim19KCyHwMz4kHLfEAB5QJPJzjda	\N	\N	\N	2022-02-15 15:39:38.606511	2022-02-15 15:39:38.606511	f	Christian	Paris
13	fancis.brunner@goormey.com	$2a$12$jEFgPQsB6fA/rDdM95QbeucvqgHgRC2vkr2xClyu2kSt4iItrSiTu	\N	\N	\N	2022-02-15 15:39:40.167105	2022-02-15 15:39:40.167105	f	Fancis	Brunner
14	maria.brunner@goormey.com	$2a$12$hc/6ZHratJq77jGK/OsJbOblJ1uistAIxlyesH2cJeaxpwBHy.UM.	\N	\N	\N	2022-02-15 15:39:41.627462	2022-02-15 15:39:41.627462	f	Maria	Brunner
15	janette.auer@goormey.com	$2a$12$9P8SEPKjUNYBxPQVCOXPcOX8.F2uaKoEwaiTkzrnHJMT2hHtvYbDK	\N	\N	\N	2022-02-15 15:39:43.067039	2022-02-15 15:39:43.067039	f	Janette	Auer
16	marc.walter@goormey.com	$2a$12$w3QBQYe0NLo00qPo/JOpW.EHPW8FTjocGFGnoS0ZSXVxSzgMS5Zf.	\N	\N	\N	2022-02-15 15:39:44.521642	2022-02-15 15:39:44.521642	f	Marc	Walter
18	hanspeter.friedrich@goormey.com	$2a$12$YCHHgMxmFcz6s9MHTzy9kOOzX3jP31lUZ.gLFjSr4cQWi6jb8AAA6	\N	\N	\N	2022-02-15 15:44:34.351788	2022-02-15 15:44:34.351788	f	Hanspeter	Friedrich
19	jacob.cruz@goormey.com	$2a$12$cJmE4Vux2OhLvZnW6SlFxu6D4jVGr44YMWBIb6E5AemWloMaPVQ1u	\N	\N	\N	2022-02-15 15:44:35.852964	2022-02-15 15:44:35.852964	f	Jacob	Cruz
20	alexandra.mince@goormey.com	$2a$12$HmcNxSRzSvjQLKxXx/ZWKe5OjhDUUM6TSBzLhxq0an9u1sje81wH.	\N	\N	\N	2022-02-15 15:44:37.322991	2022-02-15 15:44:37.322991	f	Alexandra	Mince
359	gprof@free-private-mail.com	$2a$12$r1BHUJuZEBTkYadkN5yN3eAcVVVeMfu6w/K9M6vrNIqxZk3mZWa9C	\N	\N	\N	2023-05-04 06:23:21.343086	2023-05-04 06:23:21.343086	f	Davidecork	Davidecork
378	iconic+dib@iconicompany.com	$2a$12$zfs8dYluVCTeLwCfYGvfdu7bqcOUSNhIArKmX7vcK3CLfB0LE66wy	\N	\N	\N	2023-06-11 17:15:50.522344	2023-06-11 17:15:50.522344	f	iconicrat	iconicrat
397	apclub@wmailer.top	$2a$12$6RdFDswIT4ToOyxiYEtUlu1zs.uyn8o.RSJCoef4pL8AqhhgmKKAm	\N	\N	\N	2023-08-06 13:28:50.435967	2023-08-06 13:28:50.435967	f	loderuners	loderuners
416	dk.kd.kkdkk.1.7@gmail.com	$2a$12$hdkGQiN2GfaXQBbY8h449uTdF1RwS8MXmrU.R.QZaWPMGfTSaI1IW	\N	\N	\N	2023-09-11 08:58:01.80503	2023-09-11 08:58:01.80503	f	VernonPioke	VernonPioke
11	je.pellaton@icloud.com	$2a$12$WPEpDFM9jDlAbkwwgG7I5.PHhwUaAXtIafhH6NGi3GDZ73bOcBq2e	\N	\N	\N	2021-12-03 09:48:42.163515	2023-01-08 15:15:31.881064	f	Marie	Rose
8	test@test.com	$2a$12$sVvMvDoEc3rBFbP1gI7CLu9rAQSYJOFg.fwMUrD.BPsHSOyVb8O16	\N	\N	\N	2021-10-28 13:37:04.000523	2023-01-31 09:53:31.576869	f	Test	User
435	avtokat76ru@yandex.com	$2a$12$ERQjTf6ZDMNhbc/KrZdCV.oSYfTnYSM/k4VL/I/r1PtGa9b9E0NMi	\N	\N	\N	2023-10-03 00:52:11.570027	2023-10-03 00:52:11.570027	f	Robertmow	Robertmow
454	maidanpu@gmail.com	$2a$12$5xD7CxjQSX8lCBfIhLmv1uXollC.HgeARgwBq4Xrvq2VeYHBNQAR2	\N	\N	\N	2023-10-24 15:52:50.499312	2023-10-24 15:52:50.499312	f	DudleyBom	DudleyBom
475	casjoker28@gmail.com	$2a$12$NryJrS3mI09YTyW3uQosHOP5sZwBHX9ZWgcC51.U.MqOcU9YteYEi	\N	\N	\N	2023-10-31 07:20:25.491601	2023-10-31 07:20:25.491601	f	RichardImmuh	RichardImmuh
494	i.ri.na2020ko.b.za.r.20.20@gmail.com	$2a$12$LJclZvHb9TIw1HwOeuqnUe.ngEtS8R4w8kTY2ZkHh3YW26tnSTaay	\N	\N	\N	2023-11-03 06:33:58.42139	2023-11-03 06:33:58.42139	f	Irinoqw	Irinoqw
517	v.i.llan.umor.u.c.hkom.ost@gmail.com	$2a$12$8vWQueAW7BHCGECUdRLQQegt0bA/rx.WWO4EzXvjDVFYUfXynZFEa	\N	\N	\N	2023-11-07 05:24:26.010752	2023-11-07 05:24:26.010752	f	Vilianazdk	Vilianazdk
536	s.erz.k.r.ut.o.gol.o.vth.e.m.a.n@gmail.com	$2a$12$lnWzRuwqPtA5C3Jt7f9ZkePTGMYnMA1as5DDc7I1GlUmtQYfLN/H.	\N	\N	\N	2023-11-10 17:23:36.151436	2023-11-10 17:23:36.151436	f	Serzcjn	Serzcjn
556	m.a.r.g.ar.e.l.o.vetrob.e.rts@gmail.com	$2a$12$jTXgwrno3.Z9cnZzFOJxG.cVYIFw49GmvIT5t.5bc6CSuSq0qu8Fy	\N	\N	\N	2023-11-16 02:33:10.813187	2023-11-16 02:33:10.813187	f	Margaretyqi	Margaretyqi
341	piter_norton@gmail.com	$2a$12$cAd5m0HLTwCjdLHzHlYgVurrdFLb6xKuoFhiXUA7GxpH3ONjWQ1Ce	\N	\N	\N	2023-04-07 23:17:28.531156	2023-04-07 23:17:28.531156	f	Rogerfak	Rogerfak
360	ukrasotin2@gmail.com	$2a$12$1rJ2OpPeKxFo6LcbjKIC7.uvW9IXfoSywDcDcGoBR/t8HLquZuit2	\N	\N	\N	2023-05-04 16:13:19.306752	2023-05-04 16:13:19.306752	f	PetroniGox	PetroniGox
379	kat-service56ru@ya.ru	$2a$12$p1pHY0s5HwnQsuIqL3LfKeZF1jmDlCOuC1mPDqFcfjcp1L8WgrMku	\N	\N	\N	2023-06-13 02:28:23.238471	2023-06-13 02:28:23.238471	f	Davidgor	Davidgor
398	alexanderalexanderov242@gmail.com	$2a$12$9lG8NWGupK.p6lyaX/utzu9nivQKgTETxgrPt5QJolppcJKaXazEW	\N	\N	\N	2023-08-06 22:11:22.399465	2023-08-06 22:11:22.399465	f	KeithCal	KeithCal
417	nste.pannow@gmail.com	$2a$12$tzDEysZCVZTfPv0skcMqO.DUg3CaqCq/pTd733ruH4lK7ypcB0URO	\N	\N	\N	2023-09-13 11:47:42.611969	2023-09-13 11:47:42.611969	f	KevinCoept	KevinCoept
436	vasiro275@gmail.com	$2a$12$Mpc8DXe4OHyPhWv4Viz5NOrwbnwmEpRapmJ1cNUoxbq3hIAtJJHAy	\N	\N	\N	2023-10-03 07:22:10.646928	2023-10-03 07:22:10.646928	f	online gambling in new jersey	online gambling in new jersey
455	progon@dlyaprogona.site	$2a$12$NXfJWdDe2ByjcUb65sjtOeeMt3j4EWmW4ruqtWYUuWjIdDNP5DGri	\N	\N	\N	2023-10-25 03:34:46.242781	2023-10-25 03:34:46.242781	f	CurtisKeeno	CurtisKeeno
476	i.rcze.n.kosvetlan.a.s.203.0@gmail.com	$2a$12$QrPYX/li8eAEIslqKKQjJeZpOvQDZL577rU8IlvvyO2mIUFjp35N6	\N	\N	\N	2023-10-31 13:33:23.90426	2023-10-31 13:33:23.90426	f	Svetllbk	Svetllbk
495	v.er.o.nika.slo.b.o.da.no.v.ich@gmail.com	$2a$12$cpBczReBmAjva0aXKQDFNukFae9WTKwO.RdXDPUz40FThWz8MVPbi	\N	\N	\N	2023-11-03 06:59:12.646997	2023-11-03 06:59:12.646997	f	Veronawor	Veronawor
518	l.e.onids.h.k.o.rob.enk.o.v.vya@gmail.com	$2a$12$zR8Id7cgPT8iruhXUYClte5JdOq9Ds5vOjn7KgSVPFYvhIesIj0MG	\N	\N	\N	2023-11-07 16:17:28.186151	2023-11-07 16:17:28.186151	f	Leonafs	Leonafs
537	an.je.l.ik.alopi.s.t.u.c.k.l.o.v.e@gmail.com	$2a$12$LgwkmYttYWdrQD9QynW4eu99gsqlgaWGpgc8yoT4xn65yHvYYGc/S	\N	\N	\N	2023-11-11 03:42:16.781196	2023-11-11 03:42:16.781196	f	Julikov	Julikov
557	igorzuzenko02@gmail.com	$2a$12$MDOSGaNntlB53OZYZvbbjuUItxViBQtW6FVeQTUvvQ2IXYqtmyD2C	\N	\N	\N	2023-11-16 06:49:02.004925	2023-11-16 06:49:02.004925	f	Gessikafig	Gessikafig
342	sigitszorin@yandex.ru	$2a$12$2CQJNX4IDnlwwW01IBh4V.HZivkcxnLY2o15/7ZCIUfoICFLhQfKS	\N	\N	\N	2023-04-11 02:27:02.928465	2023-04-11 02:27:04.857198	f	Lucillewep	Lucillewep
361	rogyfovki@tofzilla.ru	$2a$12$rbZ/o/LdRwDkCu5PvZVAPOC3b//qycfpSea5tcUkg8o5iDV77CtuO	\N	\N	\N	2023-05-07 14:48:29.569033	2023-05-07 14:48:30.732303	f	Nancytut	Nancytut
380	jonathanbowman@reg.pw	$2a$12$4FQIniX1SK9ZilV.dJLlnOdfiKfTwhnCqYkeZ2.Rglqtm/MwbPZMS	\N	\N	\N	2023-06-24 06:57:54.211474	2023-06-24 06:57:54.211474	f	liеeJeora	liеeJeora
399	you4rsss88mgail@gmail.com	$2a$12$aU09tXkxDK/iC63dpvqJVeMleHTys01uHV8GIPJsfT.hFZsNDXu.y	\N	\N	\N	2023-08-08 15:45:30.370737	2023-08-08 15:45:30.370737	f	DennisKeemo	DennisKeemo
418	c.ur.tba.lch2.02.2.@gmail.com	$2a$12$7CdXOYcFbWWYsf9FwgdCS.aDjg90gabiimEimgLTevr3x4kJYXb86	\N	\N	\N	2023-09-13 12:59:45.2265	2023-09-13 12:59:45.2265	f	ThomasJoype	ThomasJoype
437	seo-keysy@piffpaff.ru	$2a$12$zBAoywXV27VSrCcNV0ZbwuqVJgxAkUO3rj8A9gwgSxU3kLhjEybEy	\N	\N	\N	2023-10-03 23:08:12.751428	2023-10-03 23:08:12.751428	f	Jasonvep	Jasonvep
456	paldf3577@gmail.com	$2a$12$ADykXUsR05HlaVbInMh7x.r5tkLDEuy5kqNuRGDLofk3tFKmDoBMq	\N	\N	\N	2023-10-26 02:33:55.765672	2023-10-26 02:33:55.765672	f	baccarat	baccarat
477	s.triuo.kof.f.sti.f.falm.ost@gmail.com	$2a$12$AcpMLNz5720LwgOk2R6EEO7wcdek7j0cZjR/SMDin5akEmEUhaALS	\N	\N	\N	2023-10-31 15:16:50.233345	2023-10-31 15:16:50.233345	f	Sergbuc	Sergbuc
496	p.in.gviii.n.aka.@gmail.com	$2a$12$Zspl4gc9WMv8bprp3cKD7ObMtR6sRTPDV8rwSH0YVS4QicomI.IYy	\N	\N	\N	2023-11-03 11:24:10.16908	2023-11-03 11:24:10.16908	f	Wendyget	Wendyget
519	s.e.mec.z.e.nkoda.vi.d.b.igma.n@gmail.com	$2a$12$Uz4OCxKl819zHF3uaeSQTeB5SmzYUbB8skEaprO44G7dsEwWxdNl2	\N	\N	\N	2023-11-07 18:20:25.945423	2023-11-07 18:20:25.945423	f	Davidrmo	Davidrmo
538	v.i.k.tor.iy.askuc.h.k.o.1.9.99@gmail.com	$2a$12$tCcpYj9YAUxKVXXCKqpNSeLhndlJhAz88bsIycDm9.BnWIFVLEjJC	\N	\N	\N	2023-11-11 05:37:42.741776	2023-11-11 05:37:42.741776	f	Vikiwpe	Vikiwpe
539	s.er.z.k.rutog.ol.o.vth.e.man@gmail.com	$2a$12$lPRbDmob4Z3sNa4wj4/Sqewc7XkCPK7tdR/LkEWY4zh7OVZFWbSgC	\N	\N	\N	2023-11-11 05:42:24.130072	2023-11-11 05:42:24.130072	f	Serzstt	Serzstt
558	ale.ksejst.u.k.oru.kov.2.04.8@gmail.com	$2a$12$BaPprRbBMugBmnlCZAETIuOTuKPfh4z6dAB6VODMzKveAC1rZvfym	\N	\N	\N	2023-11-16 11:02:55.713623	2023-11-16 11:02:55.713623	f	Eldarcyp	Eldarcyp
343	earlhorton@reg.pw	$2a$12$an3vFUmdqOcBHOH4ZymARuePNW4gleTxQdgV61Bs2kQ..bTQUER/W	\N	\N	\N	2023-04-12 05:52:16.626334	2023-04-12 05:52:16.626334	f	EscortDiz	EscortDiz
362	krinzgov85@gmail.com	$2a$12$.oO7RTkurpBOautpBgW4hudxnGpTrzdoIHCmW9uzceCFuNSKokC4y	\N	\N	\N	2023-05-13 10:34:36.837517	2023-05-13 10:34:36.837517	f	Vasiliyfig	Vasiliyfig
381	cinalkiniry4@hotmail.com	$2a$12$9JakBPIZ3rWyyWiYeWWQKOhNgUl9TewvDRUKmTg.VYcclcJHX4r5W	\N	\N	\N	2023-07-01 10:44:16.139542	2023-07-01 10:44:17.19713	f	TeresaPhins	TeresaPhins
400	zpspace@wmailer.top	$2a$12$SdPj9b3sJtnlFs2Z0F28BeOnZIZ5Z1sJmwyczCfnveMxvd5qFi39q	\N	\N	\N	2023-08-11 00:29:03.926662	2023-08-11 00:29:03.926662	f	Killerhazard	Killerhazard
419	bob345@posti8.site	$2a$12$btRhoIiYdE03/oG3nLLePemV3bGY4OLjIAqKYTmtp9pzjpe8Nn1jG	\N	\N	\N	2023-09-14 12:40:16.34667	2023-09-14 12:40:16.34667	f	BobZen	BobZen
438	stephen934@gmail.com	$2a$12$qSG6YQXPLL01GZ0VWhUokOrrBvLuFVKiUFHlJIjI8KY2QmJHOwVx6	\N	\N	\N	2023-10-04 01:27:50.275241	2023-10-04 01:27:50.275241	f	RobertDom	RobertDom
457	dedede@deeee.com	$2a$12$rcSJUAxS2rh/Dem2FZ43nOY.Jl9AzrGLOGPeFDtjuIZvr.5QPLCoa	\N	\N	\N	2023-10-26 09:50:51.950668	2023-10-26 09:50:51.950668	f	cok	cok
478	s.hku.tko.vi.g.o.r.e.c.ze.k.be.s.t@gmail.com	$2a$12$G.2Wsc6nTSy4vE2jeQvrnO3U6lI0xg/3tVqrmrOiB2JD.eahRsXqO	\N	\N	\N	2023-10-31 16:27:55.828544	2023-10-31 16:27:55.828544	f	Igortbh	Igortbh
497	goldboy1931@gmail.com	$2a$12$ZeIeN8N.Ke1vXnYnFVDzHOFZ1M96QVB0/2J32an9CELPJQPA3Wj2.	\N	\N	\N	2023-11-03 18:08:45.936135	2023-11-03 18:08:45.936135	f	Henryented	Henryented
498	k.riczi.kovay.as.vet.l.an.a@gmail.com	$2a$12$k4MFyn5uinetDGS8Wvr/DeJfOaCliW3UGs3ycKUXy2pG2sAu/k3s.	\N	\N	\N	2023-11-03 18:12:33.280961	2023-11-03 18:12:33.280961	f	Svetlanauod	Svetlanauod
520	v.i.l.l.a.nu.m.oruc.hko.m.os.t@gmail.com	$2a$12$AqrNCkONdBN36x2n9BUYd.9KzVh2DiuDP2dsAmj/YQ2XPykXKiH1.	\N	\N	\N	2023-11-07 19:13:23.518724	2023-11-07 19:13:23.518724	f	Vilianaiwz	Vilianaiwz
540	e.v.asto.god.uk.love.l.i.f.e@gmail.com	$2a$12$gL/UnhGampn/f3cEdFaDReqyPbUinaXmii2ilNbmLnf/lYn6DyGfG	\N	\N	\N	2023-11-11 13:21:25.17098	2023-11-11 13:21:25.17098	f	Evatap	Evatap
559	vik.tor.i.a.i.lo.v.e.back.c.h.am@gmail.com	$2a$12$YBxNvPBaZIY1f85tqfDPP.0eVHvZ2xY.IUuw0wiPixf4p4OCHWnlu	\N	\N	\N	2023-11-17 06:46:32.515765	2023-11-17 06:46:32.515765	f	Viktoriwey	Viktoriwey
344	gtrfytytruytryur@gmail.com	$2a$12$av6I6FwAOrf7KWWK9TUC0e8ylSN.z6.YLe4257nWXTnOejlbVP/n.	\N	\N	\N	2023-04-13 17:35:38.416986	2023-04-13 17:35:38.416986	f	Ronaldtow	Ronaldtow
363	arsenii.voronkovshd@yandex.com	$2a$12$fyW8cB0ktczkZmhrAmejRe14Q045vBatIS/ofXj9HdZWSuR0rRfFm	\N	\N	\N	2023-05-14 04:57:06.877997	2023-05-14 04:57:08.298194	f	Lolitadrorm	Lolitadrorm
382	kat-service56ru@yandex.ua	$2a$12$KvUyMp3tvrXwI4DWWYWsfuO7efweZOqDiCEa3ArsFYfN5J0921V9a	\N	\N	\N	2023-07-02 22:55:33.398044	2023-07-02 22:55:33.398044	f	Davidgor	Davidgor
401	d.ddk.k.84.8.@gmail.com	$2a$12$6NNujChCF9frZZBFZlWJEudB9.GzNFMNBwjiidKiY3TIS.fcfJ9SO	\N	\N	\N	2023-08-11 11:48:37.162641	2023-08-11 11:48:37.162641	f	ThomasCuh	ThomasCuh
420	5242kq@zabs.cc	$2a$12$5pfR4QHXLpGOTWSuTKjyreMBp1v3nVF8tib2p7yUugZSl0tlVM9jS	\N	\N	\N	2023-09-14 13:08:12.075905	2023-09-14 13:08:12.075905	f	gobetsoft	gobetsoft
439	bruno4@mailside.site	$2a$12$ZIkmgbk6T8o1kypcLyM6OOvBWP3eOK8y5PFghlrWu7.DQt4JTGYGG	\N	\N	\N	2023-10-05 17:19:43.213659	2023-10-05 17:19:43.213659	f	BrunoAttet	BrunoAttet
458	tankkz@theartoflivingfully.com	$2a$12$qwULXZ/MPYDkJVR88zv7fuwJWufiAqTe5WHafJXBGU15ebmaC1d3G	\N	\N	\N	2023-10-28 10:45:24.422162	2023-10-28 10:45:24.422162	f	DavidPap	DavidPap
479	paldf33335@gmail.com	$2a$12$FumjNP8gHF9mLyaCkoYRm.th4FbznrzhKpMGQ67g4UcVNAT773kWq	\N	\N	\N	2023-10-31 17:35:10.561432	2023-10-31 17:35:10.561432	f	casino	casino
499	i.r.i.n.a2.0.2.0k.o.bz.ar2020@gmail.com	$2a$12$v4Lip/NE0pmUIGzxzR22lOy8DqvMnVuifP6py7b85uLuT1LuH.1pK	\N	\N	\N	2023-11-03 20:44:52.979493	2023-11-03 20:44:52.979493	f	Irintrw	Irintrw
521	you888rmail@gmail.com	$2a$12$C4iUQ9NewWo/6sI94J5e3ukK6ZmEYVvLm3YP/MMbolqXbI0qRDrXO	\N	\N	\N	2023-11-07 20:20:17.274494	2023-11-07 20:20:17.274494	f	online casinos	online casinos
541	alek.sej.st.uk.or.uk.ov20.4.8@gmail.com	$2a$12$zM7EcuHe2KOEmR0ziNPLbOVbMSZXYVmCP2kMSpvKl9reii3hR6oqu	\N	\N	\N	2023-11-11 17:32:54.888365	2023-11-11 17:32:54.888365	f	Eldaribm	Eldaribm
560	ma.rga.r.el.ovetr.ober.t.s@gmail.com	$2a$12$ErcHyaNdM6bKzKNiSs90N.elzHT0XWR5KgyeBD2jkMwvm/IKkEk52	\N	\N	\N	2023-11-17 19:37:16.747441	2023-11-17 19:37:16.747441	f	Margaretcrq	Margaretcrq
345	kxhukuhcht09@softdisc.site	$2a$12$VfZV5BcydpUFwIYFxpz8su3Kzjtnr88wCmF3ufXh9NVMKOy0e1LIC	\N	\N	\N	2023-04-16 03:47:15.466943	2023-04-16 03:47:15.466943	f	Shannonstoob	Shannonstoob
364	6dumeafuutbh@softdisc.site	$2a$12$tGbqhHm0rfVYuUvJ1rZ2leHIHNflUxPfuEuZciK0cck0s6wSj5Hrq	\N	\N	\N	2023-05-15 07:21:47.356481	2023-05-15 07:21:47.356481	f	Michaeladugs	Michaeladugs
383	wrxurlygk@tofzilla.ru	$2a$12$fWS127ukxPVN/fCXfUQBGOSWuml81kbS9BrC/GDqX9uoW0WtzGaVq	\N	\N	\N	2023-07-03 13:13:37.139134	2023-07-03 13:13:38.755186	f	TeresaPhins	TeresaPhins
402	oorenkat@yandex.kz	$2a$12$s0HArAJHaosrikRs9CbEi.e/FiZ0cyq6c8lQvzl3mTmkVZwu6OLsy	\N	\N	\N	2023-08-12 05:17:44.015503	2023-08-12 05:17:44.015503	f	Howardbeece	Howardbeece
421	marinatohin@outlook.com	$2a$12$chsH6LLsYBAjUtTou9pUCuNvZk1w85a2yBhCGOjrShdz/eZLpdose	\N	\N	\N	2023-09-14 14:43:35.233937	2023-09-14 14:43:35.233937	f	CanadPharmProzak	CanadPharmProzak
440	froeach12@rezka.wtf	$2a$12$LgpLCa6VGFKpWH7/cq4gRenTSe5KuMHLYeeWmFUSL6JWBwXPF5rQu	\N	\N	\N	2023-10-06 01:34:00.881018	2023-10-06 01:34:00.881018	f	IlonaMip	IlonaMip
459	irc.z.enk.osv.e.tl.an.a.s2.03.0@gmail.com	$2a$12$Rtpe0akDMjy/c1Zy4Iysweziz3LLsO9a5w..qnVGTYaNwiRZZNOk2	\N	\N	\N	2023-10-28 12:20:02.372677	2023-10-28 12:20:02.372677	f	Svetlsss	Svetlsss
480	ircze.nk.osv.e.tl.a.n.as2.030@gmail.com	$2a$12$SNWYwvVYeD3.Oy9.Dd9PJuV2CFWw/zljftn.tPbhBstJXvMkFZZ0q	\N	\N	\N	2023-11-01 00:57:00.521611	2023-11-01 00:57:00.521611	f	Svetlcah	Svetlcah
500	ver.oni.kasl.o.b.odano.vi.ch@gmail.com	$2a$12$9KifynnuYAfMzyNf.Sk.IOL5V4ddl55ibYkAQipNLF.SFE73Wv6dm	\N	\N	\N	2023-11-04 02:24:42.736968	2023-11-04 02:24:42.736968	f	Veronalil	Veronalil
522	gugloff.444@gmail.com	$2a$12$yp5vv8aCP5l2/0PvSenD1O1lfLUZDCtNg.8UwRSN1ncRTvTouJ726	\N	\N	\N	2023-11-07 21:13:02.040549	2023-11-07 21:13:02.040549	f	FloydSmoli	FloydSmoli
542	r.ob.ertbro.wnm.oonm.a.ns@gmail.com	$2a$12$5pD9HUXawvxBSLYLh0NixuoiA6jMvP6N8KxIDmdtjXkHSr2uGWEPu	\N	\N	\N	2023-11-11 18:13:23.44182	2023-11-11 18:13:23.44182	f	Robant	Robant
561	sk.reb.co.vi.l.ius.hka.2.08.6@gmail.com	$2a$12$B.yWhHaHDxelsrQdWkilAuCMCM1jT5l5vXUVyu7r./u1azt8tksSq	\N	\N	\N	2023-11-18 00:01:55.898043	2023-11-18 00:01:55.898043	f	Ilushikttw	Ilushikttw
346	sfdsfsdf@gmail.com	$2a$12$kFEgLUuhe6NQUxLOhmgMA.FUYPKxMrlIOu/bK99XrQ0tz6/5J0zH2	\N	\N	\N	2023-04-18 19:27:31.13178	2023-04-18 19:27:31.13178	f	JeffreyAnaew	JeffreyAnaew
365	kjcgzyrpj@tofzilla.ru	$2a$12$hTN7MS4v0w/fpoVf8JzQcew3aCly5HPkx7FJ1mg7usOa2yg3bnSai	\N	\N	\N	2023-05-17 13:16:23.286484	2023-05-17 13:16:24.50786	f	Audraomist	Audraomist
384	michaelrhodes@reg.pw	$2a$12$ebsq1oc9yQIQ.EV8tRnNoeNXppsdRLH.PvWIMD.2XmY1aKZ0otaiW	\N	\N	\N	2023-07-05 21:53:10.16856	2023-07-05 21:53:10.16856	f	Gruzthemy	Gruzthemy
403	oorenkat@yandex.ua	$2a$12$i2b6dn.tlUXLcpDUaG3nj.27Y0Bxs2lKvDjwP1Be5.3mnZqRF5IJ.	\N	\N	\N	2023-08-12 21:14:15.223299	2023-08-12 21:14:15.223299	f	Howardbeece	Howardbeece
422	a.t.remezow@gmail.com	$2a$12$inBoM/aqdw9J8eAdIGxgJ.UjZxFCB3geVadh9CSmuCIsUDEdR88ke	\N	\N	\N	2023-09-15 18:07:09.559705	2023-09-15 18:07:09.559705	f	DavidInfed	DavidInfed
441	3@prezzocomprare.com	$2a$12$tenq11P2n98ntkcfGdorS.BC8NSgpYJTyT8ASc3Goheh8dnoYkP9W	\N	\N	\N	2023-10-09 20:38:05.45602	2023-10-09 20:38:05.45602	f	Andrewfak	Andrewfak
460	str.iuo.k.o.ff.s.t.if.fa.lm.o.s.t@gmail.com	$2a$12$MQB94TGedlhZntDAUuDjdeR3NHWeTuNjyawfPcIGjJKWRH9aFU/wq	\N	\N	\N	2023-10-29 04:11:06.68453	2023-10-29 04:11:06.68453	f	Sergzli	Sergzli
461	s.h.k.ut.k.o.vig.o.r.ecz.ek.bes.t@gmail.com	$2a$12$CecNI2cNHlFFTue5HuHUweB23EAKuwxyes0vSraeEX8d0casMiqnq	\N	\N	\N	2023-10-29 04:11:10.159173	2023-10-29 04:11:10.159173	f	Igorljz	Igorljz
462	i.rcze.n.k.os.v.e.tlana.s2.03.0@gmail.com	$2a$12$TJ7hFX9txNEM60S7Almq7OFNkzp0oX7L33Vd2HtEmoL/p08OyJgai	\N	\N	\N	2023-10-29 04:11:52.692591	2023-10-29 04:11:52.692591	f	Svetlfgy	Svetlfgy
481	s.t.ri.u.ok.o.ffsti.ffalm.ost@gmail.com	$2a$12$J0QANELX7xSf3EU9bBwe6uoAy.0pYGZrQSohprUXht6QsYMp9MGDW	\N	\N	\N	2023-11-01 01:52:09.67833	2023-11-01 01:52:09.67833	f	Sergmap	Sergmap
501	irina.2020.kob.z.ar.2.020@gmail.com	$2a$12$gGs4HWKlyjT9Suv.4woI3e2c.ypY539IlSeuB3ukQixSVgJ3IUIFO	\N	\N	\N	2023-11-04 05:09:53.484128	2023-11-04 05:09:53.484128	f	Irinoot	Irinoot
523	an.jel.i.k.a.lo.pist.uc.k.lo.v.e@gmail.com	$2a$12$HWy1vIgs.ph7ZfxFnBG7COWQH2LUBBfiwQa0la1sfp9Ey8o4wb7Ee	\N	\N	\N	2023-11-08 00:22:34.291958	2023-11-08 00:22:34.291958	f	Julihau	Julihau
543	e.va.st.og.o.d.u.k.l.o.v.elife@gmail.com	$2a$12$7r8VOKD1.H.EWIH3vuvAde4in5xlACUeLCrUcoNB9yFJOz2lfsIsO	\N	\N	\N	2023-11-12 03:59:12.637843	2023-11-12 03:59:12.637843	f	Evahnf	Evahnf
347	kari_norton@gmail.com	$2a$12$KXI2NrC7oPU.Wf2wrjSJmejjp.EBmdZSv1lLM87DrRqfjLhCPWSrW	\N	\N	\N	2023-04-19 10:59:00.607315	2023-04-19 10:59:00.607315	f	Arthurfig	Arthurfig
366	menhos7@rambler.ru	$2a$12$KIcHKfTkSQPQUoGUI1azP.Au6c38f.WC7ExbX21igfaAAzhUMQlsO	\N	\N	\N	2023-05-17 15:41:29.429508	2023-05-17 15:41:29.429508	f	NathanboT	NathanboT
385	viktor.fedorovefk@yandex.com	$2a$12$kTjGMqoz7TWMxT2tptwDFeoXqPkKv6hSlciIzlxceoPGlHca4zuz.	\N	\N	\N	2023-07-21 02:38:21.582078	2023-07-21 02:38:22.644387	f	EllisaFat	EllisaFat
404	oorenkat@yandex.com	$2a$12$RpKoSeCsmcCLQBgVEdgM6ui3/LX2hzoF.3K92V3U0r5vRVovkxNd2	\N	\N	\N	2023-08-14 13:15:46.795791	2023-08-14 13:15:46.795791	f	Howardbeece	Howardbeece
423	igor78@mailside.site	$2a$12$xvPVQSyeR9DFr7sUZh0/Qu/IFYeFcJVUTNaICH2OHE7piNJqPHg6.	\N	\N	\N	2023-09-19 12:12:49.735014	2023-09-19 12:12:49.735014	f	Igorltit	Igorltit
442	mj2r44mail@gmail.com	$2a$12$SaJUcFjdI8DjzTopuEVwoOP8vxJwaDgHnQ3BuazxprBgyVI/732Ri	\N	\N	\N	2023-10-10 06:29:31.45059	2023-10-10 06:29:31.45059	f	casino online	casino online
463	s.t.riu.o.k.of.f.s.ti.f.fa.lmos.t@gmail.com	$2a$12$BsyOjLNyR75rr6nnH/TE1O67fP.0kzL9BkAVy9xhOZXvBnfh2HGpu	\N	\N	\N	2023-10-30 01:03:30.533692	2023-10-30 01:03:30.533692	f	Sergaiy	Sergaiy
482	yekbwpbwc@exzilla.ru	$2a$12$1kkCx.6aDifufbAmMwuG8OHtQlZqe6Sb7xxIeNstM91huYFh9dnDW	\N	\N	\N	2023-11-01 02:04:46.290304	2023-11-01 02:04:46.290304	f	Rosalbarax	Rosalbarax
502	k.ri.czi.k.o.vay.a.s.v.et.l.ana@gmail.com	$2a$12$TxIZwul1vv1mKsDmE1Xcze9Ye4nwe0klcr8/LvktGGLq2WReyfHRC	\N	\N	\N	2023-11-04 15:03:00.653398	2023-11-04 15:03:00.653398	f	Svetlananui	Svetlananui
524	v.ikto.ri.y.a.skuchko.1.99.9@gmail.com	$2a$12$CDK3gZcrgrOWQxLBxZ.nbObV8YaJ33AHafR.RlNpMGppRUgtC7DsC	\N	\N	\N	2023-11-08 00:32:47.481354	2023-11-08 00:32:47.481354	f	Vikizou	Vikizou
544	r.o.bertbr.o.wn.m.oo.nma.n.s@gmail.com	$2a$12$5n9.Dg5Xhjl0PmJgQ9Yk3eF4Jzt8r7GAaSbSHhpMF.i.9jHiXLsk6	\N	\N	\N	2023-11-12 10:01:52.15084	2023-11-12 10:01:52.15084	f	Roblmm	Roblmm
348	j.ea.np.au.li.o.no.d.ewitt@gmail.com	$2a$12$9phOB82UMexsOMnXwJXlK.axj4Y8LW1oh3n0nixW2Nu2WulteFvUi	\N	\N	\N	2023-04-19 16:26:30.274744	2023-04-19 16:26:32.333868	f	Charlesanync	Charlesanync
367	jgmaria304@yandex.ru	$2a$12$yRDiVtPacjAdizorIHgSpuNLZx0w7TlTNCf8hm2s6VtcxY4E4uGYi	\N	\N	\N	2023-05-18 01:07:19.064695	2023-05-18 01:07:20.719259	f	Irinased	Irinased
386	john.mongolfier@gmail.com	$2a$12$/jePpQCO2R7XclKDvYEQ0eBT/HdLsXN2SLhwDMLRc6D6OSwdSwvLa	\N	\N	\N	2023-07-23 19:33:30.630794	2023-07-23 19:33:32.322058	f	Cheap-Soft-bella	Cheap-Soft-bella
405	d.dec.a.t.48.3@gmail.com	$2a$12$SV1FN35KEfV3KdQWeGYpzOo.LDeeBe9NsYS57Y9bKTnmonfbF.Uxa	\N	\N	\N	2023-08-25 03:19:59.842212	2023-08-25 03:19:59.842212	f	Robbietom	Robbietom
424	masha7@mailside.site	$2a$12$WiNVUvY2Ss9XXaSZkUukX.Q5YwS0ln1Fcv.ec48BmrV3.MVdqy9aK	\N	\N	\N	2023-09-21 15:05:10.421327	2023-09-21 15:05:10.421327	f	MashaDyeva	MashaDyeva
443	sviloguzov83@mail.ru	$2a$12$Z9hUEQFQgpZNSXdx1SMqTOu.JrkcVJ22KvmxF0ULURjS.VQcrq.92	\N	\N	\N	2023-10-11 09:13:19.090412	2023-10-11 09:13:19.090412	f	Melvinneurf	Melvinneurf
464	sh.ku.t.ko.v.i.g.o.recze.k.be.s.t@gmail.com	$2a$12$ja4lMpijUoIHw68DWBAcye7Bpj0B88K4lqOnN.M71syZm.SSPbubi	\N	\N	\N	2023-10-30 01:21:58.649344	2023-10-30 01:21:58.649344	f	Igoryif	Igoryif
483	s.h.ku.t.k.ovi.go.r.e.c.z.ekb.e.s.t@gmail.com	$2a$12$CYAitZW4jY54ySn9NPg1xOa6zSw5sQ6WL62T6vehzAW7SnUP.zkeK	\N	\N	\N	2023-11-01 02:12:26.575195	2023-11-01 02:12:26.575195	f	Igorenh	Igorenh
503	i.r.ina.2020kobz.a.r2.0.20@gmail.com	$2a$12$ayno/wyu1ryCULqq3.1NuegahzlGgOn1QUc4qRU3e02Mgkrht4QJ6	\N	\N	\N	2023-11-04 18:12:46.176959	2023-11-04 18:12:46.176959	f	Irinrbh	Irinrbh
525	se.rz.k.ru.togo.lo.v.the.m.an@gmail.com	$2a$12$TvJ1CgIs95F9LxHgjdjxleMgDHm/nsrERSCh2D1nmfBgErhnIW.Ei	\N	\N	\N	2023-11-08 00:45:59.134495	2023-11-08 00:45:59.134495	f	Serzvkp	Serzvkp
545	rob.ertbr.ownm.o.o.n.mans@gmail.com	$2a$12$4VJ8CjlblcbkzpWsIVEKveawFdY1khZ25fqNekp4F8XZxhW97F0hu	\N	\N	\N	2023-11-13 01:21:40.819407	2023-11-13 01:21:40.819407	f	Robxac	Robxac
349	kturyiet@gmail.com	$2a$12$E92x80tGlacmif7d8MmKMeinn2kENXXZabhi2FvyZcRqW/T4dEpSe	\N	\N	\N	2023-04-19 18:55:43.69962	2023-04-19 18:55:43.69962	f	RolandoGox	RolandoGox
368	fc2blogjp@fc2blogjp.biz	$2a$12$HXhWzXtwfBbkVEI12TZ9r.ITK9xo8zn0vQPOWCzHLnL7JzKaf8O7K	\N	\N	\N	2023-05-20 21:08:45.801383	2023-05-20 21:08:48.985999	f	Cliftons#gendnick[Hueastjyw23]	Cliftons#gendnick[Hueastjyw23]
387	mr.bumbaster81@gmail.com	$2a$12$Qt40GGvERGTrr7o9toq/PeevVSOY4rsYIIZtqE7zxJIrfB0NtYN/u	\N	\N	\N	2023-07-27 14:53:23.784951	2023-07-27 14:53:24.52189	f	Emerykem	Emerykem
406	yohggmail888@gmail.com	$2a$12$KnXeb9GDggli7BWzdqDVzuEisqvLjfSJdFsg.YiqDpHOjw/BGdNTq	\N	\N	\N	2023-08-25 10:04:58.003993	2023-08-25 10:04:58.003993	f	Raymonderymn	Raymonderymn
425	brianuk@mailbox.org	$2a$12$4rmO6nl1s//0C24Bfb82YOAKiMHawIxtV9U/9Zb.D2A0/k3w0frDe	\N	\N	\N	2023-09-22 00:15:59.295733	2023-09-22 00:15:59.295733	f	ytmp3music	ytmp3music
444	p.ing.v.i.iin.a.k.a.@gmail.com	$2a$12$w4YrVKXgJxlCG9ncb1DQZOkWZfuVCaXrGQV5H.ABesQwi2Gl10YSS	\N	\N	\N	2023-10-16 19:32:23.830214	2023-10-16 19:32:23.830214	f	Wendyget	Wendyget
465	i.r.c.z.en.k.o.s.vetl.a.nas203.0@gmail.com	$2a$12$T4ajoyHLOAXWGPsOLnRXh.VFKRLIjCwH0Cb/pgxDmlOpAU2aVubFi	\N	\N	\N	2023-10-30 01:34:05.870474	2023-10-30 01:34:05.870474	f	Svetlqjx	Svetlqjx
484	ir.c.z.e.nko.s.v.et.l.anas.2.03.0@gmail.com	$2a$12$hR6SIRpeFr2CA3PLF9Wi3uNu6jI8Xr/LqvSv6wIKD22U25dKUDu7C	\N	\N	\N	2023-11-01 09:18:23.221453	2023-11-01 09:18:23.221453	f	Svetlcpy	Svetlcpy
504	v.e.r.o.n.i.ka.sl.ob.o.dan.o.v.i.c.h@gmail.com	$2a$12$0dHpWeIRcIs3aMdwdW/ayuqIRgORM/VRsBVMPGxqDu0O51Xp1bxD.	\N	\N	\N	2023-11-04 19:12:49.688528	2023-11-04 19:12:49.688528	f	Veronaceg	Veronaceg
526	anj.e.l.ika.l.o.pi.s.t.uc.kl.o.ve@gmail.com	$2a$12$ek9FadmuP/KIcxq6hMM3OefaBJHjDulKUUpKSJflsPbTlneYnfZ8q	\N	\N	\N	2023-11-08 10:07:48.879896	2023-11-08 10:07:48.879896	f	Juliepd	Juliepd
546	a.l.ekse.j.st.ukor.uk.ov.20.48@gmail.com	$2a$12$wYhOAqRKwX.6ZoDAqvIFDOkPwDEgFBNUH0jVky8UTPRbDlt5lPE7C	\N	\N	\N	2023-11-13 01:44:01.404425	2023-11-13 01:44:01.404425	f	Eldarfhz	Eldarfhz
350	truman19861@rambler.ru	$2a$12$6dpZq7UuPp3jIdYrXLS27.2Jk.K6bb1bGZopU4nPLbEMxj3xSgUGq	\N	\N	\N	2023-04-20 19:09:20.478158	2023-04-20 19:09:20.478158	f	Arthurfig	Arthurfig
369	valentinellington@wwjmp.com	$2a$12$OKfdhvNDX2tvz2xi7WYa3u15ShZWpIMXaesx8YFOaT8XtdJpxEgHK	\N	\N	\N	2023-05-21 17:58:53.40829	2023-05-21 17:58:53.40829	f	AzatJen	AzatJen
388	zpvideo@wmailer.top	$2a$12$kZF69joni6pGoONc.0YDJuS053G7LrobSluf.U6WB.LOOGOehFA3e	\N	\N	\N	2023-07-29 16:02:01.106465	2023-07-29 16:02:01.106465	f	badcosmo	badcosmo
407	jameswagner@reg.pw	$2a$12$2HNqYmVCFafcsktiCRzMmOxYKz/WObgYBxaXN/HLeVxlmrU6yW0Yu	\N	\N	\N	2023-08-25 13:11:50.080078	2023-08-25 13:11:50.080078	f	liboeJeora	liboeJeora
426	sonia34@pop33.site	$2a$12$Y7rGRs6JzoYFwC9XyBbcdut1sLJQ/ZjFq7Ghk1tOyqHxCDZQ9VrYC	\N	\N	\N	2023-09-22 12:27:48.918806	2023-09-22 12:27:48.918806	f	SoniaDyeva	SoniaDyeva
445	irina@pop33.site	$2a$12$2Dj2fdFn61GGTe9SLmQfieQKhVLEjFvJPBuYlAYtnp0OXs9qY9KYu	\N	\N	\N	2023-10-17 22:54:39.725599	2023-10-17 22:54:39.725599	f	IraFetle	IraFetle
466	st.r.iuok.o.f.f.s.t.iff.a.lm.o.s.t@gmail.com	$2a$12$MsTtAotlXCZyuAyDe.sJx.x0oHzWlJn6f0BFggApz3hVp9CL0016u	\N	\N	\N	2023-10-30 08:36:05.686052	2023-10-30 08:36:05.686052	f	Sergwaa	Sergwaa
485	s.t.ri.uokof.fs.t.if.fa.lm.o.st@gmail.com	$2a$12$lcwi0susMApdQwwzcV6bseR8uU7lGF5QZGWaGFX9pla7HW5/csh.a	\N	\N	\N	2023-11-01 11:32:13.777252	2023-11-01 11:32:13.777252	f	Sergkon	Sergkon
505	l.eoni.d.shk.oro.be.n.k.ov.vy.a@gmail.com	$2a$12$Q0Q8YOwRdcErSHcEs20r.edSFQHHZBJaPLjNLRH4eagQtUJqTXcS2	\N	\N	\N	2023-11-05 05:35:03.715405	2023-11-05 05:35:03.715405	f	Leoneqj	Leoneqj
506	v.i.l.l.a.num.o.r.u.chk.omo.st@gmail.com	$2a$12$aAUoEjvHmfL8dsmvYWIKTuKhjL7cQtIQxjnPJ78oyV8tEZaoGMS.K	\N	\N	\N	2023-11-05 05:35:38.635988	2023-11-05 05:35:38.635988	f	Vilianawjq	Vilianawjq
507	s.em.e.czenk.od.a.vi.db.i.gm.a.n@gmail.com	$2a$12$R/yEGltBXzmGPOQKnR7lYuUZq4soTTsILK5Va8reclh13k.55a.VS	\N	\N	\N	2023-11-05 05:35:57.132186	2023-11-05 05:35:57.132186	f	Davidxgr	Davidxgr
527	v.i.k.tor.iyask.uc.hk.o.1.99.9@gmail.com	$2a$12$o7Ho8nlBMLaWQPvTBhvKfOmepjHKuVPITlDLfq9NAPjoDldO0tqaG	\N	\N	\N	2023-11-08 10:52:08.450734	2023-11-08 10:52:08.450734	f	Vikibnv	Vikibnv
547	e.v.a.s.togod.uk.l.o.v.e.lif.e@gmail.com	$2a$12$MKv0pPppjHw5VkLubbY0m.ljJ3gGEClVLyc6Hw28idvb9U44DQY0C	\N	\N	\N	2023-11-13 04:17:14.386369	2023-11-13 04:17:14.386369	f	Evaypx	Evaypx
351	sdfsdfsfsdfd@gmail.com	$2a$12$Jly2DcZcoClVygXfyIIIre/3XMkxE1CnVczmVT5T9MKD50.Gr9d9S	\N	\N	\N	2023-04-20 21:30:15.867268	2023-04-20 21:30:15.867268	f	Raymonddix	Raymonddix
370	voronctova@outlook.com	$2a$12$lAoC33i5ksmuOSchiCEUT.pwucOJo/WOEnlx0lgLgUSP3wXNVuX4K	\N	\N	\N	2023-05-22 03:56:05.949733	2023-05-22 03:56:05.949733	f	Hermanmet	Hermanmet
389	diklamo@yandex.com	$2a$12$nTQnAR4BkSfJHu9ygJULye6M9N0CTj3ZaoYWawxxZgnZwOIMMkAjS	\N	\N	\N	2023-07-30 11:40:09.678138	2023-07-30 11:40:11.613828	f	Henrytiews	Henrytiews
408	inf@crazymailing.com	$2a$12$zFC9/bN0mwIfZK/mOm4Iv.cAHrXrXeE0yXk/.HGIBu.f8LHk6mete	\N	\N	\N	2023-08-29 13:16:59.032499	2023-08-29 13:16:59.032499	f	JohnnyCleat	JohnnyCleat
427	raposnori1961@mail.ru	$2a$12$eIio1F/GBwn.cdQuj29FyOEqyQbAkbC0peaH17pYEzH9C0jMf9Xia	\N	\N	\N	2023-09-22 22:42:22.888448	2023-09-22 22:42:22.888448	f	KartinaKig	KartinaKig
446	evgen@posti8.site	$2a$12$5LO1jedPOhE3RNmY0m4EMeY7lbXDAwigDwJopF8pP3tY4IJVxMSEm	\N	\N	\N	2023-10-18 11:03:57.025766	2023-10-18 11:03:57.025766	f	Evgencib	Evgencib
467	s.h.ku.t.ko.vig.ore.c.z.e.k.be.st@gmail.com	$2a$12$0SWnBK9u4quGiLW8J45RUuvaU419T0WZjq6UoeChrPwko0MN57OgC	\N	\N	\N	2023-10-30 08:48:13.480049	2023-10-30 08:48:13.480049	f	Igorbfw	Igorbfw
486	shkutkovi.g.or.ecze.kb.est@gmail.com	$2a$12$F6YozRCJ0RCB2JDD4CCPB.fQboeSYKW6lkiaOXIMt3CzLlk7eQWIS	\N	\N	\N	2023-11-01 11:40:57.442132	2023-11-01 11:40:57.442132	f	Igorytr	Igorytr
508	le.o.nids.hk.o.r.ob.e.nko.vv.ya@gmail.com	$2a$12$mxEgMsxN6UZ7cTG9Teij.ux0.O40LNzSOeF4mRX1s6ZFm3iy7u26m	\N	\N	\N	2023-11-06 01:04:24.813257	2023-11-06 01:04:24.813257	f	Leonvry	Leonvry
528	s.e.r.zk.rut.ogol.o.vt.he.man@gmail.com	$2a$12$T0m5gLAv1Dd527EdJDE4e.122tN6fIeWbU4vIXZTu/7tVvu1XgqAi	\N	\N	\N	2023-11-08 11:38:26.736513	2023-11-08 11:38:26.736513	f	Serzswz	Serzswz
548	r.o.be.r.tbrow.nm.o.onm.an.s@gmail.com	$2a$12$uEBzUeXOR5Be6Dr8LxfvSeZCVbekFwEgdoliH3phXPJjg4bp1HjXy	\N	\N	\N	2023-11-13 17:57:56.412413	2023-11-13 17:57:56.412413	f	Robpjl	Robpjl
352	ry.an.sol.d.er.3.@gmail.com	$2a$12$nAp2l5K4QbD/DPvmP2TCduTF57Wm0IPtu0o7Afx0sEoO3W/y2BjTm	\N	\N	\N	2023-04-23 18:52:33.027236	2023-04-23 18:52:35.130402	f	JamesGlirl	JamesGlirl
371	o.legbryncalov@gmail.com	$2a$12$efIBMcuhBYNBoA2OOJSBQ.6Z19xCipoQ0dILjmnJrm6ntz149L70y	\N	\N	\N	2023-05-25 13:11:46.81891	2023-05-25 13:11:46.81891	f	Peterofig	Peterofig
390	d.de.c.at4.83.@gmail.com	$2a$12$ggBtFethNN6h.NjTqVkD6.VELeDJZeuYI04ftQHhswcJwwp.v.NaC	\N	\N	\N	2023-07-30 12:38:43.890037	2023-07-30 12:38:43.890037	f	Robbietom	Robbietom
409	jameswatkins@reg.pw	$2a$12$6am9YGrIu6H5EvgNpXYOv./rI0YBtRxzYJbZA.3Fhn2vICQch05rW	\N	\N	\N	2023-08-30 01:16:00.773485	2023-08-30 01:16:00.773485	f	liboeJeora	liboeJeora
428	senya@posti8.site	$2a$12$4qdIh6X8B3KLTTsX6MkuEuSvViS5.e3VECWwZtEBnbcOVN1urq5Be	\N	\N	\N	2023-09-25 11:10:55.341305	2023-09-25 11:10:55.341305	f	Senyamib	Senyamib
447	support@ivahost.com	$2a$12$9fhSCWb4c.gtIVZQMVPq2.LEvJnrPaefR6DvzfTudtGOt3imlLR0O	\N	\N	\N	2023-10-19 16:03:52.302029	2023-10-19 16:03:52.302029	f	online casinos that pay real money	online casinos that pay real money
468	ir.czen.k.o.s.vetla.n.as203.0@gmail.com	$2a$12$uX.nXxXe1Kf0h1S0QyBuwueGDMlCdF92pr2UVWtZc1FUAPAR.HQjm	\N	\N	\N	2023-10-30 09:00:58.230011	2023-10-30 09:00:58.230011	f	Svetlnzb	Svetlnzb
487	kr.iczi.ko.v.a.y.as.v.e.tl.ana@gmail.com	$2a$12$6V266r5TYMJSZt2AtNEyDuoXJIGBypgrLxhP1esbnuyO8HGNTP//u	\N	\N	\N	2023-11-01 21:23:06.592786	2023-11-01 21:23:06.592786	f	Svetlanajbf	Svetlanajbf
509	s.em.ec.ze.n.k.o.d.avid.b.ig.m.a.n@gmail.com	$2a$12$qgybwbYggSfPebTQ3dC7IeVa3b.FUSEOHJNLHG2p2k05Zp6/y6Q6q	\N	\N	\N	2023-11-06 01:37:42.835881	2023-11-06 01:37:42.835881	f	Davidxzk	Davidxzk
529	v.i.kt.o.riy.as.k.uc.h.ko.1.999@gmail.com	$2a$12$APGctN5ZzOTSdmVkyBjlc.OAVIac3SoGS7uOBBVzsnSvWkH0Vq.7C	\N	\N	\N	2023-11-08 21:47:53.856147	2023-11-08 21:47:53.856147	f	Vikivyt	Vikivyt
549	e.va.s.to.go.d.uk.lo.ve.lif.e@gmail.com	$2a$12$A3qx5tARj91MdMRtur6AjOUo5O4lwU5f2efFv/KaHI6yHKK.LDQbe	\N	\N	\N	2023-11-14 02:43:59.783111	2023-11-14 02:43:59.783111	f	Evacwn	Evacwn
353	kuzinaalexandrina@yandex.ru	$2a$12$7e2mCOE0dzVkqnF6q5M25u1R8zGal6ojvaef2NaiZdKB1leslPHHy	\N	\N	\N	2023-04-24 08:47:59.043521	2023-04-24 08:47:59.043521	f	IrinaFluefeliCed	IrinaFluefeliCed
372	oleg.bryncalov@gmail.com	$2a$12$hVXG/ec/mqFojb11mfft9Oh5JwIgeRvw28O0I8Sx2SqqqTHQfSZoi	\N	\N	\N	2023-05-27 11:24:55.081275	2023-05-27 11:24:55.081275	f	Alexanfig	Alexanfig
391	at.remezow@gmail.com	$2a$12$CVjDB1XEJyJ8ltrnXUyWzeJsGDVjKXjL4gxr2LDHt1V14S5yUo682	\N	\N	\N	2023-07-31 14:21:47.907821	2023-07-31 14:21:49.780275	f	Jonadono	Jonadono
410	pgogich@list.ru	$2a$12$sW2hUsRmL6WsIP15cwjSX.1QWhU2d0OMsnBrWeHHbkmp3Pe.LDgqC	\N	\N	\N	2023-09-01 04:49:32.644497	2023-09-01 04:49:32.644497	f	KevinFaf	KevinFaf
429	s.d.cs.5.0902@gmail.com	$2a$12$ZzZIXXqlx1/J14Y9Qm6YgeR/tW1KiRR9S2k43siGfXGyEivyM3CIq	\N	\N	\N	2023-09-26 13:24:25.858723	2023-09-26 13:24:25.858723	f	Jorgelib	Jorgelib
448	paldf3522@gmail.com	$2a$12$TE9aUBYHKWdZhCQNfA6RoOKpwViI.ISffSiXEabNnFnU/N9EoIuS.	\N	\N	\N	2023-10-21 19:48:14.284949	2023-10-21 19:48:14.284949	f	casino online	casino online
469	xrumerfox@gmail.com	$2a$12$SWKVTAlCm2L1d8JjCXeKg.dQtNGRqLndFXiRen8PlXlQY3VOSaTKy	\N	\N	\N	2023-10-30 12:28:15.620751	2023-10-30 12:28:15.620751	f	RaymondRhive	RaymondRhive
488	i.ri.na.2.02.0.k.obz.ar.20.20@gmail.com	$2a$12$tbjc6lZdayW4RjLRjBt6w.puLcoRV0oT36xs5HJihKFrC/T5jeDJ2	\N	\N	\N	2023-11-01 23:24:12.01385	2023-11-01 23:24:12.01385	f	Irinjnh	Irinjnh
510	vi.l.l.an.um.o.ru.c.h.ko.m.o.s.t@gmail.com	$2a$12$gzLAaWC6HjFWDXLwAS2beuves1iVjtk.VbXm1wmPb2xL5tYUMj5MW	\N	\N	\N	2023-11-06 02:04:12.190834	2023-11-06 02:04:12.190834	f	Vilianauki	Vilianauki
530	anj.e.l.ikalop.ist.u.cklo.ve@gmail.com	$2a$12$/OMBKau8tATZCvpNNF5YRefbmg9bpKDmwjN6TQXSrWBEXsJCAqN86	\N	\N	\N	2023-11-09 07:05:06.18472	2023-11-09 07:05:06.18472	f	Juliviy	Juliviy
550	livanenovbogdan@gmail.com	$2a$12$1tBtYZEv/c.Ccade.ZfbGuMGl5A16mwIEAJnBlyTStdixSpquTYWa	\N	\N	\N	2023-11-14 14:25:46.455128	2023-11-14 14:25:46.455128	f	Gessikafig	Gessikafig
354	leonardunnb@bk.ru	$2a$12$4oONgg59Cc7r10Xb3xPGpeqnh2CV9Ndbk/GvBflK40kasW8N40Hoy	\N	\N	\N	2023-04-26 22:02:58.63848	2023-04-26 22:02:58.63848	f	Travistix	Travistix
373	ol.egbryncalov@gmail.com	$2a$12$CqzlPC0QhpRNFeU9MLDf9ei2olhc1yNqCGNLNeLodNEL1dmNAMBX2	\N	\N	\N	2023-05-28 18:09:05.484004	2023-05-28 18:09:05.484004	f	Ivaninfig	Ivaninfig
392	dkkd.k.kd.kk.17.@gmail.com	$2a$12$J7.euceIJ/q8m9153pDJuO/H.b6OftWhGWzXKhJWCD3otG1QoM/Zu	\N	\N	\N	2023-08-01 00:09:34.374871	2023-08-01 00:09:34.374871	f	VernonPioke	VernonPioke
411	orhideya484@gmail.com	$2a$12$Z1DoBFklzIO3gWqNPZR.FOO1i36KUQjzpenI9LVVm8gWhV9wy5TAi	\N	\N	\N	2023-09-01 14:11:41.26713	2023-09-01 14:11:41.26713	f	MatthewBiozy	MatthewBiozy
430	at.r.emezow@gmail.com	$2a$12$/1A38CV5W5qDZpbINWeySuZk1HUs4wXejx/1S8ZESJm1qQWl4rhPq	\N	\N	\N	2023-09-29 16:38:03.941184	2023-09-29 16:38:03.941184	f	TimQuize	TimQuize
449	bric@mc2earth.com	$2a$12$nCk3wwN4WV9AnUZzI0S2x.lrj9mtI5CZAVFHtnI8KsA64ezom2r1K	\N	\N	\N	2023-10-22 01:58:09.981986	2023-10-22 01:58:09.981986	f	Matthewnog	Matthewnog
470	d.d.e.ca.t.4.8.3.@gmail.com	$2a$12$5kLT0FZaPTF.5hfyiPO1kOVe8CCEqxk3YyzXG25Wqn68Lgi420ZfK	\N	\N	\N	2023-10-30 13:45:32.558296	2023-10-30 13:45:32.558296	f	KevinDopay	KevinDopay
489	ver.on.ikaslobod.a.no.v.ic.h@gmail.com	$2a$12$yC.71kOdM7FNUkp7tWVtuuqyiFwdUV7e31JrAVJWOXN0siHGZdCXO	\N	\N	\N	2023-11-02 01:55:42.174385	2023-11-02 01:55:42.174385	f	Veronaunx	Veronaunx
511	suhanovaegina19863357@mail.ru	$2a$12$8p1MCT./xOqTNRKcuSpZfuMkP0MXhdYQDAOKJXifFmmevZSmkeoYu	\N	\N	\N	2023-11-06 09:38:34.8832	2023-11-06 09:38:34.8832	f	ShaneWaype	ShaneWaype
531	s.e.rzk.r.u.t.og.ol.ov.thema.n@gmail.com	$2a$12$XYDMtAQkkJ2AUKEvYqTTQecWBvoQueLUkz52xdYMZT/zlTMcnwEom	\N	\N	\N	2023-11-09 07:35:02.480613	2023-11-09 07:35:02.480613	f	Serzerl	Serzerl
551	e.v.as.to.g.o.duk.lovel.if.e@gmail.com	$2a$12$Cj9b/kMt.TzqPq/3AouG2OSYi5GceJKeMkLVYGmRTvubiY18TWriG	\N	\N	\N	2023-11-14 14:43:55.202755	2023-11-14 14:43:55.202755	f	Evarzl	Evarzl
355	114gm@zabs.cc	$2a$12$InuhvYD2NQPPPaBe4csdgehdt9vocYWCjQNXg4bfDRD.b6D5iAV.O	\N	\N	\N	2023-04-27 18:19:47.053633	2023-04-27 18:19:51.938416	f	pgzaa	pgzaa
374	gaymen@free-private-mail.com	$2a$12$1nh/ecLtnFrWPoFNcdEP7uMxP3kaLjgrhZl3CeQHXoxaUieo8Qq7q	\N	\N	\N	2023-05-31 09:46:48.066586	2023-05-31 09:46:48.066586	f	JerryGrEfe	JerryGrEfe
393	zf@wmailer.top	$2a$12$s6yWu3ZuOICqZFC9Awiob.Yeo.gqhCg1YdUWqrF4UVMLyzOl30yCq	\N	\N	\N	2023-08-01 01:13:02.917028	2023-08-01 01:13:02.917028	f	enigmapoints	enigmapoints
412	inet4747@outlook.com	$2a$12$6b2wNwHvk./.ML0Wu5VQZeb9/aHiXXTeYKvkHtfOWMLny/voZ/aAG	\N	\N	\N	2023-09-02 05:23:36.179309	2023-09-02 05:23:36.179309	f	Joshuafen	Joshuafen
431	you1rmai5l@gmail.com	$2a$12$1ZlISiATbwXEXAB9S6WjPe9MQ73LJXYUUbMpY3p8nwBA71AYFN1W2	\N	\N	\N	2023-09-29 17:49:04.513282	2023-09-29 17:49:04.513282	f	CharlesDal	CharlesDal
450	h.aw.k.6.4.1.1.3.@gmail.com	$2a$12$YazKUBZ10mxs9fvquECdU.RctXUWxCi1LepgxoQRJKDvTClzeaRFu	\N	\N	\N	2023-10-22 20:16:03.186702	2023-10-22 20:16:03.186702	f	Warrenjuign	Warrenjuign
471	sales@selectel.ru	$2a$12$Mj98XlIDUd7CGTyYw942OO5jH514pcoKzFbcHQnfBJQem8ZASyVNa	\N	\N	\N	2023-10-30 19:25:39.65514	2023-10-30 19:25:39.65514	f	casinos	casinos
490	kr.i.c.zi.k.o.va.y.as.vetlana@gmail.com	$2a$12$ZRPDflMdWRGXF.EHpE0CY.4Zx3HtMqVMMt4uooMj/3KQNCZKuW4Ui	\N	\N	\N	2023-11-02 17:09:13.340579	2023-11-02 17:09:13.340579	f	Svetlanasoq	Svetlanasoq
512	l.e.o.nidshk.or.o.b.en.k.ov.v.ya@gmail.com	$2a$12$ahKi9t.QZf.5tGTpJmeRVOwz3vXARGLKQ6PczT26qSWVYyCvD0M8C	\N	\N	\N	2023-11-06 21:28:51.454184	2023-11-06 21:28:51.454184	f	Leonbne	Leonbne
513	s.eme.c.z.e.n.ko.d.avid.big.ma.n@gmail.com	$2a$12$ypNDsO8NIRkp50aZj0ag9.h/JZreoqsqSUyz5I41VGlw3dVqx77n2	\N	\N	\N	2023-11-06 21:32:13.595362	2023-11-06 21:32:13.595362	f	Davidpgo	Davidpgo
532	v.ik.to.ri.yas.k.u.chk.o.1999@gmail.com	$2a$12$YUlZFxmoHUaXmvXpCUDWBO4l8wWH59rsNxVjmzfd7dlxmJHOPA9hC	\N	\N	\N	2023-11-09 17:21:39.251809	2023-11-09 17:21:39.251809	f	Vikitzz	Vikitzz
552	a.le.ksejs.tuko.rukov2.048@gmail.com	$2a$12$YtjREfUoz0WpqVu3z1wayOLbxENK9XGwFSZmVjqCSPwQitnfynqgK	\N	\N	\N	2023-11-14 16:53:49.501498	2023-11-14 16:53:49.501498	f	Eldarayi	Eldarayi
356	j.e.a.npaul.ion.o.d.e.w.itt.@gmail.com	$2a$12$VNbYu4qUXLcHxmupe8q71uK6p2BuNr8pF4QG41mTKtvdT8T2pUXLe	\N	\N	\N	2023-04-29 03:53:14.290902	2023-04-29 03:53:16.69975	f	Charlesanync	Charlesanync
375	sirfak@yandex.com	$2a$12$KKPjMpqkeaW.HxmsH.AaveFdqoVKsgPAC0I2Z674s4LjQS3dYM.SS	\N	\N	\N	2023-06-02 05:44:35.867322	2023-06-02 05:44:37.863834	f	SiterKnofs	SiterKnofs
394	d.d8843.8.7.2.@gmail.com	$2a$12$vtqzNFRZOxM.nDWwTeWS2OxfktCO4uO9A8uEkCRtApRl07Hd4hrBO	\N	\N	\N	2023-08-01 06:33:58.358717	2023-08-01 06:33:58.358717	f	Davidplody	Davidplody
413	kat-service56ru@yandex.by	$2a$12$XhHhJ6vDMJ0uFxlCsPp3i.jpC9FXVQcOrkH2gZf5tIhOD5S.o0utq	\N	\N	\N	2023-09-06 01:39:43.889543	2023-09-06 01:39:43.889543	f	Davidgor	Davidgor
432	dd.88.4.3.872.@gmail.com	$2a$12$hBOzDMTVYDIMGGASbjtzueRYqHOaFVDNo/88Ub3R5hE1xVoja1o8q	\N	\N	\N	2023-09-30 09:43:13.726609	2023-09-30 09:43:13.726609	f	Davidplody	Davidplody
451	s.o.ut.hwes.t.tubs88@gmail.com	$2a$12$fRz36IQFyDdC1vdvRCeNgelC2nuB9iMopOSakiQMUwKdIcZo68gHG	\N	\N	\N	2023-10-23 07:55:11.481554	2023-10-23 07:55:11.481554	f	DonaldFrunk	DonaldFrunk
472	s.tr.i.u.ok.off.stiffa.l.m.ost@gmail.com	$2a$12$8llWDdaAbmvTQa14.aIEAumWap.fcQxAZ90MM5ZzfTrgpCVia1fI.	\N	\N	\N	2023-10-31 01:20:18.705611	2023-10-31 01:20:18.705611	f	Sergpjw	Sergpjw
491	i.ri.n.a.202.0k.ob.zar2.020@gmail.com	$2a$12$/P8YrUUpGydtOpGaXePIIeP949IbQZ2Of7DqRLaltY8jYy1yi.UT.	\N	\N	\N	2023-11-02 23:28:07.277083	2023-11-02 23:28:07.277083	f	Irinpuo	Irinpuo
514	vi.lla.n.u.moru.c.hko.most@gmail.com	$2a$12$9iy61VJZNHopYJhj4qsSE.yiRJDKxNYLAnvlh7H2DsFcppHegPVVa	\N	\N	\N	2023-11-06 21:39:42.547124	2023-11-06 21:39:42.547124	f	Vilianacsc	Vilianacsc
533	an.j.el.ika.l.op.i.st.u.ck.l.ov.e@gmail.com	$2a$12$PY4aqP0yLSA3sePoCXwfwef.3We6pKrCKlp7SMcteWoBzEJGWTZJ.	\N	\N	\N	2023-11-10 06:35:49.999157	2023-11-10 06:35:49.999157	f	Juliibf	Juliibf
553	ro.be.rt.b.ro.w.nm.o.o.nm.ans@gmail.com	$2a$12$C6Obbj36Wi/ManSaVy8Y.eM9l.uF0qpBHSlmNduOY5oTclg9U4/Ea	\N	\N	\N	2023-11-15 02:10:29.507142	2023-11-15 02:10:29.507142	f	Robvyn	Robvyn
357	pervfmfv@outlook.com	$2a$12$8MYNjb9UvnpiL8En9Mh9f.x/YzCr/FLlHUTL7HuIuRxDBLFMHtrmi	\N	\N	\N	2023-04-30 15:55:43.284517	2023-04-30 15:55:43.284517	f	Brandoncep	Brandoncep
376	olegbryncalov@gmail.com	$2a$12$QQRaKYDERx7kQA6F6dLK..chCvcugIhAdA6KduZiitkkiOEUB1Cu6	\N	\N	\N	2023-06-02 08:50:25.26151	2023-06-02 08:50:25.26151	f	Alexeyfig	Alexeyfig
395	nstep.a.n.n.o.w@gmail.com	$2a$12$WPowC/IEvZlmVnGC3Opn3OU3E03WfM7UM63hGr4Cn4o8cwAx0HDQ.	\N	\N	\N	2023-08-03 03:23:58.335207	2023-08-03 03:24:00.922678	f	StevenFut	StevenFut
414	anna@alexhost.site	$2a$12$dtEafFYTIiE6gxDGAotVtOjUi7SJjfo5XWsPkdJG2ZtIZOkbHjg/e	\N	\N	\N	2023-09-09 05:04:34.826547	2023-09-09 05:04:34.826547	f	Annagoape	Annagoape
433	ivan@pop34.site	$2a$12$tFsFNK/b99GXzPj76JBpNuGq4m185wIIznML3T5yIHFLjwJFeQZrq	\N	\N	\N	2023-10-01 11:59:15.947298	2023-10-01 11:59:15.947298	f	Ivandycle	Ivandycle
452	janebisping@gmail.com	$2a$12$.VKFpMxrqIW4hzFyIvpd5eX1006QrSmSPwwqZdHOZc6P9qHHBZMry	\N	\N	\N	2023-10-23 16:33:58.453157	2023-10-23 16:33:58.453157	f	WilliamJut	WilliamJut
473	irc.z.en.k.o.s.v.etlanas.20.30@gmail.com	$2a$12$sl/TFM0jcTBqVsiyRAEBLeWOEk06HzXBPaV7iXMIyw.sM33as3IXW	\N	\N	\N	2023-10-31 01:38:32.323339	2023-10-31 01:38:32.323339	f	Svetlgpo	Svetlgpo
492	ve.ro.n.ik.asl.ob.o.d.ano.vic.h@gmail.com	$2a$12$IKTKJPNHmzC6adZEkHv.P.B2GoqLfSW3TMf9icOBsiNG/eb/.PHVm	\N	\N	\N	2023-11-02 23:59:50.991996	2023-11-02 23:59:50.991996	f	Veronarsu	Veronarsu
515	sem.e.cze.nko.davi.db.i.gm.a.n@gmail.com	$2a$12$qHeE14ycwAElQfkZkH5yPejx8YLVemdTCJoHAypByAvFt9bRxsUkC	\N	\N	\N	2023-11-07 05:10:04.578352	2023-11-07 05:10:04.578352	f	Davidour	Davidour
534	s.er.z.k.ru.t.og.o.l.ovt.he.ma.n@gmail.com	$2a$12$vMmcPHdAKl5cBz/2dT9L/u5zGwiLJ22PGbuqA00pw.QGgIoJ7yZK.	\N	\N	\N	2023-11-10 08:14:46.082927	2023-11-10 08:14:46.082927	f	Serzvoy	Serzvoy
554	a.l.e.ksejs.tuk.o.r.u.k.o.v.2.0.48@gmail.com	$2a$12$9zoyoOvMjpetpcQMCy7PbOAAe77kI8QgP6.m/NL3SriPEj9W47qt6	\N	\N	\N	2023-11-15 17:51:30.480501	2023-11-15 17:51:30.480501	f	Eldargyq	Eldargyq
358	annet@sosbook.online	$2a$12$shWA3Ui3VdF2Hpp4zGjssuYHQUozVtHim1G94iBmLvVm2qTW5Elj2	\N	\N	\N	2023-05-01 07:32:40.974617	2023-05-01 07:32:42.305884	f	CSdretnency	CSdretnency
377	zprof@free-private-mail.com	$2a$12$uMK0A6N./V0dE8K/pSVPyOrfEI0YNlBqpXsEXT5R8ZMsu5TscN0ti	\N	\N	\N	2023-06-11 05:07:44.010419	2023-06-11 05:07:44.010419	f	Charleswaw	Charleswaw
396	ebcom@wmailer.top	$2a$12$zg0ddi23GFoyix9f5di1TOj4f4zU.5pE.usz8VAuFy55xrZB7Mn0K	\N	\N	\N	2023-08-04 10:03:51.916982	2023-08-04 10:03:51.916982	f	herzrott	herzrott
415	dalipbulprt@gmail.com	$2a$12$8O40Fsz9BsiEKZz5B0rE6.MuqDtg4thfnFJhsIjFvJlDOfVFrCVeq	\N	\N	\N	2023-09-09 12:10:37.617682	2023-09-09 12:10:37.617682	f	MorrisSip	MorrisSip
434	bio-laba-dn@piffpaff.ru	$2a$12$.mdC3qmydJRCngCRQ.om6.7rYzV8PbiqORYjMOS149PbHY9aTlE9G	\N	\N	\N	2023-10-02 02:37:25.987205	2023-10-02 02:37:25.987205	f	ThomasToona	ThomasToona
453	s.h.kutk.o.vi.gor.e.c.ze.k.be.st@gmail.com	$2a$12$.k1RTBsr9DWeaXEJs34UqudotFjifwLoysElfwSbyjnlNFz3n1BRi	\N	\N	\N	2023-10-23 22:03:15.153373	2023-10-23 22:03:15.153373	f	Igordyl	Igordyl
474	s.hk.utk.o.vig.o.re.czek.best@gmail.com	$2a$12$b3kMmKuox1nkEqn1g4w4LOaFBKjN4khD/DEoPRA357/jNgJympHI.	\N	\N	\N	2023-10-31 01:52:39.632835	2023-10-31 01:52:39.632835	f	Igorldj	Igorldj
493	kr.icz.ik.o.v.a.ya.s.v.etl.a.n.a@gmail.com	$2a$12$fe2gbSGldBpHrFTmf.KpJOPr.esOxvaN9eQvMVE0xjHDBw4ttGhhG	\N	\N	\N	2023-11-03 04:35:11.528593	2023-11-03 04:35:11.528593	f	Svetlanahpe	Svetlanahpe
516	leo.n.ids.hk.o.r.obenk.o.vvy.a@gmail.com	$2a$12$oWrBjPTveZs.VP7MyxfsyO4eWKPUCiuhzvlzLUwjAqsBdJrahxo9S	\N	\N	\N	2023-11-07 05:10:05.429226	2023-11-07 05:10:05.429226	f	Leonrcf	Leonrcf
535	anjeli.ka.lo.pistu.ckl.o.ve@gmail.com	$2a$12$i9Xi7yrFaEHs0f44sO3Z2e5U4Jz31uj23raP/8mQIOcWD0plnrPRq	\N	\N	\N	2023-11-10 16:43:53.509435	2023-11-10 16:43:53.509435	f	Julifsk	Julifsk
555	s.kr.ebcovi.li.u.s.hk.a.20.86@gmail.com	$2a$12$nssGd3km72XoVkejDCGmFuPoXIo4LtDOocnA7TE68eXBHP9Z39tLy	\N	\N	\N	2023-11-15 23:52:47.444965	2023-11-15 23:52:47.444965	f	Ilushikxuo	Ilushikxuo
1	stephens@hey.com	$2a$12$Ia..XLCNkOGDQP.rJxOLO.vUEHXXg939qj8j1eOoPvmpXuZ2pE14a	\N	\N	2023-01-31 08:55:52.26552	2021-10-26 12:35:09.86584	2023-01-31 08:55:52.265961	t	Stephen	Schüz
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 12, true);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 88, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 88, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.answers_id_seq', 163, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.comments_id_seq', 51, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.contacts_id_seq', 46, true);


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 491, true);


--
-- Name: instructions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.instructions_id_seq', 347, true);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.likes_id_seq', 30, true);


--
-- Name: pg_search_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.pg_search_documents_id_seq', 1483, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.questions_id_seq', 13, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.recipes_id_seq', 94, true);


--
-- Name: submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.submissions_id_seq', 32, true);


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.surveys_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: goormey
--

SELECT pg_catalog.setval('public.users_id_seq', 561, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: instructions instructions_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.instructions
    ADD CONSTRAINT instructions_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: pg_search_documents pg_search_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.pg_search_documents
    ADD CONSTRAINT pg_search_documents_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_answers_on_question_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_answers_on_question_id ON public.answers USING btree (question_id);


--
-- Name: index_answers_on_submission_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_answers_on_submission_id ON public.answers USING btree (submission_id);


--
-- Name: index_comments_on_recipe_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_comments_on_recipe_id ON public.comments USING btree (recipe_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_ingredients_on_recipe_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_ingredients_on_recipe_id ON public.ingredients USING btree (recipe_id);


--
-- Name: index_instructions_on_recipe_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_instructions_on_recipe_id ON public.instructions USING btree (recipe_id);


--
-- Name: index_likes_on_recipe_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_likes_on_recipe_id ON public.likes USING btree (recipe_id);


--
-- Name: index_likes_on_user_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_likes_on_user_id ON public.likes USING btree (user_id);


--
-- Name: index_pg_search_documents_on_searchable; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_pg_search_documents_on_searchable ON public.pg_search_documents USING btree (searchable_type, searchable_id);


--
-- Name: index_questions_on_survey_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_questions_on_survey_id ON public.questions USING btree (survey_id);


--
-- Name: index_recipes_on_user_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_recipes_on_user_id ON public.recipes USING btree (user_id);


--
-- Name: index_submissions_on_survey_id; Type: INDEX; Schema: public; Owner: goormey
--

CREATE INDEX index_submissions_on_survey_id ON public.submissions USING btree (survey_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: goormey
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: questions fk_rails_15f8f0ec98; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT fk_rails_15f8f0ec98 FOREIGN KEY (survey_id) REFERENCES public.surveys(id);


--
-- Name: likes fk_rails_1e09b5dabf; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_1e09b5dabf FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: submissions fk_rails_28d4b65b46; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT fk_rails_28d4b65b46 FOREIGN KEY (survey_id) REFERENCES public.surveys(id);


--
-- Name: answers fk_rails_3d5ed4418f; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT fk_rails_3d5ed4418f FOREIGN KEY (question_id) REFERENCES public.questions(id);


--
-- Name: ingredients fk_rails_3ee351e1cd; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT fk_rails_3ee351e1cd FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: likes fk_rails_4efe2b1816; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_4efe2b1816 FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: instructions fk_rails_70ae839088; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.instructions
    ADD CONSTRAINT fk_rails_70ae839088 FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: recipes fk_rails_9606fce865; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT fk_rails_9606fce865 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: comments fk_rails_fa790d5166; Type: FK CONSTRAINT; Schema: public; Owner: goormey
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_fa790d5166 FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- PostgreSQL database dump complete
--

