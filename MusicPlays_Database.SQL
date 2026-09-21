--
-- PostgreSQL database dump
--

\restrict CjBleas2qyVnDxhWDvaZbfll44uCHlAxUCu8WGSbwPzRN5aSrTQsLs5HYYI71ii

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

-- Started on 2026-09-21 08:37:53

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
-- TOC entry 219 (class 1259 OID 16625)
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    id_album integer NOT NULL,
    titulo character varying(150),
    fecha_lanzamiento date,
    tipo character varying(20),
    imagen_portada character varying(255),
    id_artista integer
);


ALTER TABLE public.album OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16662)
-- Name: album_cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album_cancion (
    id_album integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public.album_cancion OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16613)
-- Name: artista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artista (
    id_artista integer NOT NULL,
    nombre_artistico character varying(100),
    biografia text,
    pais_origen character varying(100),
    fecha_debut date
);


ALTER TABLE public.artista OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16647)
-- Name: artista_cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artista_cancion (
    id_artista integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public.artista_cancion OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16620)
-- Name: cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cancion (
    id_cancion integer NOT NULL,
    titulo character varying(150),
    duracion time without time zone,
    "año_lanzamiento" integer,
    genero character varying(50),
    archivo_audio character varying(255)
);


ALTER TABLE public.cancion OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16752)
-- Name: me_gusta_album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.me_gusta_album (
    id_usuario integer NOT NULL,
    id_album integer NOT NULL
);


ALTER TABLE public.me_gusta_album OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16737)
-- Name: me_gusta_cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.me_gusta_cancion (
    id_usuario integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public.me_gusta_cancion OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16767)
-- Name: me_gusta_playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.me_gusta_playlist (
    id_usuario integer NOT NULL,
    id_playlist integer NOT NULL
);


ALTER TABLE public.me_gusta_playlist OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16594)
-- Name: plan_membresia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan_membresia (
    id_plan integer NOT NULL,
    nombre character varying(50),
    precio numeric(10,2),
    caracteristicas text
);


ALTER TABLE public.plan_membresia OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16635)
-- Name: playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist (
    id_playlist integer NOT NULL,
    nombre character varying(100),
    fecha_creacion date,
    descripcion text,
    publica boolean,
    id_usuario integer
);


ALTER TABLE public.playlist OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16677)
-- Name: playlist_cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist_cancion (
    id_playlist integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public.playlist_cancion OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16722)
-- Name: reproducion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reproducion (
    id_reproduccion integer NOT NULL,
    id_usuario integer,
    id_cancion integer,
    fecha_hora timestamp without time zone,
    duracion_escucha interval
);


ALTER TABLE public.reproducion OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16707)
-- Name: seguidor_artista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seguidor_artista (
    id_usuario integer NOT NULL,
    id_artista integer NOT NULL
);


ALTER TABLE public.seguidor_artista OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16692)
-- Name: seguidor_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seguidor_usuario (
    id_seguidor integer NOT NULL,
    id_seguido integer NOT NULL
);


ALTER TABLE public.seguidor_usuario OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16601)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying(100),
    correo character varying(150),
    contrasena character varying(255),
    fecha_nacimiento date,
    id_plan integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 4988 (class 0 OID 16625)
-- Dependencies: 219
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (id_album, titulo, fecha_lanzamiento, tipo, imagen_portada, id_artista) FROM stdin;
1	Reflejos	2020-08-10	Álbum	reflejos.jpg	1
2	Rutas	2019-11-05	Álbum	rutas.jpg	2
3	Sencillo Fuego	2021-01-15	Single	fuego.jpg	3
\.


--
-- TOC entry 4991 (class 0 OID 16662)
-- Dependencies: 222
-- Data for Name: album_cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album_cancion (id_album, id_cancion) FROM stdin;
1	1
1	4
2	2
3	3
\.


--
-- TOC entry 4986 (class 0 OID 16613)
-- Dependencies: 217
-- Data for Name: artista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artista (id_artista, nombre_artistico, biografia, pais_origen, fecha_debut) FROM stdin;
1	Luna Nocturna	Cantante de pop alternativo	Argentina	2015-06-01
2	Los Fugitivos	Banda de rock nacional	Argentina	2010-09-15
3	Marco Ríos	Solista de género urbano	España	2018-02-20
\.


