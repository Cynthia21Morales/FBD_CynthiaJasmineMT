--
-- PostgreSQL database dump
--

\restrict SkCUJS1tIJeceEh51cU2PxYR7gudd4XOJzMW7vJa52XDn2L6a5T8AFG9OtYk8gF

-- Dumped from database version 17.2
-- Dumped by pg_dump version 18.1

-- Started on 2026-05-03 22:28:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 123177)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id integer NOT NULL,
    apellidopaterno character varying NOT NULL,
    apellidomaterno character varying NOT NULL,
    nombres character varying NOT NULL,
    direccion character varying NOT NULL,
    correo character varying NOT NULL,
    telefono character varying NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 123176)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO postgres;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 222 (class 1259 OID 123201)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    codigo character varying(10) NOT NULL,
    descripcion character varying(50) NOT NULL,
    preciocompra money NOT NULL,
    precioventa money NOT NULL,
    stok integer NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 123200)
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 221
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- TOC entry 220 (class 1259 OID 123186)
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    id integer NOT NULL,
    apellidopaterno character varying NOT NULL,
    apellidomaterno character varying NOT NULL,
    nombres character varying NOT NULL,
    direccion character varying NOT NULL,
    correo character varying NOT NULL,
    telefono character varying NOT NULL,
    empresas character varying NOT NULL
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 123185)
-- Name: proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedores_id_seq OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 219
-- Name: proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_id_seq OWNED BY public.proveedores.id;


--
-- TOC entry 224 (class 1259 OID 123208)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id integer NOT NULL,
    idclientes integer NOT NULL,
    cantidad integer,
    idproducto integer NOT NULL,
    fechaventa date
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 123207)
-- Name: ventas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventas_id_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 223
-- Name: ventas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;


--
-- TOC entry 4710 (class 2604 OID 123180)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 123204)
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 123189)
-- Name: proveedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN id SET DEFAULT nextval('public.proveedores_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 123211)
-- Name: ventas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);


