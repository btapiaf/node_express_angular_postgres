--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-01-29 02:20:24

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
-- TOC entry 202 (class 1259 OID 32774)
-- Name: consejo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consejo (
    id_cc integer NOT NULL,
    id_solicitudes integer,
    usuario_cc text,
    pass_cc text
);


ALTER TABLE public.consejo OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 32780)
-- Name: consejoCarrera_id_cc_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."consejoCarrera_id_cc_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."consejoCarrera_id_cc_seq" OWNER TO postgres;

--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 203
-- Name: consejoCarrera_id_cc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."consejoCarrera_id_cc_seq" OWNED BY public.consejo.id_cc;


--
-- TOC entry 204 (class 1259 OID 32782)
-- Name: entregables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entregables (
    id_entregable integer NOT NULL,
    id_tutor integer,
    id_estudiante integer,
    dia text,
    hora text,
    porcentaje integer,
    descripcion text,
    firma text
);


ALTER TABLE public.entregables OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 32788)
-- Name: entregables_id_entregable_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entregables_id_entregable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entregables_id_entregable_seq OWNER TO postgres;

--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 205
-- Name: entregables_id_entregable_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entregables_id_entregable_seq OWNED BY public.entregables.id_entregable;


--
-- TOC entry 206 (class 1259 OID 32790)
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    usuario text,
    pass text,
    tema character varying(50)
);


ALTER TABLE public.estudiantes OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 32796)
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiante_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estudiante_id_estudiante_seq OWNER TO postgres;

--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 207
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estudiante_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;


--
-- TOC entry 208 (class 1259 OID 32803)
-- Name: registrosoli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registrosoli (
    id_solicitud integer NOT NULL,
    id_estudiante integer,
    id_tutor integer,
    tipo_solicitud text,
    destinatario text,
    contenido text
);


ALTER TABLE public.registrosoli OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 32809)
-- Name: registroSolicitud_id_solicitud_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."registroSolicitud_id_solicitud_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."registroSolicitud_id_solicitud_seq" OWNER TO postgres;

--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 209
-- Name: registroSolicitud_id_solicitud_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."registroSolicitud_id_solicitud_seq" OWNED BY public.registrosoli.id_solicitud;


--
-- TOC entry 213 (class 1259 OID 40969)
-- Name: resolucion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resolucion (
    id integer NOT NULL,
    id_consejo integer,
    estado character varying
);


ALTER TABLE public.resolucion OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 40967)
-- Name: resolucion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resolucion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resolucion_id_seq OWNER TO postgres;

--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 212
-- Name: resolucion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resolucion_id_seq OWNED BY public.resolucion.id;


--
-- TOC entry 211 (class 1259 OID 32847)
-- Name: tutor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutor (
    id_tutor integer NOT NULL,
    usuario_tutor character varying(50),
    pass_tutor character varying(50)
);


ALTER TABLE public.tutor OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 32845)
-- Name: tutor_id_tutor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutor_id_tutor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutor_id_tutor_seq OWNER TO postgres;

--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 210
-- Name: tutor_id_tutor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutor_id_tutor_seq OWNED BY public.tutor.id_tutor;


--
-- TOC entry 2722 (class 2604 OID 32819)
-- Name: consejo id_cc; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consejo ALTER COLUMN id_cc SET DEFAULT nextval('public."consejoCarrera_id_cc_seq"'::regclass);


--
-- TOC entry 2723 (class 2604 OID 32820)
-- Name: entregables id_entregable; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entregables ALTER COLUMN id_entregable SET DEFAULT nextval('public.entregables_id_entregable_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 32821)
-- Name: estudiantes id_estudiante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiante_id_estudiante_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 32823)
-- Name: registrosoli id_solicitud; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrosoli ALTER COLUMN id_solicitud SET DEFAULT nextval('public."registroSolicitud_id_solicitud_seq"'::regclass);


