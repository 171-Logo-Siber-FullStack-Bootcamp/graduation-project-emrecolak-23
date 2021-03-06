PGDMP     8    &                z            ecommerceapp    14.2    14.2                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16384    ecommerceapp    DATABASE     W   CREATE DATABASE ecommerceapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE ecommerceapp;
                postgres    false            ?            1259    16410    Category    TABLE     T   CREATE TABLE public."Category" (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public."Category";
       public         heap    postgres    false            ?            1259    16409    Category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Category_id_seq";
       public          postgres    false    213                        0    0    Category_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Category_id_seq" OWNED BY public."Category".id;
          public          postgres    false    212            ?            1259    16399    Product    TABLE     O  CREATE TABLE public."Product" (
    id integer NOT NULL,
    title text NOT NULL,
    content text NOT NULL,
    image text NOT NULL,
    price integer DEFAULT 999 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "categoryId" integer NOT NULL,
    quantity integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false            ?            1259    16398    Product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Product_id_seq";
       public          postgres    false    211            !           0    0    Product_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;
          public          postgres    false    210            ?            1259    25123    User    TABLE     ?   CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false            ?            1259    25122    User_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          postgres    false    215            "           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          postgres    false    214            ?            1259    16387    _prisma_migrations    TABLE     ?  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            z           2604    16413    Category id    DEFAULT     n   ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_seq"'::regclass);
 <   ALTER TABLE public."Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            v           2604    16402 
   Product id    DEFAULT     l   ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);
 ;   ALTER TABLE public."Product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            {           2604    25126    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16410    Category 
   TABLE DATA           .   COPY public."Category" (id, name) FROM stdin;
    public          postgres    false    213   H#                 0    16399    Product 
   TABLE DATA           j   COPY public."Product" (id, title, content, image, price, "createdAt", "categoryId", quantity) FROM stdin;
    public          postgres    false    211   ?#                 0    25123    User 
   TABLE DATA           ;   COPY public."User" (id, name, email, password) FROM stdin;
    public          postgres    false    215   ?)                 0    16387    _prisma_migrations 
   TABLE DATA           ?   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    209   ?*       #           0    0    Category_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Category_id_seq"', 15, true);
          public          postgres    false    212            $           0    0    Product_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Product_id_seq"', 82, true);
          public          postgres    false    210            %           0    0    User_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_id_seq"', 7, true);
          public          postgres    false    214            ?           2606    16417    Category Category_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pkey";
       public            postgres    false    213                       2606    16408    Product Product_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public            postgres    false    211            ?           2606    25130    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    215            }           2606    16395 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    209            ?           1259    16419    Category_name_key    INDEX     Q   CREATE UNIQUE INDEX "Category_name_key" ON public."Category" USING btree (name);
 '   DROP INDEX public."Category_name_key";
       public            postgres    false    213            ?           1259    16418    Product_title_key    INDEX     Q   CREATE UNIQUE INDEX "Product_title_key" ON public."Product" USING btree (title);
 '   DROP INDEX public."Product_title_key";
       public            postgres    false    211            ?           1259    25131    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            postgres    false    215            ?           2606    16420    Product Product_categoryId_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Category"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_categoryId_fkey";
       public          postgres    false    3459    213    211               O   x?%?K
?0?u?)<???2nb	Th???x}g;9_I+e?M0?K??f
?kw1l_??հ???P?l><?!???*           x??V?n???????*Al????v?ֻ????????8??r8CI'T?.ϐJ?۸?ʝ?ɓ?)?+?i??!g?9????4wV5?Z?ϗA?-???????K'?~Gi?iMq????M?>_LESK???.??^?鲓?>M????~?0?O?f?w??+?D??nQ?%???(?4???Ko?G^?I?o??	??w/.??"H??&Q<?#7?C'v??,IQ???tm4?ꔭ?vk?{?;N??]t=3?­0Tp?{QNe??>w?[???TZ??D#?_?V????I??=ͺ???[??:?J?4L?0???K??ftQ}????A$?????x??D?c9?%ف	X|?>V??݃??[.? 笒??T??H?a??d???Ĝf+?e??_8ʐd?؃=???=??
?>??p_?O?4?????M?q?G???>8?t7_??)m????????A?V.*???M??{?i?}??
??*O^
Yp?v????_??֝"\?P????mM?~ف5????????)????(?????A)???9(?V?w,F?\mK^U\R?UkX?ZZB{???M?}$??ջ??d??t?????ܔ????z{?i?|<?=7?ӱi?Tl~?uI?????????????_ȏh{?|飽?????^ɟ6??? ?K???^?ͦ4嵶?????$O???y??#?0~3?&^????gixDɄy??w!tz????2*?????+????〕???5???Na?P^?????nN??M??X#:?d?I8??6v?޲+^????v?3X??VX??? ?(Y???n?V|?0??-Ѯc?*?ù}D??e?b??Q??e?֤x??ZN?ZG?e?l݊?C?aӞ??F?????=?+|<?c?o?$݃?>/Z?iQK?????nK=?	???PggL?70?s7?]????C????`?Z?
N???56??A? ?Z|sF\
e??$Op? Ȝ?6H?5?????E?c.???1d???r4?X???{8?uXi??1A?u?C0'??)
????y???Y/??LA>[??.6G? ?0??~,?q?T\H?????l.?H?[+??k???$?,?m??	??C??k|y':?ꅏ??s?bHbLZ??뚫9|`???9{n???@??rɭ5ITk????E???ۤ?G?+	?x?bطg?a?oX??J=8?k??i;ө??<?{???o?}F???ˊ:?J?x???N8?e각??X?ٕ:?+}ǬlMj??x?`??58??=??hVkC_?)???:??????Y?v?0??q?Z??
4?PC?1?Fb???9?Sb?M?Tc?[Hm4?@???V?6l??k?B?؏?4??]??Q???F?&!.K?t~h?f?u??Ә,?>+?t???5?G?4d??+O??i?v9>.?????%?o?7?5CO?@??ȼd??????_s?Ԁa??T?^?N???L??Y??$??w?0rk?,pƷ???o4Ǵ?o8 ΢<I??y*?{??'???l??.˃q*??=;;?/)T?           x?e??n?0 Eg??M?V??$?H??.?qx????[ё???GW?D??V?B???T,+!?U?Ba?\?o?u??%???Z??jp?a?F6?"??t'?䰺???	?$?J\+???m?p?"???*?a?"?
[?1???K4q:??i??????d@?O?'ͪ?w??P????6???Z??u7*??s????{??V|6??Cev?0O_,j;×???y?? ??BTg??????)+8~???|ّU? ?O?m?           x?u?An1E??Sd_? %?}?? ?!QT?M]?΢?/]????F$?????a?Im?D0k???4?????dܵ??Sg?ns?4??]?"
?Dy?q?7@?-C?	JB~?v <?????ʟ[(?Ȅ????|????ſ?ο?????y?06??????9??T???4l?Ըe󾆯???C13?@QSQ?G6?rͪc`v?\f???j?euc?;?<a>P=0쳆?!???????}~?l?Q\o???&B,"<L?S?δ:Z	I?B?tD?ɵq????ν?^՗LUC?m?r?|X?'۝?>e8`?X?ı@|???!??????	??@???k?B=9&???????l4?hs?*T?l??W???^"if??&?r??	?h?-??@??5G?"?2p?ϕ??No??????;???8?U??e??e???J-?Q!#҉[,bmb??5????<M?rS??ė?ƫ3?}?(?P?^Ci???K+??^??o?????????n?????     