--
-- TOC entry 4870 (class 0 OID 123177)
-- Dependencies: 218
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id, apellidopaterno, apellidomaterno, nombres, direccion, correo, telefono) FROM stdin;
1	Martinez	Perez	Juan	Calle Hidalgo #418	sofia.1@email.com	5566198848
2	Sanchez	Garcia	Pedro	Calle Constitucion #288	sofia.2@email.com	5586173356
3	Garcia	Sanchez	Isabel	Calle Reforma #96	ana.3@email.com	5517460185
4	Sanchez	Sanchez	Luis	Calle Morelos #140	juan.4@email.com	5519360478
5	Hernandez	Gonzalez	Isabel	Calle Juarez #219	isabel.5@email.com	5571355598
6	Gonzalez	Lopez	Luis	Calle Morelos #126	jose.6@email.com	5534571923
7	Garcia	Cruz	Pedro	Calle Juarez #431	elena.7@email.com	5534727253
8	Perez	Cruz	Juan	Calle Constitucion #122	luis.8@email.com	5516041747
9	Lopez	Gonzalez	Ana	Calle Insurgentes #193	maria.9@email.com	5530922819
10	Garcia	Sanchez	Luis	Calle Reforma #68	luis.10@email.com	5560646784
11	Garcia	Cruz	Maria	Calle Hidalgo #108	isabel.11@email.com	5537702212
12	Perez	Rodriguez	Isabel	Calle Constitucion #487	jose.12@email.com	5580457777
13	Hernandez	Rodriguez	Elena	Calle Morelos #321	elena.13@email.com	5513433083
14	Cruz	Cruz	Maria	Calle Insurgentes #28	pedro.14@email.com	5580798040
15	Perez	Gonzalez	Ana	Calle Reforma #87	juan.15@email.com	5581951838
16	Martinez	Cruz	Maria	Calle Hidalgo #26	elena.16@email.com	5592957239
17	Rodriguez	Sanchez	Ana	Calle Hidalgo #334	pedro.17@email.com	5597556735
18	Martinez	Ramirez	Ana	Calle Hidalgo #320	carlos.18@email.com	5565208562
19	Cruz	Garcia	Pedro	Calle Juarez #82	carlos.19@email.com	5532118288
20	Sanchez	Rodriguez	Carlos	Calle Hidalgo #300	isabel.20@email.com	5575362684
21	Rodriguez	Hernandez	Carlos	Calle Reforma #46	juan.21@email.com	5525737616
22	Sanchez	Gonzalez	Jose	Calle Insurgentes #245	pedro.22@email.com	5525154158
23	Lopez	Ramirez	Jose	Calle Morelos #98	maria.23@email.com	5523589220
24	Lopez	Lopez	Maria	Calle Insurgentes #95	juan.24@email.com	5515698984
25	Ramirez	Martinez	Isabel	Calle Morelos #352	maria.25@email.com	5561810327
26	Martinez	Rodriguez	Maria	Calle Hidalgo #36	elena.26@email.com	5531308748
27	Garcia	Lopez	Luis	Calle Insurgentes #336	luis.27@email.com	5580531921
28	Sanchez	Cruz	Juan	Calle Reforma #359	sofia.28@email.com	5514909205
29	Ramirez	Hernandez	Maria	Calle Hidalgo #328	ana.29@email.com	5515332137
30	Hernandez	Sanchez	Isabel	Calle Morelos #427	elena.30@email.com	5563224662
31	Martinez	Martinez	Sofia	Calle Insurgentes #119	luis.31@email.com	5585244113
32	Perez	Garcia	Ana	Calle Morelos #436	maria.32@email.com	5555518079
33	Rodriguez	Cruz	Maria	Calle Constitucion #326	maria.33@email.com	5529014947
34	Ramirez	Ramirez	Pedro	Calle Juarez #328	pedro.34@email.com	5540975713
35	Lopez	Ramirez	Carlos	Calle Hidalgo #379	jose.35@email.com	5535612485
36	Sanchez	Cruz	Luis	Calle Constitucion #344	jose.36@email.com	5561086718
37	Martinez	Gonzalez	Sofia	Calle Reforma #32	pedro.37@email.com	5550790882
38	Hernandez	Rodriguez	Maria	Calle Juarez #436	carlos.38@email.com	5548713540
39	Ramirez	Lopez	Jose	Calle Hidalgo #60	juan.39@email.com	5524414045
40	Gonzalez	Garcia	Carlos	Calle Juarez #60	maria.40@email.com	5567051161
41	Garcia	Hernandez	Elena	Calle Morelos #14	maria.41@email.com	5587108694
42	Garcia	Martinez	Isabel	Calle Hidalgo #18	luis.42@email.com	5599261338
43	Cruz	Perez	Elena	Calle Juarez #70	maria.43@email.com	5543390879
44	Sanchez	Gonzalez	Luis	Calle Hidalgo #422	ana.44@email.com	5590765882
45	Lopez	Hernandez	Ana	Calle Morelos #449	isabel.45@email.com	5566751407
46	Lopez	Ramirez	Luis	Calle Constitucion #265	ana.46@email.com	5589386679
47	Martinez	Ramirez	Elena	Calle Reforma #445	juan.47@email.com	5570985179
48	Rodriguez	Gonzalez	Jose	Calle Insurgentes #264	pedro.48@email.com	5592258828
49	Martinez	Gonzalez	Jose	Calle Morelos #272	juan.49@email.com	5550533882
50	Sanchez	Martinez	Carlos	Calle Morelos #28	isabel.50@email.com	5520223377
51	Hernandez	Cruz	Maria	Calle Reforma #125	luis.1@email.com	5569937337
52	Sanchez	Garcia	Juan	Calle Hidalgo #500	elena.2@email.com	5584261419
53	Hernandez	Hernandez	Maria	Calle Insurgentes #15	maria.3@email.com	5532515101
54	Martinez	Gonzalez	Luis	Calle Constitucion #218	sofia.4@email.com	5517081291
55	Hernandez	Sanchez	Isabel	Calle Morelos #427	juan.5@email.com	5575332574
56	Cruz	Rodriguez	Juan	Calle Insurgentes #179	luis.6@email.com	5552512367
57	Sanchez	Rodriguez	Pedro	Calle Hidalgo #440	ana.7@email.com	5568058692
58	Perez	Ramirez	Sofia	Calle Juarez #244	elena.8@email.com	5547942916
59	Sanchez	Hernandez	Ana	Calle Constitucion #234	pedro.9@email.com	5564124038
60	Ramirez	Garcia	Jose	Calle Constitucion #479	isabel.10@email.com	5581924571
61	Perez	Gonzalez	Luis	Calle Hidalgo #7	ana.11@email.com	5563848107
62	Rodriguez	Garcia	Juan	Calle Hidalgo #373	isabel.12@email.com	5528224882
63	Ramirez	Sanchez	Isabel	Calle Constitucion #153	ana.13@email.com	5580863458
64	Martinez	Perez	Maria	Calle Morelos #151	juan.14@email.com	5535571753
65	Cruz	Ramirez	Sofia	Calle Reforma #400	isabel.15@email.com	5552289932
66	Sanchez	Gonzalez	Ana	Calle Hidalgo #456	isabel.16@email.com	5558599836
67	Lopez	Gonzalez	Ana	Calle Morelos #487	luis.17@email.com	5531817249
68	Martinez	Martinez	Carlos	Calle Constitucion #142	elena.18@email.com	5518807008
69	Garcia	Garcia	Carlos	Calle Juarez #367	sofia.19@email.com	5558481314
70	Hernandez	Martinez	Luis	Calle Hidalgo #7	ana.20@email.com	5575110512
71	Gonzalez	Garcia	Carlos	Calle Insurgentes #79	carlos.21@email.com	5583632820
72	Gonzalez	Martinez	Pedro	Calle Insurgentes #71	jose.22@email.com	5589828371
73	Rodriguez	Lopez	Luis	Calle Insurgentes #141	maria.23@email.com	5535322542
74	Cruz	Perez	Isabel	Calle Hidalgo #2	jose.24@email.com	5587590175
75	Lopez	Gonzalez	Juan	Calle Juarez #182	ana.25@email.com	5559751323
76	Perez	Ramirez	Elena	Calle Hidalgo #402	luis.26@email.com	5573382827
77	Perez	Garcia	Isabel	Calle Constitucion #179	carlos.27@email.com	5591770031
78	Ramirez	Cruz	Luis	Calle Juarez #226	luis.28@email.com	5521154076
79	Gonzalez	Martinez	Carlos	Calle Constitucion #164	maria.29@email.com	5532758302
80	Hernandez	Martinez	Maria	Calle Morelos #260	luis.30@email.com	5584643862
81	Lopez	Gonzalez	Jose	Calle Hidalgo #432	sofia.31@email.com	5580592058
82	Lopez	Gonzalez	Ana	Calle Reforma #383	maria.32@email.com	5541662882
83	Gonzalez	Hernandez	Maria	Calle Reforma #365	maria.33@email.com	5595255494
84	Cruz	Rodriguez	Luis	Calle Insurgentes #321	elena.34@email.com	5521927272
85	Sanchez	Ramirez	Jose	Calle Hidalgo #424	maria.35@email.com	5595687793
86	Cruz	Gonzalez	Maria	Calle Morelos #358	sofia.36@email.com	5517938535
87	Perez	Perez	Ana	Calle Juarez #392	pedro.37@email.com	5592560308
88	Rodriguez	Hernandez	Maria	Calle Reforma #232	luis.38@email.com	5568107746
89	Sanchez	Ramirez	Carlos	Calle Insurgentes #23	luis.39@email.com	5560249031
90	Lopez	Martinez	Ana	Calle Constitucion #460	carlos.40@email.com	5538856969
91	Martinez	Gonzalez	Luis	Calle Hidalgo #219	ana.41@email.com	5583635452
92	Ramirez	Sanchez	Isabel	Calle Constitucion #115	jose.42@email.com	5549483063
93	Lopez	Ramirez	Sofia	Calle Constitucion #127	juan.43@email.com	5558697556
94	Lopez	Rodriguez	Carlos	Calle Hidalgo #224	maria.44@email.com	5566193807
95	Martinez	Lopez	Pedro	Calle Insurgentes #189	pedro.45@email.com	5558173135
96	Garcia	Ramirez	Ana	Calle Juarez #489	jose.46@email.com	5586464979
97	Lopez	Lopez	Carlos	Calle Insurgentes #415	luis.47@email.com	5554110067
98	Garcia	Garcia	Elena	Calle Reforma #442	isabel.48@email.com	5580489117
99	Ramirez	Hernandez	Juan	Calle Hidalgo #142	luis.49@email.com	5569059394
100	Hernandez	Ramirez	Juan	Calle Constitucion #100	elena.50@email.com	5513368568
\.