--
-- TOC entry 4990 (class 0 OID 16647)
-- Dependencies: 221
-- Data for Name: artista_cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artista_cancion (id_artista, id_cancion) FROM stdin;
1	1
1	4
2	2
3	3
\.


--
-- TOC entry 4987 (class 0 OID 16620)
-- Dependencies: 218
-- Data for Name: cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cancion (id_cancion, titulo, duracion, "año_lanzamiento", genero, archivo_audio) FROM stdin;
1	Noche Eterna	00:03:45	2020	Pop	noche_eterna.mp3
2	Camino al Sur	00:04:10	2019	Rock	camino_sur.mp3
3	Fuego Lento	00:03:20	2021	Urbano	fuego_lento.mp3
4	Bajo la Luna	00:03:55	2020	Pop	bajo_luna.mp3
\.


--
-- TOC entry 4997 (class 0 OID 16752)
-- Dependencies: 228
-- Data for Name: me_gusta_album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.me_gusta_album (id_usuario, id_album) FROM stdin;
1	1
2	2
3	3
4	1
\.


--
-- TOC entry 4996 (class 0 OID 16737)
-- Dependencies: 227
-- Data for Name: me_gusta_cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.me_gusta_cancion (id_usuario, id_cancion) FROM stdin;
1	1
1	3
2	2
3	4
4	1
\.


--
-- TOC entry 4998 (class 0 OID 16767)
-- Dependencies: 229
-- Data for Name: me_gusta_playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.me_gusta_playlist (id_usuario, id_playlist) FROM stdin;
1	2
2	3
3	1
4	2
\.


--
-- TOC entry 4984 (class 0 OID 16594)
-- Dependencies: 215
-- Data for Name: plan_membresia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plan_membresia (id_plan, nombre, precio, caracteristicas) FROM stdin;
1	Free	0.00	Con anuncios, calidad estándar
2	Premium	4.99	Sin anuncios, alta calidad, descargas offline
3	Familiar	7.99	Hasta 6 cuentas, sin anuncios
\.


--
-- TOC entry 4989 (class 0 OID 16635)
-- Dependencies: 220
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playlist (id_playlist, nombre, fecha_creacion, descripcion, publica, id_usuario) FROM stdin;
1	Mis Favoritas	2023-01-10	Canciones que más escucho	t	1
2	Para Estudiar	2023-02-05	Música tranquila	f	2
3	Fiesta	2023-03-01	Para bailar	t	3
\.


--
-- TOC entry 4992 (class 0 OID 16677)
-- Dependencies: 223
-- Data for Name: playlist_cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playlist_cancion (id_playlist, id_cancion) FROM stdin;
1	1
1	2
2	4
3	3
\.


--
-- TOC entry 4995 (class 0 OID 16722)
-- Dependencies: 226
-- Data for Name: reproducion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reproducion (id_reproduccion, id_usuario, id_cancion, fecha_hora, duracion_escucha) FROM stdin;
1	1	1	2023-05-01 14:30:00	00:03:45
2	2	2	2023-05-01 15:00:00	00:04:10
3	3	3	2023-05-02 09:20:00	00:03:20
4	1	4	2023-05-02 18:45:00	00:03:55
5	4	1	2023-05-03 10:10:00	00:01:30
\.


--
-- TOC entry 4994 (class 0 OID 16707)
-- Dependencies: 225
-- Data for Name: seguidor_artista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seguidor_artista (id_usuario, id_artista) FROM stdin;
1	1
1	2
2	3
3	1
\.


--
-- TOC entry 4993 (class 0 OID 16692)
-- Dependencies: 224
-- Data for Name: seguidor_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seguidor_usuario (id_seguidor, id_seguido) FROM stdin;
1	2
2	3
3	1
4	1
\.


