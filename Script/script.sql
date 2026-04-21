--
-- PostgreSQL database dump
--

\restrict 9CLAWhPYFHKXzwRgICaO3W7bk0gK1Ipyqb8YeaLqEH4sfZESigk3894G5tBvYub

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-04-21 22:37:08

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
-- TOC entry 228 (class 1259 OID 16472)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    phone_number bigint NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16471)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 227
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 226 (class 1259 OID 16443)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    id integer NOT NULL,
    shoe_id integer NOT NULL,
    seller_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    amount integer NOT NULL,
    customer_id integer NOT NULL,
    order_number integer NOT NULL,
    order_date date NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16442)
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_id_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 225
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;


--
-- TOC entry 222 (class 1259 OID 16421)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    role character varying(50) NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16420)
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sellers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sellers_id_seq OWNER TO postgres;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 221
-- Name: sellers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sellers_id_seq OWNED BY public.sellers.id;


--
-- TOC entry 220 (class 1259 OID 16409)
-- Name: shoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shoes (
    id integer NOT NULL,
    manufacturer character varying(20) NOT NULL,
    size integer NOT NULL,
    color character varying(20) NOT NULL,
    price numeric(20,2) NOT NULL,
    model character varying(50) NOT NULL,
    category character varying(20) NOT NULL
);


ALTER TABLE public.shoes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16408)
-- Name: shoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shoes_id_seq OWNER TO postgres;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 219
-- Name: shoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shoes_id_seq OWNED BY public.shoes.id;


--
-- TOC entry 224 (class 1259 OID 16431)
-- Name: warehouses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouses (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    address character varying(50) NOT NULL,
    capacity integer NOT NULL,
    shelves_amount integer NOT NULL
);


ALTER TABLE public.warehouses OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16430)
-- Name: warehouses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.warehouses_id_seq OWNER TO postgres;

--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 223
-- Name: warehouses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouses_id_seq OWNED BY public.warehouses.id;


