PGDMP         /                u            db/development    9.6.1    9.6.1 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    28396    db/development    DATABASE     �   CREATE DATABASE "db/development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "db/development";
             duy    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12427    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    28654    actors    TABLE     �   CREATE TABLE actors (
    id integer NOT NULL,
    name character varying,
    date_of_birth character varying,
    avatar character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.actors;
       public         duy    false    3            �            1259    28652    actors_id_seq    SEQUENCE     o   CREATE SEQUENCE actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.actors_id_seq;
       public       duy    false    3    227            �	           0    0    actors_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE actors_id_seq OWNED BY actors.id;
            public       duy    false    226            �            1259    28599    average_caches    TABLE       CREATE TABLE average_caches (
    id integer NOT NULL,
    rater_id integer,
    rateable_id integer,
    rateable_type character varying,
    avg double precision NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 "   DROP TABLE public.average_caches;
       public         duy    false    3            �            1259    28597    average_caches_id_seq    SEQUENCE     w   CREATE SEQUENCE average_caches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.average_caches_id_seq;
       public       duy    false    3    217            �	           0    0    average_caches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE average_caches_id_seq OWNED BY average_caches.id;
            public       duy    false    216            �            1259    28456 
   categories    TABLE     �   CREATE TABLE categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.categories;
       public         duy    false    3            �            1259    28454    categories_id_seq    SEQUENCE     s   CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       duy    false    195    3            �	           0    0    categories_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE categories_id_seq OWNED BY categories.id;
            public       duy    false    194            �            1259    28434    comments    TABLE     �   CREATE TABLE comments (
    id integer NOT NULL,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    review_id integer
);
    DROP TABLE public.comments;
       public         duy    false    3            �            1259    28432    comments_id_seq    SEQUENCE     q   CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public       duy    false    191    3            �	           0    0    comments_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE comments_id_seq OWNED BY comments.id;
            public       duy    false    190            �            1259    28553    favorite_actors    TABLE     �   CREATE TABLE favorite_actors (
    id integer NOT NULL,
    user_id integer,
    actor_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.favorite_actors;
       public         duy    false    3            �            1259    28551    favorite_actors_id_seq    SEQUENCE     x   CREATE SEQUENCE favorite_actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.favorite_actors_id_seq;
       public       duy    false    3    209            �	           0    0    favorite_actors_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE favorite_actors_id_seq OWNED BY favorite_actors.id;
            public       duy    false    208            �            1259    28563    favorite_movies    TABLE     �   CREATE TABLE favorite_movies (
    id integer NOT NULL,
    user_id integer,
    movie_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.favorite_movies;
       public         duy    false    3            �            1259    28561    favorite_movies_id_seq    SEQUENCE     x   CREATE SEQUENCE favorite_movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.favorite_movies_id_seq;
       public       duy    false    211    3            �	           0    0    favorite_movies_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE favorite_movies_id_seq OWNED BY favorite_movies.id;
            public       duy    false    210            �            1259    28467    genres    TABLE     M   CREATE TABLE genres (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.genres;
       public         duy    false    3            �            1259    28465    genres_id_seq    SEQUENCE     o   CREATE SEQUENCE genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public       duy    false    3    197            �	           0    0    genres_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE genres_id_seq OWNED BY genres.id;
            public       duy    false    196            �            1259    28643    images    TABLE     �   CREATE TABLE images (
    id integer NOT NULL,
    link character varying,
    movie_id integer,
    actor_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.images;
       public         duy    false    3            �            1259    28641    images_id_seq    SEQUENCE     o   CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public       duy    false    3    225            �	           0    0    images_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE images_id_seq OWNED BY images.id;
            public       duy    false    224            �            1259    28543    movie_actors    TABLE     �   CREATE TABLE movie_actors (
    id integer NOT NULL,
    movie_id integer,
    actor_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role character varying
);
     DROP TABLE public.movie_actors;
       public         duy    false    3            �            1259    28541    movie_actors_id_seq    SEQUENCE     u   CREATE SEQUENCE movie_actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movie_actors_id_seq;
       public       duy    false    207    3            �	           0    0    movie_actors_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE movie_actors_id_seq OWNED BY movie_actors.id;
            public       duy    false    206            �            1259    28513    movie_categories    TABLE     �   CREATE TABLE movie_categories (
    id integer NOT NULL,
    movie_id integer,
    category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.movie_categories;
       public         duy    false    3            �            1259    28511    movie_categories_id_seq    SEQUENCE     y   CREATE SEQUENCE movie_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.movie_categories_id_seq;
       public       duy    false    201    3            �	           0    0    movie_categories_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE movie_categories_id_seq OWNED BY movie_categories.id;
            public       duy    false    200            �            1259    28523    movie_genres    TABLE     �   CREATE TABLE movie_genres (
    id integer NOT NULL,
    movie_id integer,
    genre_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.movie_genres;
       public         duy    false    3            �            1259    28521    movie_genres_id_seq    SEQUENCE     u   CREATE SEQUENCE movie_genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movie_genres_id_seq;
       public       duy    false    203    3            �	           0    0    movie_genres_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE movie_genres_id_seq OWNED BY movie_genres.id;
            public       duy    false    202            �            1259    28533    movie_producers    TABLE     �   CREATE TABLE movie_producers (
    id integer NOT NULL,
    movie_id integer,
    producer_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.movie_producers;
       public         duy    false    3            �            1259    28531    movie_producers_id_seq    SEQUENCE     x   CREATE SEQUENCE movie_producers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.movie_producers_id_seq;
       public       duy    false    205    3            �	           0    0    movie_producers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE movie_producers_id_seq OWNED BY movie_producers.id;
            public       duy    false    204            �            1259    28423    movies    TABLE       CREATE TABLE movies (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    episodes integer,
    status character varying,
    summary text,
    poster character varying
);
    DROP TABLE public.movies;
       public         duy    false    3            �            1259    28421    movies_id_seq    SEQUENCE     o   CREATE SEQUENCE movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public       duy    false    3    189            �	           0    0    movies_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE movies_id_seq OWNED BY movies.id;
            public       duy    false    188            �            1259    28632    musics    TABLE     �   CREATE TABLE musics (
    id integer NOT NULL,
    link character varying,
    movie_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.musics;
       public         duy    false    3            �            1259    28630    musics_id_seq    SEQUENCE     o   CREATE SEQUENCE musics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.musics_id_seq;
       public       duy    false    3    223            �	           0    0    musics_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE musics_id_seq OWNED BY musics.id;
            public       duy    false    222            �            1259    28610    overall_averages    TABLE     �   CREATE TABLE overall_averages (
    id integer NOT NULL,
    rateable_id integer,
    rateable_type character varying,
    overall_avg double precision NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 $   DROP TABLE public.overall_averages;
       public         duy    false    3            �            1259    28608    overall_averages_id_seq    SEQUENCE     y   CREATE SEQUENCE overall_averages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.overall_averages_id_seq;
       public       duy    false    3    219            �	           0    0    overall_averages_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE overall_averages_id_seq OWNED BY overall_averages.id;
            public       duy    false    218            �            1259    28478 	   producers    TABLE     �   CREATE TABLE producers (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.producers;
       public         duy    false    3            �            1259    28476    producers_id_seq    SEQUENCE     r   CREATE SEQUENCE producers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.producers_id_seq;
       public       duy    false    3    199            �	           0    0    producers_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE producers_id_seq OWNED BY producers.id;
            public       duy    false    198            �            1259    28586    rates    TABLE     "  CREATE TABLE rates (
    id integer NOT NULL,
    rater_id integer,
    rateable_id integer,
    rateable_type character varying,
    stars double precision NOT NULL,
    dimension character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.rates;
       public         duy    false    3            �            1259    28584    rates_id_seq    SEQUENCE     n   CREATE SEQUENCE rates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rates_id_seq;
       public       duy    false    215    3            �	           0    0    rates_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE rates_id_seq OWNED BY rates.id;
            public       duy    false    214            �            1259    28574    rating_caches    TABLE     .  CREATE TABLE rating_caches (
    id integer NOT NULL,
    cacheable_id integer,
    cacheable_type character varying,
    avg double precision NOT NULL,
    qty integer NOT NULL,
    dimension character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 !   DROP TABLE public.rating_caches;
       public         duy    false    3            �            1259    28572    rating_caches_id_seq    SEQUENCE     v   CREATE SEQUENCE rating_caches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rating_caches_id_seq;
       public       duy    false    213    3            �	           0    0    rating_caches_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE rating_caches_id_seq OWNED BY rating_caches.id;
            public       duy    false    212            �            1259    28445    reviews    TABLE     �   CREATE TABLE reviews (
    id integer NOT NULL,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    movie_id integer
);
    DROP TABLE public.reviews;
       public         duy    false    3            �            1259    28443    reviews_id_seq    SEQUENCE     p   CREATE SEQUENCE reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public       duy    false    193    3            �	           0    0    reviews_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE reviews_id_seq OWNED BY reviews.id;
            public       duy    false    192            �            1259    28398    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         duy    false    3            �            1259    28407    users    TABLE     k  CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    date_of_birth date,
    addresss character varying,
    workplace character varying,
    introduce character varying,
    role character varying,
    sex character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    provider character varying,
    uid character varying
);
    DROP TABLE public.users;
       public         duy    false    3            �            1259    28405    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       duy    false    187    3            �	           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       duy    false    186            �            1259    28621    videos    TABLE     �   CREATE TABLE videos (
    id integer NOT NULL,
    link character varying,
    movie_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.videos;
       public         duy    false    3            �            1259    28619    videos_id_seq    SEQUENCE     o   CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.videos_id_seq;
       public       duy    false    3    221            �	           0    0    videos_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE videos_id_seq OWNED BY videos.id;
            public       duy    false    220            �           2604    28657 	   actors id    DEFAULT     X   ALTER TABLE ONLY actors ALTER COLUMN id SET DEFAULT nextval('actors_id_seq'::regclass);
 8   ALTER TABLE public.actors ALTER COLUMN id DROP DEFAULT;
       public       duy    false    226    227    227            �           2604    28602    average_caches id    DEFAULT     h   ALTER TABLE ONLY average_caches ALTER COLUMN id SET DEFAULT nextval('average_caches_id_seq'::regclass);
 @   ALTER TABLE public.average_caches ALTER COLUMN id DROP DEFAULT;
       public       duy    false    217    216    217            �           2604    28459    categories id    DEFAULT     `   ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       duy    false    195    194    195            �           2604    28437    comments id    DEFAULT     \   ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public       duy    false    191    190    191            �           2604    28556    favorite_actors id    DEFAULT     j   ALTER TABLE ONLY favorite_actors ALTER COLUMN id SET DEFAULT nextval('favorite_actors_id_seq'::regclass);
 A   ALTER TABLE public.favorite_actors ALTER COLUMN id DROP DEFAULT;
       public       duy    false    209    208    209            �           2604    28566    favorite_movies id    DEFAULT     j   ALTER TABLE ONLY favorite_movies ALTER COLUMN id SET DEFAULT nextval('favorite_movies_id_seq'::regclass);
 A   ALTER TABLE public.favorite_movies ALTER COLUMN id DROP DEFAULT;
       public       duy    false    211    210    211            �           2604    28470 	   genres id    DEFAULT     X   ALTER TABLE ONLY genres ALTER COLUMN id SET DEFAULT nextval('genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public       duy    false    196    197    197            �           2604    28646 	   images id    DEFAULT     X   ALTER TABLE ONLY images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public       duy    false    225    224    225            �           2604    28546    movie_actors id    DEFAULT     d   ALTER TABLE ONLY movie_actors ALTER COLUMN id SET DEFAULT nextval('movie_actors_id_seq'::regclass);
 >   ALTER TABLE public.movie_actors ALTER COLUMN id DROP DEFAULT;
       public       duy    false    207    206    207            �           2604    28516    movie_categories id    DEFAULT     l   ALTER TABLE ONLY movie_categories ALTER COLUMN id SET DEFAULT nextval('movie_categories_id_seq'::regclass);
 B   ALTER TABLE public.movie_categories ALTER COLUMN id DROP DEFAULT;
       public       duy    false    201    200    201            �           2604    28526    movie_genres id    DEFAULT     d   ALTER TABLE ONLY movie_genres ALTER COLUMN id SET DEFAULT nextval('movie_genres_id_seq'::regclass);
 >   ALTER TABLE public.movie_genres ALTER COLUMN id DROP DEFAULT;
       public       duy    false    203    202    203            �           2604    28536    movie_producers id    DEFAULT     j   ALTER TABLE ONLY movie_producers ALTER COLUMN id SET DEFAULT nextval('movie_producers_id_seq'::regclass);
 A   ALTER TABLE public.movie_producers ALTER COLUMN id DROP DEFAULT;
       public       duy    false    204    205    205            �           2604    28426 	   movies id    DEFAULT     X   ALTER TABLE ONLY movies ALTER COLUMN id SET DEFAULT nextval('movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public       duy    false    188    189    189            �           2604    28635 	   musics id    DEFAULT     X   ALTER TABLE ONLY musics ALTER COLUMN id SET DEFAULT nextval('musics_id_seq'::regclass);
 8   ALTER TABLE public.musics ALTER COLUMN id DROP DEFAULT;
       public       duy    false    222    223    223            �           2604    28613    overall_averages id    DEFAULT     l   ALTER TABLE ONLY overall_averages ALTER COLUMN id SET DEFAULT nextval('overall_averages_id_seq'::regclass);
 B   ALTER TABLE public.overall_averages ALTER COLUMN id DROP DEFAULT;
       public       duy    false    219    218    219            �           2604    28481    producers id    DEFAULT     ^   ALTER TABLE ONLY producers ALTER COLUMN id SET DEFAULT nextval('producers_id_seq'::regclass);
 ;   ALTER TABLE public.producers ALTER COLUMN id DROP DEFAULT;
       public       duy    false    199    198    199            �           2604    28589    rates id    DEFAULT     V   ALTER TABLE ONLY rates ALTER COLUMN id SET DEFAULT nextval('rates_id_seq'::regclass);
 7   ALTER TABLE public.rates ALTER COLUMN id DROP DEFAULT;
       public       duy    false    214    215    215            �           2604    28577    rating_caches id    DEFAULT     f   ALTER TABLE ONLY rating_caches ALTER COLUMN id SET DEFAULT nextval('rating_caches_id_seq'::regclass);
 ?   ALTER TABLE public.rating_caches ALTER COLUMN id DROP DEFAULT;
       public       duy    false    213    212    213            �           2604    28448 
   reviews id    DEFAULT     Z   ALTER TABLE ONLY reviews ALTER COLUMN id SET DEFAULT nextval('reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public       duy    false    192    193    193            �           2604    28410    users id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       duy    false    186    187    187            �           2604    28624 	   videos id    DEFAULT     X   ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);
 8   ALTER TABLE public.videos ALTER COLUMN id DROP DEFAULT;
       public       duy    false    221    220    221            �	          0    28654    actors 
   TABLE DATA               R   COPY actors (id, name, date_of_birth, avatar, created_at, updated_at) FROM stdin;
    public       duy    false    227   ��       �	           0    0    actors_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('actors_id_seq', 10, true);
            public       duy    false    226            v	          0    28599    average_caches 
   TABLE DATA               h   COPY average_caches (id, rater_id, rateable_id, rateable_type, avg, created_at, updated_at) FROM stdin;
    public       duy    false    217   ��       �	           0    0    average_caches_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('average_caches_id_seq', 1, false);
            public       duy    false    216            `	          0    28456 
   categories 
   TABLE DATA               ?   COPY categories (id, name, created_at, updated_at) FROM stdin;
    public       duy    false    195   ��       �	           0    0    categories_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('categories_id_seq', 30, true);
            public       duy    false    194            \	          0    28434    comments 
   TABLE DATA               T   COPY comments (id, content, created_at, updated_at, user_id, review_id) FROM stdin;
    public       duy    false    191   Z�       �	           0    0    comments_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('comments_id_seq', 27, true);
            public       duy    false    190            n	          0    28553    favorite_actors 
   TABLE DATA               Q   COPY favorite_actors (id, user_id, actor_id, created_at, updated_at) FROM stdin;
    public       duy    false    209   ��       �	           0    0    favorite_actors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('favorite_actors_id_seq', 3, true);
            public       duy    false    208            p	          0    28563    favorite_movies 
   TABLE DATA               Q   COPY favorite_movies (id, user_id, movie_id, created_at, updated_at) FROM stdin;
    public       duy    false    211   "�       �	           0    0    favorite_movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('favorite_movies_id_seq', 7, true);
            public       duy    false    210            b	          0    28467    genres 
   TABLE DATA               #   COPY genres (id, name) FROM stdin;
    public       duy    false    197   ��       �	           0    0    genres_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('genres_id_seq', 25, true);
            public       duy    false    196            ~	          0    28643    images 
   TABLE DATA               O   COPY images (id, link, movie_id, actor_id, created_at, updated_at) FROM stdin;
    public       duy    false    225   ��       �	           0    0    images_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('images_id_seq', 10, true);
            public       duy    false    224            l	          0    28543    movie_actors 
   TABLE DATA               U   COPY movie_actors (id, movie_id, actor_id, created_at, updated_at, role) FROM stdin;
    public       duy    false    207   $�       �	           0    0    movie_actors_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('movie_actors_id_seq', 18, true);
            public       duy    false    206            f	          0    28513    movie_categories 
   TABLE DATA               V   COPY movie_categories (id, movie_id, category_id, created_at, updated_at) FROM stdin;
    public       duy    false    201   �       �	           0    0    movie_categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('movie_categories_id_seq', 10, true);
            public       duy    false    200            h	          0    28523    movie_genres 
   TABLE DATA               O   COPY movie_genres (id, movie_id, genre_id, created_at, updated_at) FROM stdin;
    public       duy    false    203   ��       �	           0    0    movie_genres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('movie_genres_id_seq', 61, true);
            public       duy    false    202            j	          0    28533    movie_producers 
   TABLE DATA               U   COPY movie_producers (id, movie_id, producer_id, created_at, updated_at) FROM stdin;
    public       duy    false    205   ��       �	           0    0    movie_producers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('movie_producers_id_seq', 1, false);
            public       duy    false    204            Z	          0    28423    movies 
   TABLE DATA               ^   COPY movies (id, name, created_at, updated_at, episodes, status, summary, poster) FROM stdin;
    public       duy    false    189   �       �	           0    0    movies_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('movies_id_seq', 33, true);
            public       duy    false    188            |	          0    28632    musics 
   TABLE DATA               E   COPY musics (id, link, movie_id, created_at, updated_at) FROM stdin;
    public       duy    false    223   ��       �	           0    0    musics_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('musics_id_seq', 1, false);
            public       duy    false    222            x	          0    28610    overall_averages 
   TABLE DATA               h   COPY overall_averages (id, rateable_id, rateable_type, overall_avg, created_at, updated_at) FROM stdin;
    public       duy    false    219   ��       �	           0    0    overall_averages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('overall_averages_id_seq', 1, false);
            public       duy    false    218            d	          0    28478 	   producers 
   TABLE DATA               >   COPY producers (id, name, created_at, updated_at) FROM stdin;
    public       duy    false    199   ��       �	           0    0    producers_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('producers_id_seq', 1, false);
            public       duy    false    198            t	          0    28586    rates 
   TABLE DATA               l   COPY rates (id, rater_id, rateable_id, rateable_type, stars, dimension, created_at, updated_at) FROM stdin;
    public       duy    false    215   ��       �	           0    0    rates_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('rates_id_seq', 13, true);
            public       duy    false    214            r	          0    28574    rating_caches 
   TABLE DATA               o   COPY rating_caches (id, cacheable_id, cacheable_type, avg, qty, dimension, created_at, updated_at) FROM stdin;
    public       duy    false    213   �       �	           0    0    rating_caches_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('rating_caches_id_seq', 6, true);
            public       duy    false    212            ^	          0    28445    reviews 
   TABLE DATA               R   COPY reviews (id, content, created_at, updated_at, user_id, movie_id) FROM stdin;
    public       duy    false    193   ��       �	           0    0    reviews_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('reviews_id_seq', 23, true);
            public       duy    false    192            V	          0    28398    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       duy    false    185   6�       X	          0    28407    users 
   TABLE DATA               �  COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, date_of_birth, addresss, workplace, introduce, role, sex, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, provider, uid) FROM stdin;
    public       duy    false    187   ��       �	           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 3, true);
            public       duy    false    186            z	          0    28621    videos 
   TABLE DATA               E   COPY videos (id, link, movie_id, created_at, updated_at) FROM stdin;
    public       duy    false    221   ��       �	           0    0    videos_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('videos_id_seq', 7, true);
            public       duy    false    220            �           2606    28662    actors actors_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public         duy    false    227    227            �           2606    28607 "   average_caches average_caches_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY average_caches
    ADD CONSTRAINT average_caches_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.average_caches DROP CONSTRAINT average_caches_pkey;
       public         duy    false    217    217            �           2606    28464    categories categories_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         duy    false    195    195            �           2606    28442    comments comments_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public         duy    false    191    191            �           2606    28558 $   favorite_actors favorite_actors_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY favorite_actors
    ADD CONSTRAINT favorite_actors_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.favorite_actors DROP CONSTRAINT favorite_actors_pkey;
       public         duy    false    209    209            �           2606    28568 $   favorite_movies favorite_movies_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY favorite_movies
    ADD CONSTRAINT favorite_movies_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.favorite_movies DROP CONSTRAINT favorite_movies_pkey;
       public         duy    false    211    211            �           2606    28475    genres genres_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public         duy    false    197    197            �           2606    28651    images images_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public         duy    false    225    225            �           2606    28548    movie_actors movie_actors_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY movie_actors
    ADD CONSTRAINT movie_actors_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movie_actors DROP CONSTRAINT movie_actors_pkey;
       public         duy    false    207    207            �           2606    28518 &   movie_categories movie_categories_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY movie_categories
    ADD CONSTRAINT movie_categories_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.movie_categories DROP CONSTRAINT movie_categories_pkey;
       public         duy    false    201    201            �           2606    28528    movie_genres movie_genres_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT movie_genres_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movie_genres DROP CONSTRAINT movie_genres_pkey;
       public         duy    false    203    203            �           2606    28538 $   movie_producers movie_producers_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY movie_producers
    ADD CONSTRAINT movie_producers_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.movie_producers DROP CONSTRAINT movie_producers_pkey;
       public         duy    false    205    205            �           2606    28431    movies movies_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public         duy    false    189    189            �           2606    28640    musics musics_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY musics
    ADD CONSTRAINT musics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.musics DROP CONSTRAINT musics_pkey;
       public         duy    false    223    223            �           2606    28618 &   overall_averages overall_averages_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY overall_averages
    ADD CONSTRAINT overall_averages_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.overall_averages DROP CONSTRAINT overall_averages_pkey;
       public         duy    false    219    219            �           2606    28486    producers producers_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_pkey;
       public         duy    false    199    199            �           2606    28594    rates rates_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY rates
    ADD CONSTRAINT rates_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rates DROP CONSTRAINT rates_pkey;
       public         duy    false    215    215            �           2606    28582     rating_caches rating_caches_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY rating_caches
    ADD CONSTRAINT rating_caches_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.rating_caches DROP CONSTRAINT rating_caches_pkey;
       public         duy    false    213    213            �           2606    28453    reviews reviews_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public         duy    false    193    193            �           2606    28418    users users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         duy    false    187    187            �           2606    28629    videos videos_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public         duy    false    221    221            �           1259    28493    index_comments_on_review_id    INDEX     N   CREATE INDEX index_comments_on_review_id ON comments USING btree (review_id);
 /   DROP INDEX public.index_comments_on_review_id;
       public         duy    false    191            �           1259    28487    index_comments_on_user_id    INDEX     J   CREATE INDEX index_comments_on_user_id ON comments USING btree (user_id);
 -   DROP INDEX public.index_comments_on_user_id;
       public         duy    false    191            �           1259    28560 !   index_favorite_actors_on_actor_id    INDEX     Z   CREATE INDEX index_favorite_actors_on_actor_id ON favorite_actors USING btree (actor_id);
 5   DROP INDEX public.index_favorite_actors_on_actor_id;
       public         duy    false    209            �           1259    28559     index_favorite_actors_on_user_id    INDEX     X   CREATE INDEX index_favorite_actors_on_user_id ON favorite_actors USING btree (user_id);
 4   DROP INDEX public.index_favorite_actors_on_user_id;
       public         duy    false    209            �           1259    28570 !   index_favorite_movies_on_movie_id    INDEX     Z   CREATE INDEX index_favorite_movies_on_movie_id ON favorite_movies USING btree (movie_id);
 5   DROP INDEX public.index_favorite_movies_on_movie_id;
       public         duy    false    211            �           1259    28569     index_favorite_movies_on_user_id    INDEX     X   CREATE INDEX index_favorite_movies_on_user_id ON favorite_movies USING btree (user_id);
 4   DROP INDEX public.index_favorite_movies_on_user_id;
       public         duy    false    211            �           1259    28550    index_movie_actors_on_actor_id    INDEX     T   CREATE INDEX index_movie_actors_on_actor_id ON movie_actors USING btree (actor_id);
 2   DROP INDEX public.index_movie_actors_on_actor_id;
       public         duy    false    207            �           1259    28549    index_movie_actors_on_movie_id    INDEX     T   CREATE INDEX index_movie_actors_on_movie_id ON movie_actors USING btree (movie_id);
 2   DROP INDEX public.index_movie_actors_on_movie_id;
       public         duy    false    207            �           1259    28520 %   index_movie_categories_on_category_id    INDEX     b   CREATE INDEX index_movie_categories_on_category_id ON movie_categories USING btree (category_id);
 9   DROP INDEX public.index_movie_categories_on_category_id;
       public         duy    false    201            �           1259    28519 "   index_movie_categories_on_movie_id    INDEX     \   CREATE INDEX index_movie_categories_on_movie_id ON movie_categories USING btree (movie_id);
 6   DROP INDEX public.index_movie_categories_on_movie_id;
       public         duy    false    201            �           1259    28530    index_movie_genres_on_genre_id    INDEX     T   CREATE INDEX index_movie_genres_on_genre_id ON movie_genres USING btree (genre_id);
 2   DROP INDEX public.index_movie_genres_on_genre_id;
       public         duy    false    203            �           1259    28529    index_movie_genres_on_movie_id    INDEX     T   CREATE INDEX index_movie_genres_on_movie_id ON movie_genres USING btree (movie_id);
 2   DROP INDEX public.index_movie_genres_on_movie_id;
       public         duy    false    203            �           1259    28539 !   index_movie_producers_on_movie_id    INDEX     Z   CREATE INDEX index_movie_producers_on_movie_id ON movie_producers USING btree (movie_id);
 5   DROP INDEX public.index_movie_producers_on_movie_id;
       public         duy    false    205            �           1259    28540 $   index_movie_producers_on_producer_id    INDEX     `   CREATE INDEX index_movie_producers_on_producer_id ON movie_producers USING btree (producer_id);
 8   DROP INDEX public.index_movie_producers_on_producer_id;
       public         duy    false    205            �           1259    28596 ,   index_rates_on_rateable_id_and_rateable_type    INDEX     m   CREATE INDEX index_rates_on_rateable_id_and_rateable_type ON rates USING btree (rateable_id, rateable_type);
 @   DROP INDEX public.index_rates_on_rateable_id_and_rateable_type;
       public         duy    false    215    215            �           1259    28595    index_rates_on_rater_id    INDEX     F   CREATE INDEX index_rates_on_rater_id ON rates USING btree (rater_id);
 +   DROP INDEX public.index_rates_on_rater_id;
       public         duy    false    215            �           1259    28583 6   index_rating_caches_on_cacheable_id_and_cacheable_type    INDEX     �   CREATE INDEX index_rating_caches_on_cacheable_id_and_cacheable_type ON rating_caches USING btree (cacheable_id, cacheable_type);
 J   DROP INDEX public.index_rating_caches_on_cacheable_id_and_cacheable_type;
       public         duy    false    213    213            �           1259    28505    index_reviews_on_movie_id    INDEX     J   CREATE INDEX index_reviews_on_movie_id ON reviews USING btree (movie_id);
 -   DROP INDEX public.index_reviews_on_movie_id;
       public         duy    false    193            �           1259    28499    index_reviews_on_user_id    INDEX     H   CREATE INDEX index_reviews_on_user_id ON reviews USING btree (user_id);
 ,   DROP INDEX public.index_reviews_on_user_id;
       public         duy    false    193            �           1259    28571 !   index_users_on_confirmation_token    INDEX     a   CREATE UNIQUE INDEX index_users_on_confirmation_token ON users USING btree (confirmation_token);
 5   DROP INDEX public.index_users_on_confirmation_token;
       public         duy    false    187            �           1259    28419    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         duy    false    187            �           1259    28420 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         duy    false    187            �           1259    28404    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         duy    false    185            �           2606    28488    comments fk_rails_03de2dc08c    FK CONSTRAINT     m   ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES users(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_03de2dc08c;
       public       duy    false    187    191    2209            �           2606    28494    comments fk_rails_5350d1b47c    FK CONSTRAINT     q   ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_5350d1b47c FOREIGN KEY (review_id) REFERENCES reviews(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_5350d1b47c;
       public       duy    false    193    2219    191            �           2606    28506    reviews fk_rails_6ad75a4852    FK CONSTRAINT     n   ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_6ad75a4852 FOREIGN KEY (movie_id) REFERENCES movies(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_6ad75a4852;
       public       duy    false    2211    189    193            �           2606    28500    reviews fk_rails_74a66bd6c5    FK CONSTRAINT     l   ALTER TABLE ONLY reviews
    ADD CONSTRAINT fk_rails_74a66bd6c5 FOREIGN KEY (user_id) REFERENCES users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_74a66bd6c5;
       public       duy    false    2209    187    193            �	   G  x�}�[n�0E��*� ���5�_��B�Cmq�����4D�i��%Kǜ{��꥛�XSUU��l�&b���� �6�ЋA?3X�l�0n a�yj𒴶l7�����1D���}��	����j�Q�9��u�?~��W��T�i��T�ƾ�)MY��̇��r�'�3�� �M�#uh�~��[sS�Xm?ː���S�ר�.=Hg�����X�u�^e�u2�G��T��5��������r���{>Oe~��;�~ �tx�7AK&��/��>��23߃Ӭm �;���k(%J�Ɂ�U����*���<o �*�_ŧ��      v	      x������ � �      `	   M  x�}�Mn�0���)t�"�g�,]�+��*lg��~�n��S���(�|�rLC��sYӭL��
��OH'm%�V��ze�hxq��Cw/�{E�%���)�A��	ѥ~xʡ���V��MC� h��X�ˏ�I���u^E��p� �k�C�0-:��"�N �X�G�n����zc�;@�(�Lk?˜槼�iM˳>�SY��f� �1���{���K����?@�F\�cZ���w�Rۺ���d� Z��<_�P�\���Z$�&�Љ{N�z�J����Z
J�&ĺ�[�ŵ����D��7������q.O9�.��ϵy�nuP}������.����W����2���m�E�Q�i��ZӰ�Th\�� �=�&��9@@�y�B��L����gUt6�:�-"q-�P��#M��"�9�q��"n#՞�" #�5M�)L��o�ˬi1�`�!{����y.sm��q��9���eI��xek�7��# �}�͌�ҭ�
ً� � ^�r�^_�>���Es���������ԁg�5�rz��g^C�!�o�ȝ]����ݙy#{���x�}����jD�v      \	   W  x�}�KN�0@��)|�Z�����*� K6�T�m�Z$�*��p&�Dڴ8���b�(��W�C��m6��!�#�<C���4�b�����B���e��}���$��ѐ�Sj�ߩD"�����|r��_�vDJ�FiDhgG��[JUY"P�&r�{�?�K�	��6�֣���d��@������|6?�_g����"�Z�A'��|_�������9&�\j��(��J�¶)�ZȆ[<f7��YH��*�sj!/y��]&��ʑjn�c�v;�H6-�sJ풴�) n�XL4����]�
٭�F���cU(1qWk�{��q"	+b�b���A��{����)      n	   Q   x�}���0��0E0�;�f��s�U�~*%����fy�����~R�}�?������%����m��� �'%���+@!�      p	   ~   x�}��1cS�8�G-��:y.1��b
rM1أ��a=0�2���er�W�A���I� I��BC�f;熄��a�����7$�x�cT�V�ƽu����#�_�[`�EU�$�&"�|B�      b	   �   x���j�0�ϳO�h�d;?�PZB��T=�"�u���I.��+����0�PD#Y�.˜���/�xa���c�y�Β�&	~�=Κ�&:�]3���2[�FOƠ�I�O�~�kڠ_r�յ��Ku���t�қ�����j�U�+�� dp,�#�#ܨ��>h���Mx���C&k�٦��B����W���=&�&N��LD�hQ�      ~	   |  x�͓�j�@�Ϛ��ؙ����IL�$��Hi$�ƒ��3����%�2�����f�8��i
Bt�<wC˫� �:���vѿ���Њ��:5���S[��zW��"mAo��VAJʮ Fn�9�ݐ�n�yU��:�q��ئIql�@���3���:��d�5���\��-�7����ާ���4���W�����4�'L=�|�5~��]�+��'�s+��qN�
b��z�b8Ns� "NS�'��xץ����_��q�� ��%U�54Ԕ�ml%	�K���"L�z��W�F+xYU�`kU�Y��B�Qr���9��+��W�\B ǭ���
b�E�#��i2h���_A,�����G��4��ܙ܋]A�3�~�U      l	   �   x�}�;��0Dk��@%R��{�4�%)��wK���$�{��p$�$�.�K�	�E�(K�V���!��|��v)k��Fh�}=&!x�!�����9@O�>tv�-'iCtx$���9�M����3����A�!},R�Y�z6�5�-�B�����S�~�E +#�m���#��X7�j����L({���A����\� ��~����,�m��'�V���ۍ�LD�%~�      f	   �   x�}��!E�vi �߀jI�u$H90a���M6H�:���Ч�C�@�.8 �i�{EB��O�V"-c�]��y��*�=��l�7� c;ǂ�(�~9���]�V� ����"�8H�p��C}�(�h�I�rӘ�ѣT��+�o-���{; ~f~hq�      h	     x�}�[�� D��U���	�%�_G�g�`����9݀Q������/�_�?�'�IV\��np7�(���2�@�9^��f��ȹ���~PNΟ�0a��fT41k;�ȅ���E�2��w�<�_Ec��8�WO;�JT5����ee_�W[���>+��˼� QZ���*���,��"2JB����6�F/����iw�I���n^��l��b�9����l��#a�?2^������ţ���nׇ�?�&����$E#��T��4���*�Ӗ|��α~�}�+��0�����Ǽ��юŜ��C��b�^�%MŖZ��I������5"���o��mD���s��[�2"��_=퍞�i[ȼ*m�wӞ5�A y��t0�C�D,�{���z3S6CN�G}� ����Y��z��z:P'����.�R�����,����A�g���VU'����r!�0� ��)��"�5�(756$��Vw�!�J6�qD�W����YN��wmD�#L����/
��kB�Iyu{?o�Xxq4�kMYJ�=��!���[���VL����f�7�?M�l�96'I���Y��Xy���)nY�W�{�Zl�74��95W�%
�����ˮ�nyQnX��C55-����AnF����!�O��އ�^��D��/[�"���I��䣉���ʲA`z.�3�ڰ���A�j��"	
��>"ȇ��2w>����Tw� �K6���_���^��. �[�|�      j	      x������ � �      Z	      x��Zے�Fr}~Ey"���A�o���H���!R����@5Pl U�j>�#��������	?X1�����<����R�6uk+�Tc��dRWgW��tu3��Lj���,n��d��O���ͯ^��)�[v���A�-�
��'���=:��.����Y����N}�}�Jי�T���k���c��Τ��F��l�v'�YBn���WE�6��Ml�w>I]5;���k��_̮>���Z,�d~;��2YlW����G���Hi���d��qe�r�ˑ*����u��S�����MU�UWjO񳷵m��鮵��T��MikB���i�2}� �>��۪{��N��]���Z��[vtr�qB��r?R'�r߆h{���lQ����Nj_:��[�uy!^�j(�MF���j�n��� J��u�{�e�jYB�U��߮J��sҢ�����<i�����c�v%,��a�'�On��d>�O��MgW���:G,u�ȩ��(n��K�u�{W��T�Ôͬ�:E��c���͠c�c�C=���u�/�S�u���z{��Ju��(�BWU��J�+��\4A2N�����!-���m�!9�/]�j�FW�N��mKYcM�;�ZC��VN�J�}L������P�G�I�Fg��J�s�Gtq�s[�]ٿ7��Ii�	�_-�E|�?�U��GJ�x.���O��|7���ϕ����C�za�zny;�&��f�}��e�]�N׷�ʅV�t���U �0֣x��N!N���dD��p_�8����
9�t�AF�%������DRr��icN.�1��Ci����,��ܹ�Z �����Ef�꺗�p\B/9_���n�+ز��M8�����A�� �cڇ���㥮[�kf��Pg$�ҽ�)L�*S#,�k[�����ӣ�H����/�D��3*3�Y��*"��!m]�mE�{�Cʵ�tX08D)�"R�����&8���:,��#�voS�D}cZmK�#�����hd�R�S#����(���MRt����]|��W���b��2�\��O�Q��Ie�����WuY�~�L��6ZŠ��	�����Q���ka���kr"�z:��5��ĸ�dl��@���q �k<�8�>�(��`� �*�egAOc�>N���("�
G��HJ��xo�@�!�}4�|ڻ~#��i�zt�(��5��s�eA;����Ñ������O�_�
 �pS��������$i�U.��( �a������l���l�Yg��b�ݮ��j2�����z�\L��W��YE΂���	Z-&d��b� {���o8�N�c�k��SD����m�ȁ|A��휯c����(��a!x(8?��#It%�V��I������.pKA@�!��ȑ�I�쑈J��e�^`�^�
|���=�M��IQ4�f~��2�וűR] ���L� :�I� /�f��_u4�� k�u'-�}�W��=!�Ǻc�{1%Ğ��m��F� {���-�D^�=5��ê�a!�n�Nm,��lK���N�߁���(�S�O�Л���f�W�hX�����>���S�{F�'[�|/l�U�̘E±�ȁ�\����#���81��(��y�r o ��G��?�$R<Aq@��#t&1�LM-=Q/!J��Z�xG�\�������E�``�N@Q��6Ă���/]\C��1_�Ҝ(��~y�c�*k�,�>�����yI�Xݢ�bv�;2,nHq�n�O�?S�Z�h6,�Gnj�-1�����Ods`��c��$�*o�#����rqc�W�Sg��&8ಯ�?&5�%���>�8*�ˠ��Jg,�tL���1ě����Z��3��0fq�T��_��_��A���Bc����s�`5y����9��W�3dwڐ,9�Hv'��c~k�ml�q:Ncp�;�vkߵ����@�PG�WW����?�'�O�xy;]'��v�y��%D@��
�>�0�k���Ə[�a��db�:�x;ؿ��Ҟ�|v���]�.�I�*�\>|�IO��q0iC2 vu�s�L��+H �X���)��ն�_�������B��^:<�n�D�f_�<�=pu{��[}q���BHH��W�'�@qN����ўH�;������;�[B
J+J�{l� �7�llv�L�~zK�,�4�W� �����Էe0�Z�mgA�e/"]������-�#z3q��{b�"���3Pq��on5{�G��c�`��l�B;AݻR|{��1��S�$��������`�y]�n�j�*�[�G����D��[� �{�La�2;� 	� )%H�O���|����nl�|:I24M(9���6�x��fc;fg���m|�8�uEvw��w�����Q�� !���}�����SjA���'�~GXS{���'�﹓�ӗ�{�	���r��of�=�ċ_\Ko0rcS��p�W�)S��m�셅;	�������̷�U:/���-��J5�9Ȥ���z�a�.'DBΚ�dn�+�ZR�>�!�,���"�ˤ�Cu��g�234dd$'X���$ 0�ew���`k�|l��Y	���h�F���;�X�x�'_�v�@��q���5�� �ٽ��ئ�2�j�9B�R���=�k�Ki,
��흂��r�8�ұk��s`��mF�$������YH�l*;b`Ӵ�܅p��.7 gP���)d����S=jԲ�x�A>���@"�A�G���ףT&qر<K�׋��+��)� )���+X���`$�/M�C�t�Cf��#��8P��Bi,!Y�[b�E `��á��-�cԩ�Dq������/j6?�IY�s#�(�G�R$��1�w����#U����];j�8*_��@(21_Zfkۑ�S"M���Neّ3$��\Ưd4�^�#��P&bC@�8���M҅e���5~�46=G< �2w�+o�����$l��p?��T侷��U�,dLmA��`pTN�.�<���}�욄�иV��i�����~k������}�������e��7�oƟ�_�PO�o��a�������g��hT|�b|Ѱ���u�G�Ji���2��L��3O.1���$�	�q�́Xq�N�<�l�YB#_�Ȧ���e��iUZ"Y�7�r�o����p+��=7ur�,�>@�`"�/�I����Vr�_�H�����g4��0O������s�Ȓ�l�C�d.ں�zP����SI�R�9����U����-�ѹ'%z���><�5�K��HìBZJ���-E�&����P���5J�%#��dD$�(QR���� �-2������S-�gNa8�29����&V����>�Z��-����v��4[g��v�]L��b5ٚ�n����^�)����d��� �Y'��z={z����e���ܘMf[0��2J�I�O;��(��~vG��5�iFM$>�l�<���F<.-��9�w{�~�)��pI�'>�q6{�@P�S���N�qx�[�)� r��v���I;$�0�-����\Z��?��ٴgT��6BFO��ݷ8�u>���LJ䶍�����w#��vP.j�Օ�P��pdr=B���sȜ3ER�
_�kD0Q�x���BN�������]���
� `�7Ѵ��r�4��-3���y�0RF��+^iTO}�[�]?���2^�CB�$b�	�!{�k��������-e�T��R�:�l�A�q�۾�vH޶�2��i�Z�裥9�r=(M���$*�x�s1!�C������ѐ��h9��Sc��ڀV���n"�����۷��Aŕ�����X���R�p�0���?�C�T.���CD����"��P=$ ,; �S��t��[m�8~i���k��n?�n滅�g��~3Ym�l���E����q|��ަs�.����o�������t������Ȭ[��B<��ŭ\�'Sl?�<��� �2�ȷN�d���L#3z��f~�SeO�-޻���8;�z���y��>����8� x   !��4�+[iK8Uf;�گ&ί���yz0t�?w�Z�yd4��o�¹&Ǒ�������"^�	���$��h�,A�h���-�x�\,ǳ�j��l����n�_����z5�ۉk~M^�x����Z      |	      x������ � �      x	      x������ � �      d	      x������ � �      t	     x�}�MN�0F��)z���;�7`�f�j$�8?1T�L#u��W���i��r�z�6o�o��k�~a��o4��4E��m����t
��+�A��D�{�I�j]3�"�I:U0MI����d�MU��c��!��Lr>ݣ�#N����0�5��@ħJ$������r��\�b��8'�T7`K�T��P�I�K%g���+a1��(Suv��E]L] Z�nqT��@7�.�RI�.}�V%�5�IL��ZZր��v�1,��z�nZ�o��}�����      r	   �   x���MJDA���S�LH*?����;q�j@�����>Đ]�/U�T�t�|{%�=�22�x��oM4/���!��[��f
%�k��iFqc;���j�Y+���!պ��璥�7��Rpx �	ۯ�"c��o�'!Y-z&�p�E�R��wn*�i��*�M)�m���/�c<��Q�      ^	   N  x��X[o�6~��A�-`+�.��dzY��KW���Z�m�钒o�~���8i&�a����Il�s>��E��'f��6�m���L�$�)��"�	�I���>Q<ȇ�G�)z��$E��$I�'"�:w�sMQV��j��~� &�4���M[�)O ̊(*�< Q��Y�(�p���L��g�5c*�B ؼ��5�*.c���8\�.�]_��ڱ!���?\],���E^���mM�����G��������_ze��ut\�:�n�L�#��WͲ�$ʝ?^a��}�Vw���DA������;�4�,rzQܣ���\�v�ǀ���S<I��⌛GdO�4_,�.U.)��	�+�Hd�3�!I�,��A:���4Z���k%*����+ߠ'V?�~N�0�[��sx:ە��vG5�pؕ��YU�s�v��aYKj�G�nk��̬����N��Kj���K���aV��X�n��pԗ���vW��]ܕ�F���[���Kr73�p�L�Dd0������~�p��S�~.a�d3�Ӛ�}�4�b�ذ��t�J36L�y�j��a��~btn�(*)�P��ܾ��=�������T�A5K���V�5C���3��z�Z���״ah��E �6L6�fPq�J+���7��pӚ"ۍ>*	o�Q��и-V*��F�=�
���p�(Z���z\��U܎�?�jԚS\�l��sB0j�ƴ\�(߱�n�ޏ��Rm���m��p�3h��ܾs̕����kɁC&�D7qD��v6�-���ǣ3�6���Z��5"w��yy	ۥ�J3ZPs��km}�*-� ~��(^z�^��?��F�h��.ͩl(:S­��nq���Y��5�XAL졡3���uQ�m/+�� �%`:�9J]�F!��a�H�Q�0��k��vK���b@{��l�j�яִT��67��0F�[0YQ��kf�|�x�X�
�x�`��u� �6�V�@����]�z���raa>��T�������	�pMi�
�R�BO�w_GZ�FH5�}m�QtA�57�PC�\eSap?z2w�:��?+�����=�Xk�-ۭ��l��7���L+���n1�3&8�0��w*V�
��[_��(�6>�+&��M�m1.�9GV�qlf��@h��)$�Y�%��rG�>�;g_1�D�B�j�q6���|�X/G�N�CN^��T+���:�ص�MNq���Zpׅt���k��<�X�Զ��^2c|?ҕ�:��
N�ǆyq$$ɲ�O�99;��|�vv$��;c�K��ώy�I7ʍ&7L�g?�Okn��������O~��M���#���Y��0�r���&���C��e�'�Ǚ����qf���̴�"J�,�dQ�'r7G�n��;����r�L�0»�4γ>����D��Ea�N�$E�i�(�x�ų�oa��w��N�D� ���9<��A��Y�0�{"��#w]��e���}ȩ�%�W0MI8%}"��X�Z��v�{X$�pR��H���q��Il*��B�*K,��H�S��\��a��,�Q�	�Z����޶�}��~���bi�Q��I�'��_��p���z      V	   �   x�U�A� �;��X�e�����(I��gv�B�HP��Ϯb��r\ 7�c�v�)��4�J7/BW�a�ʴ�����He�㬔r1����oz�<��ν�:�����4e���RNI�I��5�r�]�~Zk?�Q�      X	   �  x����r�@E��+X�e<���hĮ�m!@���"a^2᩠��(v�K�H�����{��N�5P�_^S3_���i�i 4��O�F'�N��7==����Y8�g*�/E8�~�پ����<L����Q�� ��M`u�<���ȥ���1N�(@E�}����m*�T۫���R�TT5���p� Xd�ҏ��u�l�~�->&ˠ��w��9,����W��G�JP}Ճ��,P�3Oz�3�7o��"]}\Ͼ�a>��$>��,���N:m�g���)������W��?�T�ڬ�N����hE�[��
�Zs��7N^���@�*��R�F�S��O+N�o��m~�y��}
�W��4fPL�ήh�����K|{�0`�v�N���x��Hk{7�/���>в��ވ��k��({�IJ|���h`�1b��U�4'|h�kb���uD�Q$�%��""��e���6:�?��Y�Q�����}lGUY�B)QU��� S.2]�|!�Z�7'�0      z	   �   x����
�PF��S�^�Ώ�ݹ2�h�"Z�A������
C,���s������\��h���ye���:�ʐ�����|8��z�6
,��%G�!����"+�˩}d�-�C2���_��+v��9ILB�:��;f�*���A��a�m��#;�L�XM��UKW /�h~�     