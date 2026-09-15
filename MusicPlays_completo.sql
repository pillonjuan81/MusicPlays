--
-- PostgreSQL database dump
--

\restrict 4QgFh8c77iDm1mf3r46uqbVa9IZgE07hBoh8PXHvOVWgvSE2xeOGYgTuvfnKgMU

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

-- Started on 2026-09-15 01:09:05

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
-- TOC entry 219 (class 1259 OID 16429)
-- Name: Album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Album" (
    id_album integer NOT NULL,
    titulo character varying(150),
    fecha_lanzamiento date,
    tipo character varying(20),
    imagen_portada character varying(255),
    id_artista integer
);


ALTER TABLE public."Album" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16466)
-- Name: Album_Cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Album_Cancion" (
    id_album integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public."Album_Cancion" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16417)
-- Name: Artista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Artista" (
    id_artista integer NOT NULL,
    nombre_artistico character varying(100),
    biografia text,
    pais_origen character varying(100),
    fecha_debut date
);


ALTER TABLE public."Artista" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16451)
-- Name: Artista_Cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Artista_Cancion" (
    id_artista integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public."Artista_Cancion" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16424)
-- Name: Cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cancion" (
    id_cancion integer NOT NULL,
    titulo character varying(150),
    duracion time without time zone,
    fecha_lanzamiento integer,
    genero character varying(50),
    archivo_audio character varying(255)
);


ALTER TABLE public."Cancion" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16556)
-- Name: Me_Gusta_Album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Me_Gusta_Album" (
    id_usuario integer NOT NULL,
    id_album integer NOT NULL
);


ALTER TABLE public."Me_Gusta_Album" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16541)
-- Name: Me_Gusta_Cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Me_Gusta_Cancion" (
    id_usuario integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public."Me_Gusta_Cancion" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16571)
-- Name: Me_Gusta_Playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Me_Gusta_Playlist" (
    id_usuario integer NOT NULL,
    id_playlist integer NOT NULL
);


ALTER TABLE public."Me_Gusta_Playlist" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16398)
-- Name: Plan_Membresia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Plan_Membresia" (
    id_plan integer NOT NULL,
    nombre character varying(50),
    precio numeric(10,2),
    caracteristicas text
);


ALTER TABLE public."Plan_Membresia" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16439)
-- Name: Playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Playlist" (
    id_playlist integer NOT NULL,
    nombre character varying(100),
    fecha_creacion date,
    descripcion text,
    publica boolean,
    id_usuario integer
);


ALTER TABLE public."Playlist" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16481)
-- Name: Playlist_Cancion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Playlist_Cancion" (
    id_playlist integer NOT NULL,
    id_cancion integer NOT NULL
);


ALTER TABLE public."Playlist_Cancion" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16526)
-- Name: Reproduccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Reproduccion" (
    id_reproduccion integer NOT NULL,
    id_usuario integer,
    id_cancion integer,
    fecha_hora timestamp without time zone,
    duracion_escucha interval
);


ALTER TABLE public."Reproduccion" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16511)
-- Name: Seguidor_Artista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Seguidor_Artista" (
    id_usuario integer NOT NULL,
    id_artista integer NOT NULL
);


ALTER TABLE public."Seguidor_Artista" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16496)
-- Name: Seguidor_Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Seguidor_Usuario" (
    id_seguidor integer NOT NULL,
    id_seguido integer NOT NULL
);


ALTER TABLE public."Seguidor_Usuario" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16405)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    id_usuario integer NOT NULL,
    nombre character varying(100),
    correo character varying(150),
    contrasena character varying(255),
    fecha_nacimiento date,
    id_plan integer
);


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 4988 (class 0 OID 16429)
-- Dependencies: 219
-- Data for Name: Album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Album" (id_album, titulo, fecha_lanzamiento, tipo, imagen_portada, id_artista) FROM stdin;
\.


--
-- TOC entry 4991 (class 0 OID 16466)
-- Dependencies: 222
-- Data for Name: Album_Cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Album_Cancion" (id_album, id_cancion) FROM stdin;
\.