--
-- TOC entry 4985 (class 0 OID 16601)
-- Dependencies: 216
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nombre, correo, contrasena, fecha_nacimiento, id_plan) FROM stdin;
1	Juan Pérez	juan@mail.com	hash123	1998-05-14	2
2	Ana Gómez	ana@mail.com	hash456	2001-11-02	1
3	Lucía Fernández	lucia@mail.com	hash789	1995-03-20	3
4	Martín Silva	martin@mail.com	hash000	1999-07-08	1
\.


--
-- TOC entry 4805 (class 2606 OID 16666)
-- Name: album_cancion album_cancion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_cancion
    ADD CONSTRAINT album_cancion_pk PRIMARY KEY (id_album, id_cancion);


--
-- TOC entry 4799 (class 2606 OID 16629)
-- Name: album album_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pk PRIMARY KEY (id_album);


--
-- TOC entry 4803 (class 2606 OID 16651)
-- Name: artista_cancion artista_cancion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista_cancion
    ADD CONSTRAINT artista_cancion_pk PRIMARY KEY (id_artista, id_cancion);


--
-- TOC entry 4795 (class 2606 OID 16619)
-- Name: artista artista_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista
    ADD CONSTRAINT artista_pk PRIMARY KEY (id_artista);


--
-- TOC entry 4797 (class 2606 OID 16624)
-- Name: cancion cancion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cancion
    ADD CONSTRAINT cancion_pk PRIMARY KEY (id_cancion);


--
-- TOC entry 4817 (class 2606 OID 16756)
-- Name: me_gusta_album me_gusta_album_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_album
    ADD CONSTRAINT me_gusta_album_pk PRIMARY KEY (id_usuario, id_album);


--
-- TOC entry 4815 (class 2606 OID 16741)
-- Name: me_gusta_cancion me_gusta_cancion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_cancion
    ADD CONSTRAINT me_gusta_cancion_pk PRIMARY KEY (id_usuario, id_cancion);


--
-- TOC entry 4819 (class 2606 OID 16771)
-- Name: me_gusta_playlist me_gusta_playlist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_playlist
    ADD CONSTRAINT me_gusta_playlist_pk PRIMARY KEY (id_usuario, id_playlist);


--
-- TOC entry 4791 (class 2606 OID 16600)
-- Name: plan_membresia plan_membresia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_membresia
    ADD CONSTRAINT plan_membresia_pk PRIMARY KEY (id_plan);


--
-- TOC entry 4807 (class 2606 OID 16681)
-- Name: playlist_cancion playlist_cancion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT playlist_cancion_pk PRIMARY KEY (id_playlist, id_cancion);


--
-- TOC entry 4801 (class 2606 OID 16641)
-- Name: playlist playlist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pk PRIMARY KEY (id_playlist);


--
-- TOC entry 4813 (class 2606 OID 16726)
-- Name: reproducion reproducion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reproducion
    ADD CONSTRAINT reproducion_pk PRIMARY KEY (id_reproduccion);


--
-- TOC entry 4811 (class 2606 OID 16711)
-- Name: seguidor_artista seguidor_artista_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_artista
    ADD CONSTRAINT seguidor_artista_pk PRIMARY KEY (id_usuario, id_artista);


--
-- TOC entry 4809 (class 2606 OID 16696)
-- Name: seguidor_usuario seguidor_usuario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_usuario
    ADD CONSTRAINT seguidor_usuario_pk PRIMARY KEY (id_seguidor, id_seguido);


--
-- TOC entry 4793 (class 2606 OID 16607)
-- Name: usuario usuario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (id_usuario);


--
-- TOC entry 4825 (class 2606 OID 16667)
-- Name: album_cancion album_cancion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_cancion
    ADD CONSTRAINT album_cancion_fk1 FOREIGN KEY (id_album) REFERENCES public.album(id_album);


--
-- TOC entry 4826 (class 2606 OID 16672)
-- Name: album_cancion album_cancion_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_cancion
    ADD CONSTRAINT album_cancion_fk2 FOREIGN KEY (id_cancion) REFERENCES public.cancion(id_cancion);


--
-- TOC entry 4821 (class 2606 OID 16630)
-- Name: album album_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_fk FOREIGN KEY (id_artista) REFERENCES public.artista(id_artista);