--
-- TOC entry 4779 (class 2604 OID 16475)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 16446)
-- Name: sales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 16424)
-- Name: sellers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers ALTER COLUMN id SET DEFAULT nextval('public.sellers_id_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 16412)
-- Name: shoes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shoes ALTER COLUMN id SET DEFAULT nextval('public.shoes_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 16434)
-- Name: warehouses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses ALTER COLUMN id SET DEFAULT nextval('public.warehouses_id_seq'::regclass);


--
-- TOC entry 4950 (class 0 OID 16472)
-- Dependencies: 228
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, email, phone_number) FROM stdin;
1	Иван Петров	ivan@mail.com	79161234567
2	Мария Иванова	maria@yandex.ru	79261234568
3	Алексей Ким	a.kim@gmail.com	79361234569
4	Светлана Ветрова	svet@mail.com	79461234570
5	Дмитрий Соколов	d.sokolov@gmail.com	79561234571
6	Елена Прекрасная	lena.p@yandex.ru	79661234572
7	Артем Быстров	artem.bistrov@mail.com	79761234573
8	Виктория Романова	vika.r@gmail.com	79861234574
9	Григорий Львов	grigory.l@mail.com	79961234575
10	Алиса Селезнева	alice.s@yandex.ru	79031234576
11	Борис Громов	boris.grom@mail.com	79111234577
12	Николай Орлов	n.orlov@gmail.com	79211234578
13	Кристина Белова	kristina.b@mail.com	79311234579
14	Павел Морозов	p.morozov@yandex.ru	79411234580
15	Татьяна Воронова	tanya.v@mail.com	79511234581
16	Алиса Селецнева	alice.s@yandex.ru	79031234576
\.


--
-- TOC entry 4948 (class 0 OID 16443)
-- Dependencies: 226
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (id, shoe_id, seller_id, warehouse_id, amount, customer_id, order_number, order_date) FROM stdin;
1	1	1	1	1	1	101	2023-10-25
2	2	1	1	1	1	101	2023-10-25
3	3	2	1	1	2	102	2023-10-25
4	4	1	2	1	1	103	2023-10-26
5	1	2	1	2	3	104	2023-10-26
6	6	2	1	1	3	104	2023-10-26
7	7	1	3	1	2	105	2023-10-27
8	6	3	1	1	4	106	2023-10-28
9	8	2	2	1	5	107	2023-10-28
10	3	1	1	1	3	108	2023-10-29
11	10	3	3	1	6	109	2023-10-29
12	2	2	1	1	1	110	2023-10-30
13	1	1	1	1	7	111	2023-10-30
14	12	3	3	1	8	112	2023-10-31
15	7	1	3	1	4	113	2023-11-01
16	14	2	1	1	9	114	2023-11-01
17	4	3	2	1	5	115	2023-11-02
18	6	1	1	1	10	116	2023-11-02
19	1	2	1	1	2	117	2023-11-03
20	8	3	2	1	11	118	2023-11-03
21	10	1	3	1	6	119	2023-11-04
22	2	2	1	2	12	120	2023-11-04
23	21	3	1	1	7	121	2023-11-05
24	12	1	3	1	13	122	2023-11-05
25	3	2	1	1	8	123	2023-11-06
26	14	3	1	1	3	124	2023-11-06
27	4	1	2	1	14	125	2023-11-07
28	7	2	3	1	9	126	2023-11-07
29	6	3	1	1	15	127	2023-11-08
30	1	1	1	1	16	128	2023-11-08
31	8	2	2	1	1	129	2023-11-09
32	10	3	3	1	11	130	2023-11-09
\.


--
-- TOC entry 4944 (class 0 OID 16421)
-- Dependencies: 222
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sellers (id, name, role) FROM stdin;
1	Анна Сидорова	Старший продавец
2	Петр Кузнецов	Продавец
3	Ольга Новикова	Продавец-консультант
\.


--
-- TOC entry 4942 (class 0 OID 16409)
-- Dependencies: 220
-- Data for Name: shoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shoes (id, manufacturer, size, color, price, model, category) FROM stdin;
1	SportBrand	42	Черный	5500.00	Кроссовки "Runner Pro"	Спортивная
2	StreetStyle	43	Красный	3200.00	Кеды "Street"	Повседневная
3	ElegantStyle	38	Бежевый	7200.00	Туфли "Elegance"	Классическая
4	WarmFoot	43	Коричневый	8900.00	Сапоги "Winter Warm"	Зимняя
5	SportBrand	44	Синий	5500.00	Кроссовки "Runner Pro"	Спортивная
6	CitySteps	39	Черный	6100.00	Лоферы "Comfort"	Повседневная
7	SummerFeel	37	Белый	4800.00	Босоножки "Summer"	Летняя
8	Outventure	45	Зеленый	7800.00	Ботинки "Trekker"	Туристическая
9	ElegantStyle	39	Черный	7200.00	Туфли "Elegance"	Классическая
10	UrbanWalk	36	Серый	6700.00	Сапоги "City"	Осенняя
11	SportBrand	41	Черный	5500.00	Кроссовки "Runner Pro"	Спортивная
12	ElegantStyle	35	Серебро	12500.00	Туфли "Вечерние"	Вечерняя
13	SummerFeel	38	Золотой	4800.00	Босоножки "Summer"	Летняя
14	BusinessLook	44	Коричневый	8400.00	Мокасины "Leader"	Классическая
15	WarmFoot	44	Черный	8900.00	Сапоги "Winter Warm"	Зимняя
16	CitySteps	37	Коричневый	6100.00	Лоферы "Comfort"	Повседневная
17	SportBrand	39	Белый	5500.00	Кроссовки "Runner Pro"	Спортивная
18	Outventure	46	Коричневый	7800.00	Ботинки "Trekker"	Туристическая
19	UrbanWalk	36	Черный	6700.00	Сапоги "City"	Осенняя
20	StreetStyle	42	Синий	3200.00	Кеды "Street"	Повседневная
21	CozyHome	43	Синий	1500.00	Тапочки "Home"	Домашняя
22	ElegantStyle	34	Золотой	12500.00	Туфли "Вечерние"	Вечерняя
23	ElegantStyle	36	Бежевый	7200.00	Туфли "Elegance"	Классическая
24	BusinessLook	43	Черный	8400.00	Мокасины "Leader"	Классическая
25	WarmFoot	42	Коричневый	8900.00	Сапоги "Winter Warm"	Зимняя
26	SummerFeel	45	Белый	4800.00	Босоножки "Summer"	Летняя
27	CitySteps	38	Черный	6100.00	Лоферы "Comfort"	Повседневная
28	SportBrand	38	Розовый	5500.00	Кроссовки "Runner Pro"	Спортивная
29	Outventure	44	Зеленый	7800.00	Ботинки "Trekker"	Туристическая
30	UrbanWalk	45	Коричневый	6700.00	Сапоги "City"	Осенняя
\.


--
-- TOC entry 4946 (class 0 OID 16431)
-- Dependencies: 224
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.warehouses (id, name, address, capacity, shelves_amount) FROM stdin;
1	Центральный	ул. Промышленная, 15	10000	50
2	Северный	ул. Лесная, 8	8000	40
3	Южный	пр. Солнечный, 25	12000	60
\.


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 227
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 16, true);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 225
-- Name: sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_id_seq', 32, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 221
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 3, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 219
-- Name: shoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shoes_id_seq', 30, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 223
-- Name: warehouses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouses_id_seq', 3, true);


--
-- TOC entry 4789 (class 2606 OID 16481)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4787 (class 2606 OID 16453)
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 16429)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 4781 (class 2606 OID 16419)
-- Name: shoes shoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_pkey PRIMARY KEY (id);


--
-- TOC entry 4785 (class 2606 OID 16441)
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (id);


--
-- TOC entry 4790 (class 2606 OID 16485)
-- Name: sales sales_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 4791 (class 2606 OID 16459)
-- Name: sales sales_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4792 (class 2606 OID 16454)
-- Name: sales sales_shoe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_shoe_id_fkey FOREIGN KEY (shoe_id) REFERENCES public.shoes(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4793 (class 2606 OID 16464)
-- Name: sales sales_warehouse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2026-04-21 22:37:08

--
-- PostgreSQL database dump complete
--

\unrestrict 9CLAWhPYFHKXzwRgICaO3W7bk0gK1Ipyqb8YeaLqEH4sfZESigk3894G5tBvYub

