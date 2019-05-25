PGDMP                          w        
   To_Do_List    9.3.25    11.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16458 
   To_Do_List    DATABASE     �   CREATE DATABASE "To_Do_List" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Ukrainian_Ukraine.1251' LC_CTYPE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE "To_Do_List";
             postgres    false            �            1259    16470    tasks    TABLE     �   CREATE TABLE public.tasks (
    id integer NOT NULL,
    name character varying(250),
    is_complited boolean,
    user_id integer NOT NULL
);
    DROP TABLE public.tasks;
       public         postgres    false            �            1259    16473    tasks_id_seq    SEQUENCE     u   CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public       postgres    false    171            �           0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
            public       postgres    false    172            �            1259    16479    tasks_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.tasks_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tasks_user_id_seq;
       public       postgres    false    171            �           0    0    tasks_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tasks_user_id_seq OWNED BY public.tasks.user_id;
            public       postgres    false    173            %           2604    16475    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    171            &           2604    16481    tasks user_id    DEFAULT     n   ALTER TABLE ONLY public.tasks ALTER COLUMN user_id SET DEFAULT nextval('public.tasks_user_id_seq'::regclass);
 <   ALTER TABLE public.tasks ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    173    171            �          0    16470    tasks 
   TABLE DATA               @   COPY public.tasks (id, name, is_complited, user_id) FROM stdin;
    public       postgres    false    171   �       �           0    0    tasks_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tasks_id_seq', 6, true);
            public       postgres    false    172            �           0    0    tasks_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tasks_user_id_seq', 1, false);
            public       postgres    false    173            )           2606    16492    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public         postgres    false    171            '           1259    16490    fki_user_id    INDEX     @   CREATE INDEX fki_user_id ON public.tasks USING btree (user_id);
    DROP INDEX public.fki_user_id;
       public         postgres    false    171            *           2606    16504    tasks tasks_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_user_id_fkey;
       public       postgres    false    171            �   �   x�=�A�0E��S� ��ЭnL��2�haH��p{w����TpD�߄��cft<Ї�"T�����tF����<YaI���Hq�tIw*��%�q�M��y��Z�~����5Y���j�82/��/�6��7����)n����vz��F�J���2A3     