--
-- TOC entry 4823 (class 2606 OID 16652)
-- Name: artista_cancion artista_cancion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista_cancion
    ADD CONSTRAINT artista_cancion_fk1 FOREIGN KEY (id_artista) REFERENCES public.artista(id_artista);


--
-- TOC entry 4824 (class 2606 OID 16657)
-- Name: artista_cancion artista_cancion_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artista_cancion
    ADD CONSTRAINT artista_cancion_fk2 FOREIGN KEY (id_cancion) REFERENCES public.cancion(id_cancion);


--
-- TOC entry 4837 (class 2606 OID 16757)
-- Name: me_gusta_album me_gusta_album_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_album
    ADD CONSTRAINT me_gusta_album_fk1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4838 (class 2606 OID 16762)
-- Name: me_gusta_album me_gusta_album_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_album
    ADD CONSTRAINT me_gusta_album_fk2 FOREIGN KEY (id_album) REFERENCES public.album(id_album);


--
-- TOC entry 4835 (class 2606 OID 16742)
-- Name: me_gusta_cancion me_gusta_cancion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_cancion
    ADD CONSTRAINT me_gusta_cancion_fk1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4836 (class 2606 OID 16747)
-- Name: me_gusta_cancion me_gusta_cancion_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_cancion
    ADD CONSTRAINT me_gusta_cancion_fk2 FOREIGN KEY (id_cancion) REFERENCES public.cancion(id_cancion);


--
-- TOC entry 4839 (class 2606 OID 16772)
-- Name: me_gusta_playlist me_gusta_playlist_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_playlist
    ADD CONSTRAINT me_gusta_playlist_fk1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4840 (class 2606 OID 16777)
-- Name: me_gusta_playlist me_gusta_playlist_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.me_gusta_playlist
    ADD CONSTRAINT me_gusta_playlist_fk2 FOREIGN KEY (id_playlist) REFERENCES public.playlist(id_playlist);


--
-- TOC entry 4827 (class 2606 OID 16682)
-- Name: playlist_cancion playlist_cancion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT playlist_cancion_fk1 FOREIGN KEY (id_playlist) REFERENCES public.playlist(id_playlist);


--
-- TOC entry 4828 (class 2606 OID 16687)
-- Name: playlist_cancion playlist_cancion_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist_cancion
    ADD CONSTRAINT playlist_cancion_fk2 FOREIGN KEY (id_cancion) REFERENCES public.cancion(id_cancion);


--
-- TOC entry 4822 (class 2606 OID 16642)
-- Name: playlist playlist_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_fk FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4833 (class 2606 OID 16727)
-- Name: reproducion reproducion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reproducion
    ADD CONSTRAINT reproducion_fk1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4834 (class 2606 OID 16732)
-- Name: reproducion reproducion_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reproducion
    ADD CONSTRAINT reproducion_fk2 FOREIGN KEY (id_cancion) REFERENCES public.cancion(id_cancion);


--
-- TOC entry 4831 (class 2606 OID 16712)
-- Name: seguidor_artista seguidor_artista_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_artista
    ADD CONSTRAINT seguidor_artista_fk1 FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4832 (class 2606 OID 16717)
-- Name: seguidor_artista seguidor_artista_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_artista
    ADD CONSTRAINT seguidor_artista_fk2 FOREIGN KEY (id_artista) REFERENCES public.artista(id_artista);


--
-- TOC entry 4829 (class 2606 OID 16697)
-- Name: seguidor_usuario seguidor_usuario_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_usuario
    ADD CONSTRAINT seguidor_usuario_fk1 FOREIGN KEY (id_seguidor) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4830 (class 2606 OID 16702)
-- Name: seguidor_usuario seguidor_usuario_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seguidor_usuario
    ADD CONSTRAINT seguidor_usuario_fk2 FOREIGN KEY (id_seguido) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 4820 (class 2606 OID 16608)
-- Name: usuario usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_fk FOREIGN KEY (id_plan) REFERENCES public.plan_membresia(id_plan);


-- Completed on 2026-09-21 08:37:53

--
-- PostgreSQL database dump complete
--

\unrestrict CjBleas2qyVnDxhWDvaZbfll44uCHlAxUCu8WGSbwPzRN5aSrTQsLs5HYYI71ii