--
-- TOC entry 4986 (class 0 OID 16417)
-- Dependencies: 217
-- Data for Name: Artista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Artista" (id_artista, nombre_artistico, biografia, pais_origen, fecha_debut) FROM stdin;
\.


--
-- TOC entry 4990 (class 0 OID 16451)
-- Dependencies: 221
-- Data for Name: Artista_Cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Artista_Cancion" (id_artista, id_cancion) FROM stdin;
\.


--
-- TOC entry 4987 (class 0 OID 16424)
-- Dependencies: 218
-- Data for Name: Cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Cancion" (id_cancion, titulo, duracion, fecha_lanzamiento, genero, archivo_audio) FROM stdin;
\.


--
-- TOC entry 4997 (class 0 OID 16556)
-- Dependencies: 228
-- Data for Name: Me_Gusta_Album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Me_Gusta_Album" (id_usuario, id_album) FROM stdin;
\.


--
-- TOC entry 4996 (class 0 OID 16541)
-- Dependencies: 227
-- Data for Name: Me_Gusta_Cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Me_Gusta_Cancion" (id_usuario, id_cancion) FROM stdin;
\.


--
-- TOC entry 4998 (class 0 OID 16571)
-- Dependencies: 229
-- Data for Name: Me_Gusta_Playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Me_Gusta_Playlist" (id_usuario, id_playlist) FROM stdin;
\.


--
-- TOC entry 4984 (class 0 OID 16398)
-- Dependencies: 215
-- Data for Name: Plan_Membresia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Plan_Membresia" (id_plan, nombre, precio, caracteristicas) FROM stdin;
\.


--
-- TOC entry 4989 (class 0 OID 16439)
-- Dependencies: 220
-- Data for Name: Playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Playlist" (id_playlist, nombre, fecha_creacion, descripcion, publica, id_usuario) FROM stdin;
\.


--
-- TOC entry 4992 (class 0 OID 16481)
-- Dependencies: 223
-- Data for Name: Playlist_Cancion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Playlist_Cancion" (id_playlist, id_cancion) FROM stdin;
\.


--
-- TOC entry 4995 (class 0 OID 16526)
-- Dependencies: 226
-- Data for Name: Reproduccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reproduccion" (id_reproduccion, id_usuario, id_cancion, fecha_hora, duracion_escucha) FROM stdin;
\.


--
-- TOC entry 4994 (class 0 OID 16511)
-- Dependencies: 225
-- Data for Name: Seguidor_Artista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Seguidor_Artista" (id_usuario, id_artista) FROM stdin;
\.


--
-- TOC entry 4993 (class 0 OID 16496)
-- Dependencies: 224
-- Data for Name: Seguidor_Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Seguidor_Usuario" (id_seguidor, id_seguido) FROM stdin;
\.


--
-- TOC entry 4985 (class 0 OID 16405)
-- Dependencies: 216
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario" (id_usuario, nombre, correo, contrasena, fecha_nacimiento, id_plan) FROM stdin;
\.


--
-- TOC entry 4805 (class 2606 OID 16470)
-- Name: Album_Cancion Album_Cancion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album_Cancion"
    ADD CONSTRAINT "Album_Cancion_PK" PRIMARY KEY (id_album, id_cancion);


--
-- TOC entry 4799 (class 2606 OID 16433)
-- Name: Album Album_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album"
    ADD CONSTRAINT "Album_PK" PRIMARY KEY (id_album);


--
-- TOC entry 4803 (class 2606 OID 16455)
-- Name: Artista_Cancion Artista_Cancion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artista_Cancion"
    ADD CONSTRAINT "Artista_Cancion_PK" PRIMARY KEY (id_artista, id_cancion);


--
-- TOC entry 4795 (class 2606 OID 16423)
-- Name: Artista Artista_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artista"
    ADD CONSTRAINT "Artista_PK" PRIMARY KEY (id_artista);


--
-- TOC entry 4797 (class 2606 OID 16428)
-- Name: Cancion Cancion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cancion"
    ADD CONSTRAINT "Cancion_PK" PRIMARY KEY (id_cancion);


