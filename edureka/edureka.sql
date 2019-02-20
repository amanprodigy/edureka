--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: courses_content; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_content (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    module_id integer NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT courses_content_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT courses_content_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.courses_content OWNER TO django;

--
-- Name: courses_content_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_content_id_seq OWNER TO django;

--
-- Name: courses_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_content_id_seq OWNED BY public.courses_content.id;


--
-- Name: courses_course; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_course (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    overview text NOT NULL,
    created timestamp with time zone NOT NULL,
    owner_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.courses_course OWNER TO django;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO django;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;


--
-- Name: courses_course_students; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_course_students (
    id integer NOT NULL,
    course_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.courses_course_students OWNER TO django;

--
-- Name: courses_course_students_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_course_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_students_id_seq OWNER TO django;

--
-- Name: courses_course_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_course_students_id_seq OWNED BY public.courses_course_students.id;


--
-- Name: courses_file; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_file (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    file character varying(100) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.courses_file OWNER TO django;

--
-- Name: courses_file_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_file_id_seq OWNER TO django;

--
-- Name: courses_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_file_id_seq OWNED BY public.courses_file.id;


--
-- Name: courses_image; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_image (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    file character varying(100) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.courses_image OWNER TO django;

--
-- Name: courses_image_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_image_id_seq OWNER TO django;

--
-- Name: courses_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_image_id_seq OWNED BY public.courses_image.id;


--
-- Name: courses_module; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_module (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text NOT NULL,
    course_id integer NOT NULL,
    "order" integer NOT NULL,
    CONSTRAINT courses_module_order_check CHECK (("order" >= 0))
);


ALTER TABLE public.courses_module OWNER TO django;

--
-- Name: courses_module_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_module_id_seq OWNER TO django;

--
-- Name: courses_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_module_id_seq OWNED BY public.courses_module.id;


--
-- Name: courses_subject; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_subject (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL
);


ALTER TABLE public.courses_subject OWNER TO django;

--
-- Name: courses_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_subject_id_seq OWNER TO django;

--
-- Name: courses_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_subject_id_seq OWNED BY public.courses_subject.id;


--
-- Name: courses_text; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_text (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    content text NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.courses_text OWNER TO django;

--
-- Name: courses_text_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_text_id_seq OWNER TO django;

--
-- Name: courses_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_text_id_seq OWNED BY public.courses_text.id;


--
-- Name: courses_video; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.courses_video (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    url character varying(200) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.courses_video OWNER TO django;

--
-- Name: courses_video_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.courses_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_video_id_seq OWNER TO django;

--
-- Name: courses_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.courses_video_id_seq OWNED BY public.courses_video.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: courses_content id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_content ALTER COLUMN id SET DEFAULT nextval('public.courses_content_id_seq'::regclass);


--
-- Name: courses_course id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: courses_course_students id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course_students ALTER COLUMN id SET DEFAULT nextval('public.courses_course_students_id_seq'::regclass);


--
-- Name: courses_file id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_file ALTER COLUMN id SET DEFAULT nextval('public.courses_file_id_seq'::regclass);


--
-- Name: courses_image id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_image ALTER COLUMN id SET DEFAULT nextval('public.courses_image_id_seq'::regclass);


--
-- Name: courses_module id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_module ALTER COLUMN id SET DEFAULT nextval('public.courses_module_id_seq'::regclass);


--
-- Name: courses_subject id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_subject ALTER COLUMN id SET DEFAULT nextval('public.courses_subject_id_seq'::regclass);


--
-- Name: courses_text id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_text ALTER COLUMN id SET DEFAULT nextval('public.courses_text_id_seq'::regclass);


--
-- Name: courses_video id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_video ALTER COLUMN id SET DEFAULT nextval('public.courses_video_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
1	Instructors
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	25
2	1	26
3	1	27
4	1	28
5	1	29
6	1	30
7	1	31
8	1	32
9	1	37
10	1	38
11	1	39
12	1	40
13	1	41
14	1	42
15	1	43
16	1	44
17	1	45
18	1	46
19	1	47
20	1	48
21	1	49
22	1	50
23	1	51
24	1	52
25	1	53
26	1	54
27	1	55
28	1	56
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add course	7	add_course
26	Can change course	7	change_course
27	Can delete course	7	delete_course
28	Can view course	7	view_course
29	Can add module	8	add_module
30	Can change module	8	change_module
31	Can delete module	8	delete_module
32	Can view module	8	view_module
33	Can add subject	9	add_subject
34	Can change subject	9	change_subject
35	Can delete subject	9	delete_subject
36	Can view subject	9	view_subject
37	Can add file	10	add_file
38	Can change file	10	change_file
39	Can delete file	10	delete_file
40	Can view file	10	view_file
41	Can add text	11	add_text
42	Can change text	11	change_text
43	Can delete text	11	delete_text
44	Can view text	11	view_text
45	Can add image	12	add_image
46	Can change image	12	change_image
47	Can delete image	12	delete_image
48	Can view image	12	view_image
49	Can add video	13	add_video
50	Can change video	13	change_video
51	Can delete video	13	delete_video
52	Can view video	13	view_video
53	Can add content	14	add_content
54	Can change content	14	change_content
55	Can delete content	14	delete_content
56	Can view content	14	view_content
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$120000$niE6qO7bQsl2$FzHXlcwwS6qyhvna+cO+zTOOnyx+BlQxy9ZWH197fbU=	\N	f	bebu				f	t	2019-01-15 11:03:09.733381-08
1	pbkdf2_sha256$120000$noj734DlGFHq$l199bbwk3CK9b5R3MA67IDXVB0QBJrhuqz5PrSYwx+g=	2019-01-16 22:57:48.816208-08	t	aman			amanprodigy@gmail.com	t	t	2019-01-10 22:44:35.201529-08
2	pbkdf2_sha256$120000$vT0IVTjLdsHS$Lon/kpnUbb9j6DCcBz7bNJAu5nEdCYf6LkRmPN/ezm0=	2019-01-20 06:56:39.242139-08	f	richaraj	Richa	Raj	richa.raj7838@gmail.com	f	t	2019-01-14 00:48:10-08
4	pbkdf2_sha256$120000$BZQMoxhVBlPR$2h3Yzayeru3ds+5OpttjzZgtZ5rwSo7mB5g8OqZiNcY=	2019-01-21 05:04:09.659778-08	f	richa				f	t	2019-01-15 13:01:16.052481-08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: courses_content; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_content (id, object_id, content_type_id, module_id, "order") FROM stdin;
1	1	12	15	0
2	1	13	14	0
3	1	10	14	1
4	2	12	15	1
5	2	13	17	0
6	3	12	16	0
7	1	11	16	1
8	3	13	16	2
\.


--
-- Data for Name: courses_course; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_course (id, title, slug, overview, created, owner_id, subject_id) FROM stdin;
1	Data Analytics with Python	data-analytics-python	To learn about the field of data analytics using python	2019-01-10 22:50:06.094-08	1	3
2	Thermodyamics	thermodyamics	To learn about the laws of thermodynamics	2019-01-10 23:05:21.28-08	1	5
3	Course 1	course1		2019-01-12 06:09:07.863367-08	1	5
4	Course 2	course2	Start coding your own Django project with help from the official documentation and resource links below. You'll make plenty of mistakes which is critical on your path to learning the right way to build applications.	2019-01-12 06:21:22.35116-08	1	5
17	Machine Learning with R	machine-learning-with-r	Start coding your own Django project with help from the official documentation and resource links below. You'll make plenty of mistakes which is critical on your path to learning the right way to build applications.	2019-01-14 05:58:22.594614-08	1	1
18	Machine Learning with Python	machine-learning-with-python	These two Django Interactive Voice Response (IVR) system web application repositories part 1 and part 2 show you how to build a really cool Django application. There's also an accompanying blog post with detailed explanations of each step.\r\n\r\nSome new description.	2019-01-14 06:01:20.173417-08	2	1
19	Earth Crust	earth-crust	Get the earth crust detail	2019-01-14 08:41:05.240392-08	2	4
\.


--
-- Data for Name: courses_course_students; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_course_students (id, course_id, user_id) FROM stdin;
1	17	4
2	18	4
3	1	4
4	17	1
5	2	4
6	4	4
\.


--
-- Data for Name: courses_file; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_file (id, title, created, updated, file, owner_id) FROM stdin;
1	Gruvbox	2019-01-15 00:30:20.541674-08	2019-01-15 00:30:20.541706-08	files/Gruvbox.itermcolors	2
\.


--
-- Data for Name: courses_image; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_image (id, title, created, updated, file, owner_id) FROM stdin;
1	Rocky image	2019-01-14 23:25:16.318592-08	2019-01-14 23:25:16.318613-08	images/rocky-layer.jpeg	2
2	Richa	2019-01-15 00:30:45.477326-08	2019-01-15 00:30:45.477347-08	images/IMG_20180623_173811.jpg	2
3	Adidas Shoe	2019-01-16 00:04:22.187859-08	2019-01-16 00:04:22.187881-08	images/adidas-lite.jpeg	1
\.


--
-- Data for Name: courses_module; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_module (id, title, description, course_id, "order") FROM stdin;
1	Introduction to Statistics		1	0
2	Python fundamentals		1	0
3	Python based analytics - theory		1	0
4	Python based analytics - practice		1	0
5	First law of thermodynamics		2	0
6	Second law of thermodynamics		2	0
7	Third law of thermodynamics		2	0
8	Module 1		3	0
9	Module 2		3	1
10	Module 3		3	5
11	Module 4		3	6
12	Module 1		4	0
13	Top alluvial soil	top alluvial layer of the soil	19	1
14	sandy layer	second sandy layer	19	0
15	Rocky layer	rocky layer hard to crush	19	2
16	Introduction to R		17	0
17	Installing R on system		17	1
18	Introduction to Python		18	0
19	Python2 vs Python3		18	1
20	Installing Python on system		18	2
\.


--
-- Data for Name: courses_subject; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_subject (id, title, slug) FROM stdin;
1	Computer Science	computer-science
2	Mathematics	mathematics
3	Data Science	data-science
4	Geology	geology
5	Physics	physics
6	Chemistry	chemistry
\.


--
-- Data for Name: courses_text; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_text (id, title, created, updated, content, owner_id) FROM stdin;
1	Introduction	2019-01-16 00:04:42.164348-08	2019-01-16 00:04:42.164391-08	Welcome to the course. We will talk about R language here.	1
\.


--
-- Data for Name: courses_video; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.courses_video (id, title, created, updated, url, owner_id) FROM stdin;
1	Just gonna stand here and watch me burn	2019-01-15 00:10:10.746081-08	2019-01-15 00:10:10.746101-08	https://www.youtube.com/watch?v=uelHwf8o7_U	2
2	Kohli century highlight	2019-01-16 00:03:42.545214-08	2019-01-16 00:03:42.545235-08	https://www.youtube.com/watch?v=Vb192B4zcI4	1
3	Introductory tutorial on R	2019-01-16 00:05:08.368036-08	2019-01-16 00:05:08.368058-08	https://www.youtube.com/watch?v=eDrhZb2onWY	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-01-10 22:44:50.092124-08	1	Computer Science	1	[{"added": {}}]	9	1
2	2019-01-10 22:44:57.715095-08	2	Mathematics	1	[{"added": {}}]	9	1
3	2019-01-10 22:45:03.63029-08	3	Data Science	1	[{"added": {}}]	9	1
4	2019-01-10 22:45:12.76675-08	4	Geology	1	[{"added": {}}]	9	1
5	2019-01-10 22:46:37.407354-08	5	Physics	1	[{"added": {}}]	9	1
6	2019-01-10 22:46:41.834577-08	6	Pysics	1	[{"added": {}}]	9	1
7	2019-01-10 22:46:55.199861-08	6	Physics	2	[{"changed": {"fields": ["title"]}}]	9	1
8	2019-01-10 22:47:13.978244-08	6	Chemistry	2	[{"changed": {"fields": ["title", "slug"]}}]	9	1
9	2019-01-10 22:50:06.099343-08	1	Data Analytics with Python	1	[{"added": {}}, {"added": {"name": "module", "object": "Introduction to Statistics"}}, {"added": {"name": "module", "object": "Python fundamentals"}}, {"added": {"name": "module", "object": "Python based analytics - theory"}}, {"added": {"name": "module", "object": "Python based analytics - practice"}}]	7	1
10	2019-01-10 23:05:21.282627-08	2	Thermodyamics	1	[{"added": {}}, {"added": {"name": "module", "object": "First law of thermodynamics"}}, {"added": {"name": "module", "object": "Second law of thermodynamics"}}, {"added": {"name": "module", "object": "Third law of thermodynamics"}}]	7	1
11	2019-01-10 23:09:47.832575-08	6	Chemistry	3		9	1
12	2019-01-10 23:09:47.835085-08	1	Computer Science	3		9	1
13	2019-01-10 23:09:47.836387-08	3	Data Science	3		9	1
14	2019-01-10 23:09:47.837597-08	4	Geology	3		9	1
15	2019-01-10 23:09:47.838875-08	2	Mathematics	3		9	1
16	2019-01-10 23:09:47.840704-08	5	Physics	3		9	1
17	2019-01-14 00:47:36.746968-08	1	Instructors	1	[{"added": {}}]	3	1
18	2019-01-14 00:48:10.3222-08	2	richaraj	1	[{"added": {}}]	4	1
19	2019-01-14 00:48:45.980052-08	2	richaraj	2	[{"changed": {"fields": ["first_name", "last_name", "email", "groups"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	courses	course
8	courses	module
9	courses	subject
10	courses	file
11	courses	text
12	courses	image
13	courses	video
14	courses	content
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-01-10 22:43:55.261231-08
2	auth	0001_initial	2019-01-10 22:43:55.370542-08
3	admin	0001_initial	2019-01-10 22:43:55.390779-08
4	admin	0002_logentry_remove_auto_add	2019-01-10 22:43:55.435327-08
5	admin	0003_logentry_add_action_flag_choices	2019-01-10 22:43:55.445563-08
6	contenttypes	0002_remove_content_type_name	2019-01-10 22:43:55.477339-08
7	auth	0002_alter_permission_name_max_length	2019-01-10 22:43:55.483316-08
8	auth	0003_alter_user_email_max_length	2019-01-10 22:43:55.494356-08
9	auth	0004_alter_user_username_opts	2019-01-10 22:43:55.5062-08
10	auth	0005_alter_user_last_login_null	2019-01-10 22:43:55.535841-08
11	auth	0006_require_contenttypes_0002	2019-01-10 22:43:55.53911-08
12	auth	0007_alter_validators_add_error_messages	2019-01-10 22:43:55.54985-08
13	auth	0008_alter_user_username_max_length	2019-01-10 22:43:55.582232-08
14	auth	0009_alter_user_last_name_max_length	2019-01-10 22:43:55.59422-08
15	courses	0001_initial	2019-01-10 22:43:55.67776-08
16	sessions	0001_initial	2019-01-10 22:43:55.68695-08
17	courses	0002_content_file_image_text_video	2019-01-11 01:59:47.268075-08
18	courses	0003_auto_20190112_1311	2019-01-12 06:06:22.864811-08
19	courses	0004_auto_20190112_1406	2019-01-12 06:06:22.927942-08
20	courses	0005_course_students	2019-01-15 11:05:48.118671-08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
v0uvxars8bx7xtv5c31976nz4lxcllad	NDk0NGViNzYwMDdjZTJkNTVkOGEwMTc1MTZiYmU3NWUwNzk0NDExMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OWVmYTFhN2I0ODI3YzQ2NGExMmY4ZjMwMTRiYzdlNDk4NzAxZGUxIn0=	2019-01-30 22:57:48.818407-08
4kuqqgevy4iplcan8162gsnxdlue07nh	ZjkwOWExMjA3MzllODQxNTA3NjMwMjA4YTU1OWM3MTg3OGJmZTJmYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMmZiYzVmN2EzOWExNjc1MWU0NmZkZmRjYWZmZGZiOWFmZGYzNTQzIn0=	2019-02-03 06:56:39.247494-08
jqti8pttk9ygaimfqdqcfzg0itjzo97z	MjljYjJlNzNlYzg2NGZjYzI2Njg3ZjAzZmVmYmZlZWZkMmE0NWIyNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0OWM2NzE1YzM2YTg1YzAzMDU0M2I4OGNiZWVhODUwNDU1N2M4MDBlIn0=	2019-02-03 12:56:58.839209-08
9pwmar6n3mqd4a92mxkj65fyzgzui9m9	OGIwYjFmZGFjMGQwYWNlZTYxNDI0MTM5ZTIwMmU0NmRhYjE1NWNkZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ5YzY3MTVjMzZhODVjMDMwNTQzYjg4Y2JlZWE4NTA0NTU3YzgwMGUiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-04 05:04:09.66409-08
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 28, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: courses_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_content_id_seq', 8, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 19, true);


--
-- Name: courses_course_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_course_students_id_seq', 6, true);


--
-- Name: courses_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_file_id_seq', 1, true);


--
-- Name: courses_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_image_id_seq', 3, true);


--
-- Name: courses_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_module_id_seq', 20, true);


--
-- Name: courses_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_subject_id_seq', 6, true);


--
-- Name: courses_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_text_id_seq', 1, true);


--
-- Name: courses_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.courses_video_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: courses_content courses_content_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_content
    ADD CONSTRAINT courses_content_pkey PRIMARY KEY (id);


--
-- Name: courses_course courses_course_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);


--
-- Name: courses_course courses_course_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_slug_key UNIQUE (slug);


--
-- Name: courses_course_students courses_course_students_course_id_user_id_8f9097c6_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course_students
    ADD CONSTRAINT courses_course_students_course_id_user_id_8f9097c6_uniq UNIQUE (course_id, user_id);


--
-- Name: courses_course_students courses_course_students_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course_students
    ADD CONSTRAINT courses_course_students_pkey PRIMARY KEY (id);


--
-- Name: courses_file courses_file_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_file
    ADD CONSTRAINT courses_file_pkey PRIMARY KEY (id);


--
-- Name: courses_image courses_image_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_image
    ADD CONSTRAINT courses_image_pkey PRIMARY KEY (id);


--
-- Name: courses_module courses_module_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_module
    ADD CONSTRAINT courses_module_pkey PRIMARY KEY (id);


--
-- Name: courses_subject courses_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_subject
    ADD CONSTRAINT courses_subject_pkey PRIMARY KEY (id);


--
-- Name: courses_subject courses_subject_slug_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_subject
    ADD CONSTRAINT courses_subject_slug_key UNIQUE (slug);


--
-- Name: courses_text courses_text_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_text
    ADD CONSTRAINT courses_text_pkey PRIMARY KEY (id);


--
-- Name: courses_video courses_video_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_video
    ADD CONSTRAINT courses_video_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: courses_content_content_type_id_e6d9a477; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_content_content_type_id_e6d9a477 ON public.courses_content USING btree (content_type_id);


--
-- Name: courses_content_module_id_38e9abef; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_content_module_id_38e9abef ON public.courses_content USING btree (module_id);


--
-- Name: courses_course_owner_id_97a468c6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_course_owner_id_97a468c6 ON public.courses_course USING btree (owner_id);


--
-- Name: courses_course_slug_9c670f14_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_course_slug_9c670f14_like ON public.courses_course USING btree (slug varchar_pattern_ops);


--
-- Name: courses_course_students_course_id_2c36f816; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_course_students_course_id_2c36f816 ON public.courses_course_students USING btree (course_id);


--
-- Name: courses_course_students_user_id_7e195ad6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_course_students_user_id_7e195ad6 ON public.courses_course_students USING btree (user_id);


--
-- Name: courses_course_subject_id_7a2c8100; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_course_subject_id_7a2c8100 ON public.courses_course USING btree (subject_id);


--
-- Name: courses_file_owner_id_63963a75; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_file_owner_id_63963a75 ON public.courses_file USING btree (owner_id);


--
-- Name: courses_image_owner_id_825053fe; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_image_owner_id_825053fe ON public.courses_image USING btree (owner_id);


--
-- Name: courses_module_course_id_7d4820de; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_module_course_id_7d4820de ON public.courses_module USING btree (course_id);


--
-- Name: courses_subject_slug_bad2b05f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_subject_slug_bad2b05f_like ON public.courses_subject USING btree (slug varchar_pattern_ops);


--
-- Name: courses_text_owner_id_8f5e7e45; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_text_owner_id_8f5e7e45 ON public.courses_text USING btree (owner_id);


--
-- Name: courses_video_owner_id_753691d5; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX courses_video_owner_id_753691d5 ON public.courses_video USING btree (owner_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_content courses_content_content_type_id_e6d9a477_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_content
    ADD CONSTRAINT courses_content_content_type_id_e6d9a477_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_content courses_content_module_id_38e9abef_fk_courses_module_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_content
    ADD CONSTRAINT courses_content_module_id_38e9abef_fk_courses_module_id FOREIGN KEY (module_id) REFERENCES public.courses_module(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_owner_id_97a468c6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_owner_id_97a468c6_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_students courses_course_students_course_id_2c36f816_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course_students
    ADD CONSTRAINT courses_course_students_course_id_2c36f816_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course_students courses_course_students_user_id_7e195ad6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course_students
    ADD CONSTRAINT courses_course_students_user_id_7e195ad6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_subject_id_7a2c8100_fk_courses_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_subject_id_7a2c8100_fk_courses_subject_id FOREIGN KEY (subject_id) REFERENCES public.courses_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_file courses_file_owner_id_63963a75_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_file
    ADD CONSTRAINT courses_file_owner_id_63963a75_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_image courses_image_owner_id_825053fe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_image
    ADD CONSTRAINT courses_image_owner_id_825053fe_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_module courses_module_course_id_7d4820de_fk_courses_course_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_module
    ADD CONSTRAINT courses_module_course_id_7d4820de_fk_courses_course_id FOREIGN KEY (course_id) REFERENCES public.courses_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_text courses_text_owner_id_8f5e7e45_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_text
    ADD CONSTRAINT courses_text_owner_id_8f5e7e45_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_video courses_video_owner_id_753691d5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.courses_video
    ADD CONSTRAINT courses_video_owner_id_753691d5_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

