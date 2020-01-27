PGDMP                          x            proyecto    12.1    12.1 '    4           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            5           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            7           1262    32773    proyecto    DATABASE     �   CREATE DATABASE proyecto WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE proyecto;
                postgres    false            �            1259    32774    consejo    TABLE        CREATE TABLE public.consejo (
    id_cc integer NOT NULL,
    id_solicitudes integer,
    usuario_cc text,
    pass_cc text
);
    DROP TABLE public.consejo;
       public         heap    postgres    false            �            1259    32780    consejoCarrera_id_cc_seq    SEQUENCE     �   CREATE SEQUENCE public."consejoCarrera_id_cc_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."consejoCarrera_id_cc_seq";
       public          postgres    false    202            8           0    0    consejoCarrera_id_cc_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."consejoCarrera_id_cc_seq" OWNED BY public.consejo.id_cc;
          public          postgres    false    203            �            1259    32782    entregables    TABLE     �   CREATE TABLE public.entregables (
    id_entregable integer NOT NULL,
    id_tutor integer,
    id_estudiante integer,
    dia text,
    hora text,
    porcentaje integer,
    descripcion text
);
    DROP TABLE public.entregables;
       public         heap    postgres    false            �            1259    32788    entregables_id_entregable_seq    SEQUENCE     �   CREATE SEQUENCE public.entregables_id_entregable_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.entregables_id_entregable_seq;
       public          postgres    false    204            9           0    0    entregables_id_entregable_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.entregables_id_entregable_seq OWNED BY public.entregables.id_entregable;
          public          postgres    false    205            �            1259    32790    estudiantes    TABLE     i   CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    usuario text,
    pass text
);
    DROP TABLE public.estudiantes;
       public         heap    postgres    false            �            1259    32796    estudiante_id_estudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiante_id_estudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.estudiante_id_estudiante_seq;
       public          postgres    false    206            :           0    0    estudiante_id_estudiante_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.estudiante_id_estudiante_seq OWNED BY public.estudiantes.id_estudiante;
          public          postgres    false    207            �            1259    32803    registrosoli    TABLE     �   CREATE TABLE public.registrosoli (
    id_solicitud integer NOT NULL,
    id_estudiante integer,
    id_tutor integer,
    tipo_solicitud text,
    destinatario text,
    contenido text
);
     DROP TABLE public.registrosoli;
       public         heap    postgres    false            �            1259    32809 "   registroSolicitud_id_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE public."registroSolicitud_id_solicitud_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."registroSolicitud_id_solicitud_seq";
       public          postgres    false    208            ;           0    0 "   registroSolicitud_id_solicitud_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public."registroSolicitud_id_solicitud_seq" OWNED BY public.registrosoli.id_solicitud;
          public          postgres    false    209            �            1259    32847    tutor    TABLE     �   CREATE TABLE public.tutor (
    id_tutor integer NOT NULL,
    usuario_tutor character varying(50),
    pass_tutor character varying(50)
);
    DROP TABLE public.tutor;
       public         heap    postgres    false            �            1259    32845    tutor_id_tutor_seq    SEQUENCE     �   CREATE SEQUENCE public.tutor_id_tutor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tutor_id_tutor_seq;
       public          postgres    false    211            <           0    0    tutor_id_tutor_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tutor_id_tutor_seq OWNED BY public.tutor.id_tutor;
          public          postgres    false    210            �
           2604    32819    consejo id_cc    DEFAULT     w   ALTER TABLE ONLY public.consejo ALTER COLUMN id_cc SET DEFAULT nextval('public."consejoCarrera_id_cc_seq"'::regclass);
 <   ALTER TABLE public.consejo ALTER COLUMN id_cc DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    32820    entregables id_entregable    DEFAULT     �   ALTER TABLE ONLY public.entregables ALTER COLUMN id_entregable SET DEFAULT nextval('public.entregables_id_entregable_seq'::regclass);
 H   ALTER TABLE public.entregables ALTER COLUMN id_entregable DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    32821    estudiantes id_estudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiantes ALTER COLUMN id_estudiante SET DEFAULT nextval('public.estudiante_id_estudiante_seq'::regclass);
 H   ALTER TABLE public.estudiantes ALTER COLUMN id_estudiante DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    32823    registrosoli id_solicitud    DEFAULT     �   ALTER TABLE ONLY public.registrosoli ALTER COLUMN id_solicitud SET DEFAULT nextval('public."registroSolicitud_id_solicitud_seq"'::regclass);
 H   ALTER TABLE public.registrosoli ALTER COLUMN id_solicitud DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    32850    tutor id_tutor    DEFAULT     p   ALTER TABLE ONLY public.tutor ALTER COLUMN id_tutor SET DEFAULT nextval('public.tutor_id_tutor_seq'::regclass);
 =   ALTER TABLE public.tutor ALTER COLUMN id_tutor DROP DEFAULT;
       public          postgres    false    211    210    211            (          0    32774    consejo 
   TABLE DATA           M   COPY public.consejo (id_cc, id_solicitudes, usuario_cc, pass_cc) FROM stdin;
    public          postgres    false    202   �+       *          0    32782    entregables 
   TABLE DATA           q   COPY public.entregables (id_entregable, id_tutor, id_estudiante, dia, hora, porcentaje, descripcion) FROM stdin;
    public          postgres    false    204   �+       ,          0    32790    estudiantes 
   TABLE DATA           C   COPY public.estudiantes (id_estudiante, usuario, pass) FROM stdin;
    public          postgres    false    206   X,       .          0    32803    registrosoli 
   TABLE DATA           v   COPY public.registrosoli (id_solicitud, id_estudiante, id_tutor, tipo_solicitud, destinatario, contenido) FROM stdin;
    public          postgres    false    208   �,       1          0    32847    tutor 
   TABLE DATA           D   COPY public.tutor (id_tutor, usuario_tutor, pass_tutor) FROM stdin;
    public          postgres    false    211   [-       =           0    0    consejoCarrera_id_cc_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."consejoCarrera_id_cc_seq"', 1, false);
          public          postgres    false    203            >           0    0    entregables_id_entregable_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.entregables_id_entregable_seq', 1, false);
          public          postgres    false    205            ?           0    0    estudiante_id_estudiante_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.estudiante_id_estudiante_seq', 24, true);
          public          postgres    false    207            @           0    0 "   registroSolicitud_id_solicitud_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."registroSolicitud_id_solicitud_seq"', 6, true);
          public          postgres    false    209            A           0    0    tutor_id_tutor_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tutor_id_tutor_seq', 9, true);
          public          postgres    false    210            �
           2606    32826    consejo consejoCarrera_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.consejo
    ADD CONSTRAINT "consejoCarrera_pkey" PRIMARY KEY (id_cc);
 G   ALTER TABLE ONLY public.consejo DROP CONSTRAINT "consejoCarrera_pkey";
       public            postgres    false    202            �
           2606    32828    entregables entregables_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.entregables
    ADD CONSTRAINT entregables_pkey PRIMARY KEY (id_entregable);
 F   ALTER TABLE ONLY public.entregables DROP CONSTRAINT entregables_pkey;
       public            postgres    false    204            �
           2606    32830    estudiantes estudiante_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (id_estudiante);
 E   ALTER TABLE ONLY public.estudiantes DROP CONSTRAINT estudiante_pkey;
       public            postgres    false    206            �
           2606    32834 #   registrosoli registroSolicitud_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.registrosoli
    ADD CONSTRAINT "registroSolicitud_pkey" PRIMARY KEY (id_solicitud);
 O   ALTER TABLE ONLY public.registrosoli DROP CONSTRAINT "registroSolicitud_pkey";
       public            postgres    false    208            �
           2606    32852    tutor tutor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT tutor_pkey PRIMARY KEY (id_tutor);
 :   ALTER TABLE ONLY public.tutor DROP CONSTRAINT tutor_pkey;
       public            postgres    false    211            (      x������ � �      *   r   x�U�K
�0F���
$�J�`�p�H �с��8+g�q��qK��y��&�iG̫t �̖zz�!;Чd�������������6k�49�AJR-���S��'/�$�      ,   +   x�32�t�/�,�,H,.64�22�tN,�I�%�%�\1z\\\ �
�      .   �   x���A�AEשS��v�D�e�.ݤM�&Rv$U���՜a.f�KA��_��~ְn�����,x��9�T�w�jp(UP
JƇ�]]���K�X֫֙��E�eN�v��h욬�G��38I�'nUC�0V2�:�bccI�����!.��8�@m�3�TL���md5��#j�P�����eBx�Z]      1   L   x�3��".#(m�Y���F�F�&�\&��E��N�)2��cΙ�VB��)��`�%gAQijR"����� ���     