--
-- TOC entry 4817 (class 2606 OID 16560)
-- Name: Me_Gusta_Album Me_Gusta_Album_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Album"
    ADD CONSTRAINT "Me_Gusta_Album_PK" PRIMARY KEY (id_usuario, id_album);


--
-- TOC entry 4815 (class 2606 OID 16545)
-- Name: Me_Gusta_Cancion Me_Gusta_Cancion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Cancion"
    ADD CONSTRAINT "Me_Gusta_Cancion_PK" PRIMARY KEY (id_usuario, id_cancion);


--
-- TOC entry 4819 (class 2606 OID 16575)
-- Name: Me_Gusta_Playlist Me_Gusta_Playlist_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Playlist"
    ADD CONSTRAINT "Me_Gusta_Playlist_PK" PRIMARY KEY (id_usuario, id_playlist);


--
-- TOC entry 4791 (class 2606 OID 16404)
-- Name: Plan_Membresia Plan_Membresia_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plan_Membresia"
    ADD CONSTRAINT "Plan_Membresia_PK" PRIMARY KEY (id_plan);


--
-- TOC entry 4807 (class 2606 OID 16485)
-- Name: Playlist_Cancion Playlist_Cancion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Playlist_Cancion"
    ADD CONSTRAINT "Playlist_Cancion_PK" PRIMARY KEY (id_playlist, id_cancion);


--
-- TOC entry 4801 (class 2606 OID 16445)
-- Name: Playlist Playlist_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Playlist"
    ADD CONSTRAINT "Playlist_PK" PRIMARY KEY (id_playlist);


--
-- TOC entry 4813 (class 2606 OID 16530)
-- Name: Reproduccion Reproduccion_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reproduccion"
    ADD CONSTRAINT "Reproduccion_PK" PRIMARY KEY (id_reproduccion);


--
-- TOC entry 4811 (class 2606 OID 16515)
-- Name: Seguidor_Artista Seguidor_Artista_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Artista"
    ADD CONSTRAINT "Seguidor_Artista_PK" PRIMARY KEY (id_usuario, id_artista);


--
-- TOC entry 4809 (class 2606 OID 16500)
-- Name: Seguidor_Usuario Seguidor_Usuario_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Usuario"
    ADD CONSTRAINT "Seguidor_Usuario_PK" PRIMARY KEY (id_seguidor, id_seguido);


--
-- TOC entry 4793 (class 2606 OID 16411)
-- Name: Usuario Usuario_PK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_PK" PRIMARY KEY (id_usuario);


--
-- TOC entry 4825 (class 2606 OID 16471)
-- Name: Album_Cancion Album_Cancion_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album_Cancion"
    ADD CONSTRAINT "Album_Cancion_FK1" FOREIGN KEY (id_album) REFERENCES public."Album"(id_album);


--
-- TOC entry 4826 (class 2606 OID 16476)
-- Name: Album_Cancion Album_Cancion_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album_Cancion"
    ADD CONSTRAINT "Album_Cancion_FK2" FOREIGN KEY (id_cancion) REFERENCES public."Cancion"(id_cancion);


--
-- TOC entry 4821 (class 2606 OID 16434)
-- Name: Album Album_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Album"
    ADD CONSTRAINT "Album_FK" FOREIGN KEY (id_artista) REFERENCES public."Artista"(id_artista);


--
-- TOC entry 4823 (class 2606 OID 16456)
-- Name: Artista_Cancion Artista_Cancion_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artista_Cancion"
    ADD CONSTRAINT "Artista_Cancion_FK1" FOREIGN KEY (id_artista) REFERENCES public."Artista"(id_artista);


--
-- TOC entry 4824 (class 2606 OID 16461)
-- Name: Artista_Cancion Artista_Cancion_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Artista_Cancion"
    ADD CONSTRAINT "Artista_Cancion_FK2" FOREIGN KEY (id_cancion) REFERENCES public."Cancion"(id_cancion);


--
-- TOC entry 4837 (class 2606 OID 16561)
-- Name: Me_Gusta_Album Me_Gusta_Album_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Album"
    ADD CONSTRAINT "Me_Gusta_Album_FK1" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4838 (class 2606 OID 16566)
