toc.dat                                                                                             0000600 0004000 0002000 00000032616 13465345627 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       :            
        w            boca_manager    9.5.1    11.2 -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    16394    boca_manager    DATABASE     �   CREATE DATABASE boca_manager WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE boca_manager;
             postgres    false         �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6         �            1259    16457    maratonas_seq    SEQUENCE     v   CREATE SEQUENCE public.maratonas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.maratonas_seq;
       public       postgres    false         �            1259    16395 	   maratonas    TABLE     m  CREATE TABLE public.maratonas (
    id integer DEFAULT nextval('public.maratonas_seq'::regclass) NOT NULL,
    titulo character varying(500) NOT NULL,
    data date NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.maratonas;
       public         postgres    false    187         �            1259    16463    maratonas_times_seq    SEQUENCE     |   CREATE SEQUENCE public.maratonas_times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.maratonas_times_seq;
       public       postgres    false         �            1259    16413    maratonas_times    TABLE     u  CREATE TABLE public.maratonas_times (
    id integer DEFAULT nextval('public.maratonas_times_seq'::regclass) NOT NULL,
    time_id integer NOT NULL,
    maratona_id integer NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
 #   DROP TABLE public.maratonas_times;
       public         postgres    false    189         �            1259    16466 
   niveis_seq    SEQUENCE     s   CREATE SEQUENCE public.niveis_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.niveis_seq;
       public       postgres    false         �            1259    16419    niveis    TABLE     R  CREATE TABLE public.niveis (
    id integer DEFAULT nextval('public.niveis_seq'::regclass) NOT NULL,
    descricao character varying(250) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.niveis;
       public         postgres    false    190         �            1259    16460 	   times_seq    SEQUENCE     r   CREATE SEQUENCE public.times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.times_seq;
       public       postgres    false         �            1259    16404    times    TABLE     g  CREATE TABLE public.times (
    id integer DEFAULT nextval('public.times_seq'::regclass) NOT NULL,
    nome integer NOT NULL,
    senha character varying(500) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.times;
       public         postgres    false    188         �            1259    16469    usuarios_seq    SEQUENCE     u   CREATE SEQUENCE public.usuarios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.usuarios_seq;
       public       postgres    false         �            1259    16425    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer DEFAULT nextval('public.usuarios_seq'::regclass) NOT NULL,
    nome character varying(250) NOT NULL,
    cpf character varying(11) NOT NULL,
    email character varying(256) NOT NULL,
    senha character varying(500) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.usuarios;
       public         postgres    false    191         �            1259    16472    usuarios_times_seq    SEQUENCE     {   CREATE SEQUENCE public.usuarios_times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuarios_times_seq;
       public       postgres    false         �            1259    16434    usuarios_times    TABLE     �  CREATE TABLE public.usuarios_times (
    id integer DEFAULT nextval('public.usuarios_times_seq'::regclass) NOT NULL,
    usuario_id integer NOT NULL,
    time_id integer NOT NULL,
    nivel_id integer NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);
 "   DROP TABLE public.usuarios_times;
       public         postgres    false    192         ~          0    16395 	   maratonas 
   TABLE DATA               c   COPY public.maratonas (id, titulo, data, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    181       2174.dat �          0    16413    maratonas_times 
   TABLE DATA               q   COPY public.maratonas_times (id, time_id, maratona_id, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    183       2176.dat �          0    16419    niveis 
   TABLE DATA               ]   COPY public.niveis (id, descricao, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    184       2177.dat           0    16404    times 
   TABLE DATA               ^   COPY public.times (id, nome, senha, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    182       2175.dat �          0    16425    usuarios 
   TABLE DATA               m   COPY public.usuarios (id, nome, cpf, email, senha, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    185       2178.dat �          0    16434    usuarios_times 
   TABLE DATA               y   COPY public.usuarios_times (id, usuario_id, time_id, nivel_id, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
    public       postgres    false    186       2179.dat �           0    0    maratonas_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.maratonas_seq', 1, false);
            public       postgres    false    187         �           0    0    maratonas_times_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.maratonas_times_seq', 1, false);
            public       postgres    false    189         �           0    0 
   niveis_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.niveis_seq', 5, false);
            public       postgres    false    190         �           0    0 	   times_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.times_seq', 1, false);
            public       postgres    false    188         �           0    0    usuarios_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.usuarios_seq', 1, false);
            public       postgres    false    191         �           0    0    usuarios_times_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.usuarios_times_seq', 1, false);
            public       postgres    false    192         �           2606    16441    maratonas pk_maratonas 
   CONSTRAINT     T   ALTER TABLE ONLY public.maratonas
    ADD CONSTRAINT pk_maratonas PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.maratonas DROP CONSTRAINT pk_maratonas;
       public         postgres    false    181         �           2606    16445 "   maratonas_times pk_maratonas_times 
   CONSTRAINT     `   ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT pk_maratonas_times PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.maratonas_times DROP CONSTRAINT pk_maratonas_times;
       public         postgres    false    183         �           2606    16449    niveis pk_niveis 
   CONSTRAINT     N   ALTER TABLE ONLY public.niveis
    ADD CONSTRAINT pk_niveis PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.niveis DROP CONSTRAINT pk_niveis;
       public         postgres    false    184         �           2606    16443    times pk_times 
   CONSTRAINT     L   ALTER TABLE ONLY public.times
    ADD CONSTRAINT pk_times PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.times DROP CONSTRAINT pk_times;
       public         postgres    false    182                    2606    16451    usuarios pk_usuarios 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuarios;
       public         postgres    false    185                    2606    16453     usuarios_times pk_usuarios_times 
   CONSTRAINT     ^   ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT pk_usuarios_times PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.usuarios_times DROP CONSTRAINT pk_usuarios_times;
       public         postgres    false    186         �           1259    16446    maratona_id    INDEX     N   CREATE INDEX maratona_id ON public.maratonas_times USING btree (maratona_id);
    DROP INDEX public.maratona_id;
       public         postgres    false    183                    1259    16454    nivel_id    INDEX     G   CREATE INDEX nivel_id ON public.usuarios_times USING btree (nivel_id);
    DROP INDEX public.nivel_id;
       public         postgres    false    186         �           1259    16447    time_id    INDEX     S   CREATE INDEX time_id ON public.maratonas_times USING btree (time_id, maratona_id);
    DROP INDEX public.time_id;
       public         postgres    false    183    183                    1259    16455    time_id1    INDEX     F   CREATE INDEX time_id1 ON public.usuarios_times USING btree (time_id);
    DROP INDEX public.time_id1;
       public         postgres    false    186                    1259    16456 
   usuario_id    INDEX     ^   CREATE INDEX usuario_id ON public.usuarios_times USING btree (usuario_id, time_id, nivel_id);
    DROP INDEX public.usuario_id;
       public         postgres    false    186    186    186                    2606    16475 &   maratonas_times maratonas_times_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT maratonas_times_ibfk_1 FOREIGN KEY (time_id) REFERENCES public.times(id);
 P   ALTER TABLE ONLY public.maratonas_times DROP CONSTRAINT maratonas_times_ibfk_1;
       public       postgres    false    2041    183    182                    2606    16480 &   maratonas_times maratonas_times_ibfk_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT maratonas_times_ibfk_2 FOREIGN KEY (maratona_id) REFERENCES public.maratonas(id);
 P   ALTER TABLE ONLY public.maratonas_times DROP CONSTRAINT maratonas_times_ibfk_2;
       public       postgres    false    183    2039    181         	           2606    16485 $   usuarios_times usuarios_times_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_1 FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);
 N   ALTER TABLE ONLY public.usuarios_times DROP CONSTRAINT usuarios_times_ibfk_1;
       public       postgres    false    185    186    2049         
           2606    16490 $   usuarios_times usuarios_times_ibfk_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_2 FOREIGN KEY (time_id) REFERENCES public.times(id);
 N   ALTER TABLE ONLY public.usuarios_times DROP CONSTRAINT usuarios_times_ibfk_2;
       public       postgres    false    186    2041    182                    2606    16495 $   usuarios_times usuarios_times_ibfk_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_3 FOREIGN KEY (nivel_id) REFERENCES public.niveis(id);
 N   ALTER TABLE ONLY public.usuarios_times DROP CONSTRAINT usuarios_times_ibfk_3;
       public       postgres    false    2047    184    186                                                                                                                          2174.dat                                                                                            0000600 0004000 0002000 00000000005 13465345627 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2176.dat                                                                                            0000600 0004000 0002000 00000000005 13465345627 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2177.dat                                                                                            0000600 0004000 0002000 00000000330 13465345627 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Lider	2019-04-29 15:59:44	2019-04-29 15:59:44	1
2	* TRIAL * 	2019-04-29 15:59:44	2019-04-29 15:59:44	1
3	Reserva	2019-04-29 15:59:55	2019-04-29 15:59:55	1
4	Treinador	2019-04-29 15:59:55	2019-04-29 15:59:55	1
\.


                                                                                                                                                                                                                                                                                                        2175.dat                                                                                            0000600 0004000 0002000 00000000005 13465345627 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2178.dat                                                                                            0000600 0004000 0002000 00000000005 13465345627 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2179.dat                                                                                            0000600 0004000 0002000 00000000005 13465345627 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000027241 13465345627 0015411 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE boca_manager;
--
-- Name: boca_manager; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE boca_manager WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE boca_manager OWNER TO postgres;

\connect boca_manager

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
-- Name: maratonas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maratonas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maratonas_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maratonas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maratonas (
    id integer DEFAULT nextval('public.maratonas_seq'::regclass) NOT NULL,
    titulo character varying(500) NOT NULL,
    data date NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.maratonas OWNER TO postgres;

--
-- Name: maratonas_times_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maratonas_times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maratonas_times_seq OWNER TO postgres;

--
-- Name: maratonas_times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maratonas_times (
    id integer DEFAULT nextval('public.maratonas_times_seq'::regclass) NOT NULL,
    time_id integer NOT NULL,
    maratona_id integer NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.maratonas_times OWNER TO postgres;

--
-- Name: niveis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.niveis_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niveis_seq OWNER TO postgres;

--
-- Name: niveis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.niveis (
    id integer DEFAULT nextval('public.niveis_seq'::regclass) NOT NULL,
    descricao character varying(250) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.niveis OWNER TO postgres;

--
-- Name: times_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.times_seq OWNER TO postgres;

--
-- Name: times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.times (
    id integer DEFAULT nextval('public.times_seq'::regclass) NOT NULL,
    nome integer NOT NULL,
    senha character varying(500) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.times OWNER TO postgres;

--
-- Name: usuarios_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_seq OWNER TO postgres;

--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer DEFAULT nextval('public.usuarios_seq'::regclass) NOT NULL,
    nome character varying(250) NOT NULL,
    cpf character varying(11) NOT NULL,
    email character varying(256) NOT NULL,
    senha character varying(500) NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_times_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_times_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_times_seq OWNER TO postgres;

--
-- Name: usuarios_times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_times (
    id integer DEFAULT nextval('public.usuarios_times_seq'::regclass) NOT NULL,
    usuario_id integer NOT NULL,
    time_id integer NOT NULL,
    nivel_id integer NOT NULL,
    datahoraatualizacao timestamp without time zone DEFAULT now() NOT NULL,
    datahorainsercao timestamp without time zone DEFAULT now() NOT NULL,
    ativo smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.usuarios_times OWNER TO postgres;

--
-- Data for Name: maratonas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maratonas (id, titulo, data, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.maratonas (id, titulo, data, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2174.dat';

--
-- Data for Name: maratonas_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maratonas_times (id, time_id, maratona_id, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.maratonas_times (id, time_id, maratona_id, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2176.dat';

--
-- Data for Name: niveis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.niveis (id, descricao, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.niveis (id, descricao, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2177.dat';

--
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.times (id, nome, senha, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.times (id, nome, senha, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2175.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nome, cpf, email, senha, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.usuarios (id, nome, cpf, email, senha, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2178.dat';

--
-- Data for Name: usuarios_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_times (id, usuario_id, time_id, nivel_id, datahoraatualizacao, datahorainsercao, ativo) FROM stdin;
\.
COPY public.usuarios_times (id, usuario_id, time_id, nivel_id, datahoraatualizacao, datahorainsercao, ativo) FROM '$$PATH$$/2179.dat';

--
-- Name: maratonas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maratonas_seq', 1, false);


--
-- Name: maratonas_times_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maratonas_times_seq', 1, false);


--
-- Name: niveis_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.niveis_seq', 5, false);


--
-- Name: times_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.times_seq', 1, false);


--
-- Name: usuarios_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_seq', 1, false);


--
-- Name: usuarios_times_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_times_seq', 1, false);


--
-- Name: maratonas pk_maratonas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maratonas
    ADD CONSTRAINT pk_maratonas PRIMARY KEY (id);


--
-- Name: maratonas_times pk_maratonas_times; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT pk_maratonas_times PRIMARY KEY (id);


--
-- Name: niveis pk_niveis; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.niveis
    ADD CONSTRAINT pk_niveis PRIMARY KEY (id);


--
-- Name: times pk_times; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT pk_times PRIMARY KEY (id);


--
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);


--
-- Name: usuarios_times pk_usuarios_times; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT pk_usuarios_times PRIMARY KEY (id);


--
-- Name: maratona_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX maratona_id ON public.maratonas_times USING btree (maratona_id);


--
-- Name: nivel_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nivel_id ON public.usuarios_times USING btree (nivel_id);


--
-- Name: time_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX time_id ON public.maratonas_times USING btree (time_id, maratona_id);


--
-- Name: time_id1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX time_id1 ON public.usuarios_times USING btree (time_id);


--
-- Name: usuario_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_id ON public.usuarios_times USING btree (usuario_id, time_id, nivel_id);


--
-- Name: maratonas_times maratonas_times_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT maratonas_times_ibfk_1 FOREIGN KEY (time_id) REFERENCES public.times(id);


--
-- Name: maratonas_times maratonas_times_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maratonas_times
    ADD CONSTRAINT maratonas_times_ibfk_2 FOREIGN KEY (maratona_id) REFERENCES public.maratonas(id);


--
-- Name: usuarios_times usuarios_times_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_1 FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: usuarios_times usuarios_times_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_2 FOREIGN KEY (time_id) REFERENCES public.times(id);


--
-- Name: usuarios_times usuarios_times_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_times
    ADD CONSTRAINT usuarios_times_ibfk_3 FOREIGN KEY (nivel_id) REFERENCES public.niveis(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               