--
-- TOC entry 4874 (class 0 OID 123201)
-- Dependencies: 222
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, codigo, descripcion, preciocompra, precioventa, stok) FROM stdin;
1	PROD-00001	Descripción del producto número 1	$49.97	$199.08	141
2	PROD-00002	Descripción del producto número 2	$45.60	$177.52	10
3	PROD-00003	Descripción del producto número 3	$29.97	$253.39	43
4	PROD-00004	Descripción del producto número 4	$79.70	$136.56	35
5	PROD-00005	Descripción del producto número 5	$34.94	$179.69	113
6	PROD-00006	Descripción del producto número 6	$85.22	$227.29	117
7	PROD-00007	Descripción del producto número 7	$95.67	$133.90	186
8	PROD-00008	Descripción del producto número 8	$13.22	$251.89	153
9	PROD-00009	Descripción del producto número 9	$16.15	$214.26	128
10	PROD-00010	Descripción del producto número 10	$9.26	$240.16	123
11	PROD-00011	Descripción del producto número 11	$95.93	$165.26	103
12	PROD-00012	Descripción del producto número 12	$15.11	$204.33	131
13	PROD-00013	Descripción del producto número 13	$17.94	$227.20	65
14	PROD-00014	Descripción del producto número 14	$24.58	$196.54	190
15	PROD-00015	Descripción del producto número 15	$90.60	$140.75	154
16	PROD-00016	Descripción del producto número 16	$29.70	$113.06	32
17	PROD-00017	Descripción del producto número 17	$6.07	$115.09	200
18	PROD-00018	Descripción del producto número 18	$50.15	$184.78	69
19	PROD-00019	Descripción del producto número 19	$79.44	$161.16	20
20	PROD-00020	Descripción del producto número 20	$12.18	$244.39	117
21	PROD-00021	Descripción del producto número 21	$50.68	$196.44	85
22	PROD-00022	Descripción del producto número 22	$99.56	$197.03	207
23	PROD-00023	Descripción del producto número 23	$25.53	$118.59	168
24	PROD-00024	Descripción del producto número 24	$61.32	$256.03	14
25	PROD-00025	Descripción del producto número 25	$23.20	$119.37	180
26	PROD-00026	Descripción del producto número 26	$66.92	$143.11	205
27	PROD-00027	Descripción del producto número 27	$6.33	$230.68	204
28	PROD-00028	Descripción del producto número 28	$69.61	$117.44	87
29	PROD-00029	Descripción del producto número 29	$96.26	$223.84	186
30	PROD-00030	Descripción del producto número 30	$11.23	$200.82	133
31	PROD-00031	Descripción del producto número 31	$42.57	$117.84	56
32	PROD-00032	Descripción del producto número 32	$80.62	$142.19	132
33	PROD-00033	Descripción del producto número 33	$85.73	$242.56	164
34	PROD-00034	Descripción del producto número 34	$20.82	$197.41	61
35	PROD-00035	Descripción del producto número 35	$64.02	$158.93	151
36	PROD-00036	Descripción del producto número 36	$94.80	$155.11	65
37	PROD-00037	Descripción del producto número 37	$56.29	$197.67	33
38	PROD-00038	Descripción del producto número 38	$85.82	$163.25	13
39	PROD-00039	Descripción del producto número 39	$84.35	$239.68	53
40	PROD-00040	Descripción del producto número 40	$31.69	$173.88	19
41	PROD-00041	Descripción del producto número 41	$70.75	$125.00	46
42	PROD-00042	Descripción del producto número 42	$88.63	$126.55	69
43	PROD-00043	Descripción del producto número 43	$26.82	$169.78	182
44	PROD-00044	Descripción del producto número 44	$67.89	$254.68	138
45	PROD-00045	Descripción del producto número 45	$38.21	$121.09	52
46	PROD-00046	Descripción del producto número 46	$34.60	$112.65	201
47	PROD-00047	Descripción del producto número 47	$61.41	$111.31	139
48	PROD-00048	Descripción del producto número 48	$78.75	$191.18	76
49	PROD-00049	Descripción del producto número 49	$80.98	$177.32	91
50	PROD-00050	Descripción del producto número 50	$21.20	$223.74	68
51	PROD-00001	Descripción del producto número 1	$104.17	$122.56	109
52	PROD-00002	Descripción del producto número 2	$12.99	$210.83	28
53	PROD-00003	Descripción del producto número 3	$7.62	$143.68	189
54	PROD-00004	Descripción del producto número 4	$71.62	$204.73	157
55	PROD-00005	Descripción del producto número 5	$8.31	$175.02	124
56	PROD-00006	Descripción del producto número 6	$87.34	$142.32	191
57	PROD-00007	Descripción del producto número 7	$103.61	$121.91	39
58	PROD-00008	Descripción del producto número 8	$39.27	$256.45	118
59	PROD-00009	Descripción del producto número 9	$45.42	$191.56	145
60	PROD-00010	Descripción del producto número 10	$74.97	$178.05	11
61	PROD-00011	Descripción del producto número 11	$39.60	$184.16	151
62	PROD-00012	Descripción del producto número 12	$74.94	$112.01	116
63	PROD-00013	Descripción del producto número 13	$40.09	$175.97	56
64	PROD-00014	Descripción del producto número 14	$78.64	$251.33	173
65	PROD-00015	Descripción del producto número 15	$10.22	$229.17	137
66	PROD-00016	Descripción del producto número 16	$55.47	$161.13	85
67	PROD-00017	Descripción del producto número 17	$63.82	$114.52	80
68	PROD-00018	Descripción del producto número 18	$71.13	$123.59	14
69	PROD-00019	Descripción del producto número 19	$102.99	$191.86	60
70	PROD-00020	Descripción del producto número 20	$79.99	$183.64	49
71	PROD-00021	Descripción del producto número 21	$76.82	$180.65	157
72	PROD-00022	Descripción del producto número 22	$32.67	$249.37	62
73	PROD-00023	Descripción del producto número 23	$33.37	$219.57	94
74	PROD-00024	Descripción del producto número 24	$68.72	$241.40	141
75	PROD-00025	Descripción del producto número 25	$63.39	$124.95	193
76	PROD-00026	Descripción del producto número 26	$27.28	$251.97	127
77	PROD-00027	Descripción del producto número 27	$96.79	$249.38	93
78	PROD-00028	Descripción del producto número 28	$103.63	$116.06	97
79	PROD-00029	Descripción del producto número 29	$50.45	$191.71	46
80	PROD-00030	Descripción del producto número 30	$58.87	$211.72	167
81	PROD-00031	Descripción del producto número 31	$79.04	$220.27	65
82	PROD-00032	Descripción del producto número 32	$74.04	$234.07	75
83	PROD-00033	Descripción del producto número 33	$97.95	$118.97	90
84	PROD-00034	Descripción del producto número 34	$57.70	$111.20	203
85	PROD-00035	Descripción del producto número 35	$46.60	$140.78	55
86	PROD-00036	Descripción del producto número 36	$39.70	$135.69	204
87	PROD-00037	Descripción del producto número 37	$52.93	$127.08	136
88	PROD-00038	Descripción del producto número 38	$62.92	$122.41	125
89	PROD-00039	Descripción del producto número 39	$91.27	$117.90	203
90	PROD-00040	Descripción del producto número 40	$5.64	$140.93	138
91	PROD-00041	Descripción del producto número 41	$52.34	$130.08	80
92	PROD-00042	Descripción del producto número 42	$102.37	$179.27	198
93	PROD-00043	Descripción del producto número 43	$24.35	$220.98	19
94	PROD-00044	Descripción del producto número 44	$37.15	$138.48	12
95	PROD-00045	Descripción del producto número 45	$9.12	$113.16	94
96	PROD-00046	Descripción del producto número 46	$75.54	$198.76	169
97	PROD-00047	Descripción del producto número 47	$95.15	$190.55	120
98	PROD-00048	Descripción del producto número 48	$5.46	$160.01	17
99	PROD-00049	Descripción del producto número 49	$70.56	$221.72	178
100	PROD-00050	Descripción del producto número 50	$85.45	$233.32	17
\.