-- Name: Me_Gusta_Album Me_Gusta_Album_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Album"
    ADD CONSTRAINT "Me_Gusta_Album_FK2" FOREIGN KEY (id_album) REFERENCES public."Album"(id_album);


--
-- TOC entry 4835 (class 2606 OID 16546)
-- Name: Me_Gusta_Cancion Me_Gusta_Cancion_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Cancion"
    ADD CONSTRAINT "Me_Gusta_Cancion_FK1" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4836 (class 2606 OID 16551)
-- Name: Me_Gusta_Cancion Me_Gusta_Cancion_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Cancion"
    ADD CONSTRAINT "Me_Gusta_Cancion_FK2" FOREIGN KEY (id_cancion) REFERENCES public."Cancion"(id_cancion);


--
-- TOC entry 4839 (class 2606 OID 16576)
-- Name: Me_Gusta_Playlist Me_Gusta_Playlist_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Playlist"
    ADD CONSTRAINT "Me_Gusta_Playlist_FK1" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4840 (class 2606 OID 16581)
-- Name: Me_Gusta_Playlist Me_Gusta_Playlist_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Me_Gusta_Playlist"
    ADD CONSTRAINT "Me_Gusta_Playlist_FK2" FOREIGN KEY (id_playlist) REFERENCES public."Playlist"(id_playlist);


--
-- TOC entry 4827 (class 2606 OID 16486)
-- Name: Playlist_Cancion Playlist_Cancion_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Playlist_Cancion"
    ADD CONSTRAINT "Playlist_Cancion_FK1" FOREIGN KEY (id_playlist) REFERENCES public."Playlist"(id_playlist);


--
-- TOC entry 4828 (class 2606 OID 16491)
-- Name: Playlist_Cancion Playlist_Cancion_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Playlist_Cancion"
    ADD CONSTRAINT "Playlist_Cancion_FK2" FOREIGN KEY (id_cancion) REFERENCES public."Cancion"(id_cancion);


--
-- TOC entry 4822 (class 2606 OID 16446)
-- Name: Playlist Playlist_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Playlist"
    ADD CONSTRAINT "Playlist_FK" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4833 (class 2606 OID 16531)
-- Name: Reproduccion Reproduccion_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reproduccion"
    ADD CONSTRAINT "Reproduccion_FK1" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4834 (class 2606 OID 16536)
-- Name: Reproduccion Reproduccion_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Reproduccion"
    ADD CONSTRAINT "Reproduccion_FK2" FOREIGN KEY (id_cancion) REFERENCES public."Cancion"(id_cancion);


--
-- TOC entry 4831 (class 2606 OID 16516)
-- Name: Seguidor_Artista Seguidor_Artista_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Artista"
    ADD CONSTRAINT "Seguidor_Artista_FK1" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4832 (class 2606 OID 16521)
-- Name: Seguidor_Artista Seguidor_Artista_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Artista"
    ADD CONSTRAINT "Seguidor_Artista_FK2" FOREIGN KEY (id_artista) REFERENCES public."Artista"(id_artista);


--
-- TOC entry 4829 (class 2606 OID 16501)
-- Name: Seguidor_Usuario Seguidor_Usuario_FK1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Usuario"
    ADD CONSTRAINT "Seguidor_Usuario_FK1" FOREIGN KEY (id_seguidor) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4830 (class 2606 OID 16506)
-- Name: Seguidor_Usuario Seguidor_Usuario_FK2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Seguidor_Usuario"
    ADD CONSTRAINT "Seguidor_Usuario_FK2" FOREIGN KEY (id_seguido) REFERENCES public."Usuario"(id_usuario);


--
-- TOC entry 4820 (class 2606 OID 16412)
-- Name: Usuario Usuario_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_FK" FOREIGN KEY (id_plan) REFERENCES public."Plan_Membresia"(id_plan);


-- Completed on 2026-09-15 01:09:05

--
-- PostgreSQL database dump complete
--

\unrestrict 4QgFh8c77iDm1mf3r46uqbVa9IZgE07hBoh8PXHvOVWgvSE2xeOGYgTuvfnKgMU