--
-- TOC entry 2727 (class 2604 OID 40972)
-- Name: resolucion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolucion ALTER COLUMN id SET DEFAULT nextval('public.resolucion_id_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 32850)
-- Name: tutor id_tutor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutor ALTER COLUMN id_tutor SET DEFAULT nextval('public.tutor_id_tutor_seq'::regclass);


--
-- TOC entry 2866 (class 0 OID 32774)
-- Dependencies: 202
-- Data for Name: consejo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consejo (id_cc, id_solicitudes, usuario_cc, pass_cc) FROM stdin;
1	1	Silvana	12345
\.


--
-- TOC entry 2868 (class 0 OID 32782)
-- Dependencies: 204
-- Data for Name: entregables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entregables (id_entregable, id_tutor, id_estudiante, dia, hora, porcentaje, descripcion, firma) FROM stdin;
8	2	4	17/01/2019	18:00	25	Se realizó el progreso con gran satisfacci¢n aunque con algunos retrasos en las fecha dichas.	true
9	2	4	16/04/2019	08:00	25	Se finalizó el etregable pero tuvo varias dificultades para poder terminar.	true
10	2	4	20/04/2019	10:00	25	Llegó a su objetivo de una manera satisfactoria.	true
11	2	4	21/12/2019	11:00	25	Se cumplió con el progreso acordadode forma eficaz.	false
2	2	3	Lunes	3:00	45	segunda opcion	5\n
16	1	3	2020-01-10	08:22	51	pilas	2
15	1	3	2020-01-24	34	0	prueba	2
20	1	1	2020-01-29	15:00	35	no ha venido con las correcciones realizadas de acuerdo a la ultima revision	\N
18	1	1	2020-01-12	02:01	20	Esto si vale	\N
25	1	2	2020-01-09	22:22	3	prueba de errores	2
7	1	2	21/05/2019	12:00	50	Se entregó la finalizacion correcta del proyecto, cumple con lo especificado.	2
6	1	2	20/01/2019	09:00	50	Se cumplió con el progreso acordadode forma eficaz.	2
28	1	5	2020-01-10	15:50	20	este sera mi primer entregable	5
29	1	5	2020-01-17	03:03	45	mi segundo entregable	5
3	1	1	16/11/2019	12:00	25	Cumple con el entregable de una manera minima ya que, se necesitaria reforzar pero cumple con lo establecido.	\N
23	1	1	2020-01-30	15:20	10	Esto esta correcto	\N
5	1	1	1/01/2020	07:00	25	Llegó a su objetivo de una manera satisfactoria.	\N
22	1	1	Lunes	15:00	10	Este es mi primer porcentaje que se incluye	\N
4	1	1	29/12/2019	17:00	25	El progreso a sido considerable a pesar de tener varios errores semánticos.	\N
30	1	1	2020-01-02	15:20	20	hola	2
17	1	1	2020-01-12	02:01	20	Todo en orden	\N
12	1	3	Lunes	12:44	20	Dime que valio	\N
21	1	2	2020-01-31	15:50	20	capitulo 1 revisado	\N
26	1	3	2020-01-10	02:03	4	valio el firmar	5
13	1	3	Martes	15:00	10	Segunda Prueba	2
14	1	2	Domingo	15:20	50	id 2	\N
31	1	1	2020-01-09	05:22	5	lAS PRUEBAS SE ENTREGARON CORRECTAMENTE	5
19	1	22	2020-01-27	19:50	0	TODO BIEN	false
24	1	1	2020-01-04	01:00	454	TODO CORRECTO	\N
27	1	1	2020-01-10	02:01	5	ESTA ENTREGA SE REALIZA CORRECTAMENTE	5
\.


--
-- TOC entry 2870 (class 0 OID 32790)
-- Dependencies: 206
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (id_estudiante, usuario, pass, tema) FROM stdin;
1	Carla	123456	Ingenieria en Software enfocado a produccion
2	Boris	2234568	Ingeniera en programacion
3	Cynthia	123654	ingenieria basa en redes virtuales
5	Lizbeth	2542	ingenieria con enfoque a robotica
\.


--
-- TOC entry 2872 (class 0 OID 32803)
-- Dependencies: 208
-- Data for Name: registrosoli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registrosoli (id_solicitud, id_estudiante, id_tutor, tipo_solicitud, destinatario, contenido) FROM stdin;
1	1	1	Cambio de Tutor	Patzy Prieto	Este es el primer registro de solicitud
2	1	1	Cambio de Horario\n	Rodrigo Tufiño	Segundo dato en la tabla
3	3	44	43443	fsgdgd	grdgdrgd
4	1	1	PRueba	Carla	dansoidsaoijfdioaf
5	1	1	PRueba	Carla	dansoidsaoijfdioaf
6	1	1	holi	Carla	dansoidsaoijfdioaf
7	1	1	Prorroga	Director de Carrera	C:\\fakepath\\El gran libro de HTML5, CSS3 y JavaScript.pdf
8	1	1	Prorroga	Director de Carrera	
9	1	1	Prorroga	Director de Carrera	C:\\fakepath\\El gran libro de HTML5, CSS3 y JavaScript.pdf
\.


--
-- TOC entry 2877 (class 0 OID 40969)
-- Dependencies: 213
-- Data for Name: resolucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resolucion (id, id_consejo, estado) FROM stdin;
1	1	Aprobado
2	1	aprobado
3	1	\N
4	1	\N
5	1	\N
6	1	\N
7	1	\N
8	1	\N
9	1	\N
10	1	\N
11	1	\N
12	1	\N
13	1	\N
14	1	\N
15	1	\N
16	1	\N
17	1	aprobado
18	1	aprobado
19	1	\N
20	1	\N
21	1	\N
\.


--
-- TOC entry 2875 (class 0 OID 32847)
-- Dependencies: 211
-- Data for Name: tutor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutor (id_tutor, usuario_tutor, pass_tutor) FROM stdin;
1	\N	\N
2	\N	\N
3	vdgfdgfdg	2343
4	orisB	2343
5	orisB	2343
6	orisB	2343
7	dfsdfsdasd	2343
8	\N	2343
9	prueba	2343
\.


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 203
-- Name: consejoCarrera_id_cc_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."consejoCarrera_id_cc_seq"', 1, true);


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 205
-- Name: entregables_id_entregable_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entregables_id_entregable_seq', 31, true);


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 207
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiante_id_estudiante_seq', 5, true);


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 209
-- Name: registroSolicitud_id_solicitud_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."registroSolicitud_id_solicitud_seq"', 9, true);


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 212
-- Name: resolucion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resolucion_id_seq', 21, true);


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 210
-- Name: tutor_id_tutor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutor_id_tutor_seq', 9, true);


--
-- TOC entry 2729 (class 2606 OID 32826)
-- Name: consejo consejoCarrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consejo
    ADD CONSTRAINT "consejoCarrera_pkey" PRIMARY KEY (id_cc);


--
-- TOC entry 2731 (class 2606 OID 32828)
-- Name: entregables entregables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entregables
    ADD CONSTRAINT entregables_pkey PRIMARY KEY (id_entregable);


--
-- TOC entry 2733 (class 2606 OID 32830)
-- Name: estudiantes estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (id_estudiante);


--
-- TOC entry 2735 (class 2606 OID 32834)
-- Name: registrosoli registroSolicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrosoli
    ADD CONSTRAINT "registroSolicitud_pkey" PRIMARY KEY (id_solicitud);


--
-- TOC entry 2739 (class 2606 OID 40977)
-- Name: resolucion resolucion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolucion
    ADD CONSTRAINT resolucion_pkey PRIMARY KEY (id);


--
-- TOC entry 2737 (class 2606 OID 32852)
-- Name: tutor tutor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT tutor_pkey PRIMARY KEY (id_tutor);


-- Completed on 2020-01-29 02:20:24

--
-- PostgreSQL database dump complete
--