--
-- TOC entry 4872 (class 0 OID 123186)
-- Dependencies: 220
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (id, apellidopaterno, apellidomaterno, nombres, direccion, correo, telefono, empresas) FROM stdin;
1	Apellido1	ApellidoM1	Proveedor1	Calle 1	proveedor1@mail.com	5587023749	Empresa 1
2	Apellido2	ApellidoM2	Proveedor2	Calle 2	proveedor2@mail.com	5532235271	Empresa 2
3	Apellido3	ApellidoM3	Proveedor3	Calle 3	proveedor3@mail.com	5540727613	Empresa 3
4	Apellido4	ApellidoM4	Proveedor4	Calle 4	proveedor4@mail.com	5524234289	Empresa 4
5	Apellido5	ApellidoM5	Proveedor5	Calle 5	proveedor5@mail.com	5526177593	Empresa 5
6	Apellido6	ApellidoM6	Proveedor6	Calle 6	proveedor6@mail.com	5528811410	Empresa 6
7	Apellido7	ApellidoM7	Proveedor7	Calle 7	proveedor7@mail.com	5545754464	Empresa 7
8	Apellido8	ApellidoM8	Proveedor8	Calle 8	proveedor8@mail.com	5556113411	Empresa 8
9	Apellido9	ApellidoM9	Proveedor9	Calle 9	proveedor9@mail.com	5566289357	Empresa 9
10	Apellido10	ApellidoM10	Proveedor10	Calle 10	proveedor10@mail.com	5568938543	Empresa 10
11	Apellido11	ApellidoM11	Proveedor11	Calle 11	proveedor11@mail.com	5551352127	Empresa 11
12	Apellido12	ApellidoM12	Proveedor12	Calle 12	proveedor12@mail.com	5522950124	Empresa 12
13	Apellido13	ApellidoM13	Proveedor13	Calle 13	proveedor13@mail.com	5569684312	Empresa 13
14	Apellido14	ApellidoM14	Proveedor14	Calle 14	proveedor14@mail.com	5541339543	Empresa 14
15	Apellido15	ApellidoM15	Proveedor15	Calle 15	proveedor15@mail.com	5532036892	Empresa 15
16	Apellido16	ApellidoM16	Proveedor16	Calle 16	proveedor16@mail.com	5586389269	Empresa 16
17	Apellido17	ApellidoM17	Proveedor17	Calle 17	proveedor17@mail.com	5520911813	Empresa 17
18	Apellido18	ApellidoM18	Proveedor18	Calle 18	proveedor18@mail.com	5531232475	Empresa 18
19	Apellido19	ApellidoM19	Proveedor19	Calle 19	proveedor19@mail.com	5560003162	Empresa 19
20	Apellido20	ApellidoM20	Proveedor20	Calle 20	proveedor20@mail.com	5587942854	Empresa 20
21	Apellido21	ApellidoM21	Proveedor21	Calle 21	proveedor21@mail.com	5572342221	Empresa 21
22	Apellido22	ApellidoM22	Proveedor22	Calle 22	proveedor22@mail.com	5514110087	Empresa 22
23	Apellido23	ApellidoM23	Proveedor23	Calle 23	proveedor23@mail.com	5522084266	Empresa 23
24	Apellido24	ApellidoM24	Proveedor24	Calle 24	proveedor24@mail.com	5586492857	Empresa 24
25	Apellido25	ApellidoM25	Proveedor25	Calle 25	proveedor25@mail.com	5561832843	Empresa 25
26	Apellido26	ApellidoM26	Proveedor26	Calle 26	proveedor26@mail.com	5550637841	Empresa 26
27	Apellido27	ApellidoM27	Proveedor27	Calle 27	proveedor27@mail.com	5537755914	Empresa 27
28	Apellido28	ApellidoM28	Proveedor28	Calle 28	proveedor28@mail.com	5533730488	Empresa 28
29	Apellido29	ApellidoM29	Proveedor29	Calle 29	proveedor29@mail.com	5546150653	Empresa 29
30	Apellido30	ApellidoM30	Proveedor30	Calle 30	proveedor30@mail.com	5597036726	Empresa 30
31	Apellido31	ApellidoM31	Proveedor31	Calle 31	proveedor31@mail.com	5569147623	Empresa 31
32	Apellido32	ApellidoM32	Proveedor32	Calle 32	proveedor32@mail.com	5569883638	Empresa 32
33	Apellido33	ApellidoM33	Proveedor33	Calle 33	proveedor33@mail.com	5536453397	Empresa 33
34	Apellido34	ApellidoM34	Proveedor34	Calle 34	proveedor34@mail.com	5546077721	Empresa 34
35	Apellido35	ApellidoM35	Proveedor35	Calle 35	proveedor35@mail.com	5511821836	Empresa 35
36	Apellido36	ApellidoM36	Proveedor36	Calle 36	proveedor36@mail.com	5532000409	Empresa 36
37	Apellido37	ApellidoM37	Proveedor37	Calle 37	proveedor37@mail.com	5516598288	Empresa 37
38	Apellido38	ApellidoM38	Proveedor38	Calle 38	proveedor38@mail.com	5520308923	Empresa 38
39	Apellido39	ApellidoM39	Proveedor39	Calle 39	proveedor39@mail.com	5543158610	Empresa 39
40	Apellido40	ApellidoM40	Proveedor40	Calle 40	proveedor40@mail.com	5517009546	Empresa 40
41	Apellido41	ApellidoM41	Proveedor41	Calle 41	proveedor41@mail.com	5526134082	Empresa 41
42	Apellido42	ApellidoM42	Proveedor42	Calle 42	proveedor42@mail.com	5517731219	Empresa 42
43	Apellido43	ApellidoM43	Proveedor43	Calle 43	proveedor43@mail.com	5548034463	Empresa 43
44	Apellido44	ApellidoM44	Proveedor44	Calle 44	proveedor44@mail.com	5585941535	Empresa 44
45	Apellido45	ApellidoM45	Proveedor45	Calle 45	proveedor45@mail.com	5567913281	Empresa 45
46	Apellido46	ApellidoM46	Proveedor46	Calle 46	proveedor46@mail.com	5585105535	Empresa 46
47	Apellido47	ApellidoM47	Proveedor47	Calle 47	proveedor47@mail.com	5576986712	Empresa 47
48	Apellido48	ApellidoM48	Proveedor48	Calle 48	proveedor48@mail.com	5533887875	Empresa 48
49	Apellido49	ApellidoM49	Proveedor49	Calle 49	proveedor49@mail.com	5568950633	Empresa 49
50	Apellido50	ApellidoM50	Proveedor50	Calle 50	proveedor50@mail.com	5574715840	Empresa 50
51	Apellido1	ApellidoM1	Proveedor1	Calle 1	proveedor1@mail.com	5534324220	Empresa 1
52	Apellido2	ApellidoM2	Proveedor2	Calle 2	proveedor2@mail.com	5580160091	Empresa 2
53	Apellido3	ApellidoM3	Proveedor3	Calle 3	proveedor3@mail.com	5531799059	Empresa 3
54	Apellido4	ApellidoM4	Proveedor4	Calle 4	proveedor4@mail.com	5546919187	Empresa 4
55	Apellido5	ApellidoM5	Proveedor5	Calle 5	proveedor5@mail.com	5597858245	Empresa 5
56	Apellido6	ApellidoM6	Proveedor6	Calle 6	proveedor6@mail.com	5588815447	Empresa 6
57	Apellido7	ApellidoM7	Proveedor7	Calle 7	proveedor7@mail.com	5556944208	Empresa 7
58	Apellido8	ApellidoM8	Proveedor8	Calle 8	proveedor8@mail.com	5589499731	Empresa 8
59	Apellido9	ApellidoM9	Proveedor9	Calle 9	proveedor9@mail.com	5596290340	Empresa 9
60	Apellido10	ApellidoM10	Proveedor10	Calle 10	proveedor10@mail.com	5541413992	Empresa 10
61	Apellido11	ApellidoM11	Proveedor11	Calle 11	proveedor11@mail.com	5546559243	Empresa 11
62	Apellido12	ApellidoM12	Proveedor12	Calle 12	proveedor12@mail.com	5524753677	Empresa 12
63	Apellido13	ApellidoM13	Proveedor13	Calle 13	proveedor13@mail.com	5541599960	Empresa 13
64	Apellido14	ApellidoM14	Proveedor14	Calle 14	proveedor14@mail.com	5536944054	Empresa 14
65	Apellido15	ApellidoM15	Proveedor15	Calle 15	proveedor15@mail.com	5557016282	Empresa 15
66	Apellido16	ApellidoM16	Proveedor16	Calle 16	proveedor16@mail.com	5539795063	Empresa 16
67	Apellido17	ApellidoM17	Proveedor17	Calle 17	proveedor17@mail.com	5571459000	Empresa 17
68	Apellido18	ApellidoM18	Proveedor18	Calle 18	proveedor18@mail.com	5555459293	Empresa 18
69	Apellido19	ApellidoM19	Proveedor19	Calle 19	proveedor19@mail.com	5523485878	Empresa 19
70	Apellido20	ApellidoM20	Proveedor20	Calle 20	proveedor20@mail.com	5597335238	Empresa 20
71	Apellido21	ApellidoM21	Proveedor21	Calle 21	proveedor21@mail.com	5560186921	Empresa 21
72	Apellido22	ApellidoM22	Proveedor22	Calle 22	proveedor22@mail.com	5519173703	Empresa 22
73	Apellido23	ApellidoM23	Proveedor23	Calle 23	proveedor23@mail.com	5522148035	Empresa 23
74	Apellido24	ApellidoM24	Proveedor24	Calle 24	proveedor24@mail.com	5516685519	Empresa 24
75	Apellido25	ApellidoM25	Proveedor25	Calle 25	proveedor25@mail.com	5542559845	Empresa 25
76	Apellido26	ApellidoM26	Proveedor26	Calle 26	proveedor26@mail.com	5527181095	Empresa 26
77	Apellido27	ApellidoM27	Proveedor27	Calle 27	proveedor27@mail.com	5568871538	Empresa 27
78	Apellido28	ApellidoM28	Proveedor28	Calle 28	proveedor28@mail.com	5522551344	Empresa 28
79	Apellido29	ApellidoM29	Proveedor29	Calle 29	proveedor29@mail.com	5518103096	Empresa 29
80	Apellido30	ApellidoM30	Proveedor30	Calle 30	proveedor30@mail.com	5545841495	Empresa 30
81	Apellido31	ApellidoM31	Proveedor31	Calle 31	proveedor31@mail.com	5560181023	Empresa 31
82	Apellido32	ApellidoM32	Proveedor32	Calle 32	proveedor32@mail.com	5554660283	Empresa 32
83	Apellido33	ApellidoM33	Proveedor33	Calle 33	proveedor33@mail.com	5568404236	Empresa 33
84	Apellido34	ApellidoM34	Proveedor34	Calle 34	proveedor34@mail.com	5518329165	Empresa 34
85	Apellido35	ApellidoM35	Proveedor35	Calle 35	proveedor35@mail.com	5526190004	Empresa 35
86	Apellido36	ApellidoM36	Proveedor36	Calle 36	proveedor36@mail.com	5562190972	Empresa 36
87	Apellido37	ApellidoM37	Proveedor37	Calle 37	proveedor37@mail.com	5599681549	Empresa 37
88	Apellido38	ApellidoM38	Proveedor38	Calle 38	proveedor38@mail.com	5573391912	Empresa 38
89	Apellido39	ApellidoM39	Proveedor39	Calle 39	proveedor39@mail.com	5567361506	Empresa 39
90	Apellido40	ApellidoM40	Proveedor40	Calle 40	proveedor40@mail.com	5520044518	Empresa 40
91	Apellido41	ApellidoM41	Proveedor41	Calle 41	proveedor41@mail.com	5594170695	Empresa 41
92	Apellido42	ApellidoM42	Proveedor42	Calle 42	proveedor42@mail.com	5542484943	Empresa 42
93	Apellido43	ApellidoM43	Proveedor43	Calle 43	proveedor43@mail.com	5598541247	Empresa 43
94	Apellido44	ApellidoM44	Proveedor44	Calle 44	proveedor44@mail.com	5559295863	Empresa 44
95	Apellido45	ApellidoM45	Proveedor45	Calle 45	proveedor45@mail.com	5551975279	Empresa 45
96	Apellido46	ApellidoM46	Proveedor46	Calle 46	proveedor46@mail.com	5543664602	Empresa 46
97	Apellido47	ApellidoM47	Proveedor47	Calle 47	proveedor47@mail.com	5519144812	Empresa 47
98	Apellido48	ApellidoM48	Proveedor48	Calle 48	proveedor48@mail.com	5528827877	Empresa 48
99	Apellido49	ApellidoM49	Proveedor49	Calle 49	proveedor49@mail.com	5575833564	Empresa 49
100	Apellido50	ApellidoM50	Proveedor50	Calle 50	proveedor50@mail.com	5589242949	Empresa 50
\.


--
-- TOC entry 4876 (class 0 OID 123208)
-- Dependencies: 224
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id, idclientes, cantidad, idproducto, fechaventa) FROM stdin;
1	38	1	38	2026-04-22
2	33	8	38	2026-04-20
3	43	3	43	2026-04-09
4	11	10	4	2026-04-23
5	15	4	25	2026-04-27
6	15	1	28	2026-04-09
7	18	3	34	2026-04-26
8	2	10	42	2026-04-15
9	18	9	17	2026-04-27
10	50	7	46	2026-04-06
11	4	9	50	2026-04-17
12	13	7	45	2026-04-08
13	3	6	7	2026-04-21
14	16	1	39	2026-04-08
15	50	4	13	2026-04-26
16	11	4	13	2026-04-22
17	26	2	43	2026-05-03
18	17	9	29	2026-04-08
19	26	9	18	2026-04-07
20	23	4	7	2026-04-28
21	14	9	32	2026-05-02
22	48	1	17	2026-04-14
23	44	4	25	2026-04-21
24	26	10	20	2026-04-23
25	26	9	48	2026-05-03
26	21	4	16	2026-04-21
27	47	1	19	2026-04-20
28	23	3	23	2026-05-03
29	46	5	30	2026-04-29
30	10	7	1	2026-04-18
31	34	9	10	2026-04-07
32	17	8	27	2026-04-13
33	48	6	40	2026-04-30
34	26	7	37	2026-04-20
35	30	7	24	2026-05-01
36	40	5	9	2026-04-25
37	20	5	30	2026-04-23
38	28	3	10	2026-04-11
39	49	5	12	2026-04-09
40	45	5	23	2026-04-04
41	18	2	2	2026-04-07
42	12	4	29	2026-05-03
43	42	5	48	2026-05-02
44	39	9	21	2026-04-27
45	47	7	20	2026-04-27
46	2	1	37	2026-04-08
47	48	8	3	2026-04-21
48	50	9	10	2026-04-18
49	34	3	6	2026-04-28
50	5	4	25	2026-04-07
51	15	9	9	2026-04-05
52	50	4	24	2026-04-08
53	50	6	14	2026-04-09
54	38	4	48	2026-04-27
55	28	4	47	2026-04-10
56	21	7	47	2026-05-01
57	35	2	42	2026-04-05
58	21	4	14	2026-04-25
59	6	1	23	2026-04-26
60	21	2	3	2026-04-09
61	38	1	22	2026-04-19
62	32	6	44	2026-04-24
63	32	8	18	2026-05-02
64	23	3	4	2026-04-08
65	11	5	25	2026-04-21
66	45	9	39	2026-05-02
67	16	2	29	2026-04-13
68	41	1	31	2026-04-06
69	31	1	7	2026-04-12
70	2	9	6	2026-04-14
71	24	9	7	2026-04-25
72	46	6	2	2026-04-24
73	16	7	41	2026-04-06
74	20	3	35	2026-04-09
75	16	8	35	2026-04-25
76	21	4	12	2026-04-11
77	10	6	20	2026-04-09
78	32	2	32	2026-04-11
79	48	5	28	2026-04-28
80	20	9	14	2026-04-22
81	25	7	17	2026-05-02
82	15	9	20	2026-04-16
83	39	2	12	2026-04-24
84	8	5	7	2026-04-06
85	39	5	28	2026-04-20
86	47	10	2	2026-04-15
87	33	6	3	2026-04-10
88	7	5	36	2026-04-22
89	1	8	19	2026-04-15
90	47	10	10	2026-04-10
91	27	1	10	2026-04-13
92	16	2	23	2026-04-14
93	13	10	27	2026-04-18
94	8	5	33	2026-04-14
95	3	6	49	2026-04-25
96	17	5	26	2026-04-14
97	42	9	1	2026-04-24
98	8	10	17	2026-04-22
99	3	5	39	2026-04-09
100	25	6	38	2026-05-03
\.


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_seq', 100, true);


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 221
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_seq', 100, true);


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 219
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_id_seq', 100, true);


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 223
-- Name: ventas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_seq', 100, true);


--
-- TOC entry 4715 (class 2606 OID 123184)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 123213)
-- Name: ventas pk_idclientes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT pk_idclientes PRIMARY KEY (id, idproducto, idclientes);


--
-- TOC entry 4719 (class 2606 OID 123206)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 123193)
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id);


--
-- TOC entry 4722 (class 2606 OID 123214)
-- Name: ventas fk_idcliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_idcliente FOREIGN KEY (idclientes) REFERENCES public.clientes(id);


--
-- TOC entry 4723 (class 2606 OID 123219)
-- Name: ventas fk_idproductos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_idproductos FOREIGN KEY (idproducto) REFERENCES public.producto(id);


-- Completed on 2026-05-03 22:28:11

--
-- PostgreSQL database dump complete
--

\unrestrict SkCUJS1tIJeceEh51cU2PxYR7gudd4XOJzMW7vJa52XDn2L6a5T8AFG9OtYk8gF

