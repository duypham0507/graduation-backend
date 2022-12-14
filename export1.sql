PGDMP     "    5            
    z            blog_am_thuc    14.1    14.1 /    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    66972    blog_am_thuc    DATABASE     o   CREATE DATABASE blog_am_thuc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.932';
    DROP DATABASE blog_am_thuc;
                blog_am_thuc_users    false            ?            1259    66992    category    TABLE     ?   CREATE TABLE public.category (
    id_category integer NOT NULL,
    cat_name text NOT NULL,
    slug text NOT NULL,
    del_flag integer DEFAULT 1
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?            1259    66991    category_id_category_seq    SEQUENCE     ?   ALTER TABLE public.category ALTER COLUMN id_category ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_category_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    213            ?            1259    75247    post_comment_reactions    TABLE     ?   CREATE TABLE public.post_comment_reactions (
    id_comment integer,
    id integer NOT NULL,
    id_user integer NOT NULL,
    reaction_type text DEFAULT 'LIKE'::text,
    del_flag integer DEFAULT 1,
    create_at date NOT NULL
);
 *   DROP TABLE public.post_comment_reactions;
       public         heap    postgres    false            ?            1259    75246    post_comment_reactions_id_seq    SEQUENCE     ?   ALTER TABLE public.post_comment_reactions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.post_comment_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    220            ?            1259    75194    post_comments    TABLE     ?   CREATE TABLE public.post_comments (
    id_comment integer NOT NULL,
    id_post integer,
    content text NOT NULL,
    id_user integer,
    del_flag integer DEFAULT 1
);
 !   DROP TABLE public.post_comments;
       public         heap    postgres    false            ?            1259    75193    post_comments_id_comment_seq    SEQUENCE     ?   ALTER TABLE public.post_comments ALTER COLUMN id_comment ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.post_comments_id_comment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1
);
            public          postgres    false    218            ?            1259    75179 	   post_tags    TABLE     k   CREATE TABLE public.post_tags (
    id_tag integer,
    id_post integer,
    del_flag integer DEFAULT 1
);
    DROP TABLE public.post_tags;
       public         heap    postgres    false            ?            1259    75164    posts    TABLE     ?   CREATE TABLE public.posts (
    id_post integer NOT NULL,
    author_id integer NOT NULL,
    title text NOT NULL,
    slug text,
    content text NOT NULL,
    create_at date,
    search tsvector NOT NULL,
    del_flag integer DEFAULT 1
);
    DROP TABLE public.posts;
       public         heap    postgres    false            ?            1259    75163    posts_id_post_seq    SEQUENCE     ?   ALTER TABLE public.posts ALTER COLUMN id_post ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.posts_id_post_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            public          postgres    false    215            ?            1259    66983    tag    TABLE     ?   CREATE TABLE public.tag (
    id_tag integer NOT NULL,
    tag_name text NOT NULL,
    tag_description text NOT NULL,
    del_flag integer DEFAULT 1
);
    DROP TABLE public.tag;
       public         heap    postgres    false            ?            1259    66982    tag_id_tag_seq    SEQUENCE     ?   ALTER TABLE public.tag ALTER COLUMN id_tag ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tag_id_tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            public          postgres    false    211            ?            1259    66973    user    TABLE       CREATE TABLE public."user" (
    id bigint NOT NULL,
    name text,
    email text NOT NULL,
    mobile text,
    password_hash text,
    info text,
    avatar text,
    permission text DEFAULT 'USER'::text NOT NULL,
    method text DEFAULT 'PASSWORD'::text,
    salt text
);
    DROP TABLE public."user";
       public         heap    postgres    false            ?            1259    75268    user_id_seq    SEQUENCE     ?   ALTER TABLE public."user" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999
    CACHE 1
);
            public          postgres    false    209            ,          0    66992    category 
   TABLE DATA           I   COPY public.category (id_category, cat_name, slug, del_flag) FROM stdin;
    public          postgres    false    213   u8       3          0    75247    post_comment_reactions 
   TABLE DATA           m   COPY public.post_comment_reactions (id_comment, id, id_user, reaction_type, del_flag, create_at) FROM stdin;
    public          postgres    false    220   ?8       1          0    75194    post_comments 
   TABLE DATA           X   COPY public.post_comments (id_comment, id_post, content, id_user, del_flag) FROM stdin;
    public          postgres    false    218   ?8       /          0    75179 	   post_tags 
   TABLE DATA           >   COPY public.post_tags (id_tag, id_post, del_flag) FROM stdin;
    public          postgres    false    216   ?8       .          0    75164    posts 
   TABLE DATA           f   COPY public.posts (id_post, author_id, title, slug, content, create_at, search, del_flag) FROM stdin;
    public          postgres    false    215   ?8       *          0    66983    tag 
   TABLE DATA           J   COPY public.tag (id_tag, tag_name, tag_description, del_flag) FROM stdin;
    public          postgres    false    211   9       (          0    66973    user 
   TABLE DATA           p   COPY public."user" (id, name, email, mobile, password_hash, info, avatar, permission, method, salt) FROM stdin;
    public          postgres    false    209   #9       ;           0    0    category_id_category_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.category_id_category_seq', 1, false);
          public          postgres    false    212            <           0    0    post_comment_reactions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.post_comment_reactions_id_seq', 1, false);
          public          postgres    false    219            =           0    0    post_comments_id_comment_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.post_comments_id_comment_seq', 1, false);
          public          postgres    false    217            >           0    0    posts_id_post_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.posts_id_post_seq', 1, false);
          public          postgres    false    214            ?           0    0    tag_id_tag_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tag_id_tag_seq', 1, false);
          public          postgres    false    210            @           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 24, true);
          public          postgres    false    221            ?           2606    66999    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_category);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    213            ?           2606    75274    user login_method_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT login_method_unique UNIQUE (email, method);
 D   ALTER TABLE ONLY public."user" DROP CONSTRAINT login_method_unique;
       public            postgres    false    209    209            ?           2606    75272    user phone_user_unique 
   CONSTRAINT     U   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT phone_user_unique UNIQUE (mobile);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT phone_user_unique;
       public            postgres    false    209            ?           2606    75255 2   post_comment_reactions post_comment_reactions_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.post_comment_reactions
    ADD CONSTRAINT post_comment_reactions_pkey PRIMARY KEY (id_user);
 \   ALTER TABLE ONLY public.post_comment_reactions DROP CONSTRAINT post_comment_reactions_pkey;
       public            postgres    false    220            ?           2606    75245     post_comments post_comments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id_comment);
 J   ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_comments_pkey;
       public            postgres    false    218            ?           2606    75171    posts posts_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id_post);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    215            ?           2606    75173    posts slug_unique 
   CONSTRAINT     [   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT slug_unique UNIQUE (slug) INCLUDE (slug);
 ;   ALTER TABLE ONLY public.posts DROP CONSTRAINT slug_unique;
       public            postgres    false    215            ?           2606    66990    tag tag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id_tag);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    211            ?           2606    67001    category unique_slug 
   CONSTRAINT     O   ALTER TABLE ONLY public.category
    ADD CONSTRAINT unique_slug UNIQUE (slug);
 >   ALTER TABLE ONLY public.category DROP CONSTRAINT unique_slug;
       public            postgres    false    213            ?           2606    66979    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    209            ?           2606    75174    posts fg_author    FK CONSTRAINT     ?   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fg_author FOREIGN KEY (author_id) REFERENCES public."user"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 9   ALTER TABLE ONLY public.posts DROP CONSTRAINT fg_author;
       public          postgres    false    3207    209    215            ?           2606    75188    post_tags post_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_tags
    ADD CONSTRAINT post_id FOREIGN KEY (id_post) REFERENCES public.posts(id_post) ON UPDATE SET NULL ON DELETE SET NULL;
 ;   ALTER TABLE ONLY public.post_tags DROP CONSTRAINT post_id;
       public          postgres    false    216    215    3215            ?           2606    75200    post_comments post_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_id FOREIGN KEY (id_post) REFERENCES public.posts(id_post) ON UPDATE SET NULL ON DELETE SET NULL;
 ?   ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_id;
       public          postgres    false    218    3215    215            ?           2606    75183    post_tags post_tag    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_tags
    ADD CONSTRAINT post_tag FOREIGN KEY (id_tag) REFERENCES public.tag(id_tag) ON UPDATE SET NULL ON DELETE SET NULL;
 <   ALTER TABLE ONLY public.post_tags DROP CONSTRAINT post_tag;
       public          postgres    false    216    211    3209            ?           2606    75205    post_comments post_user    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_user FOREIGN KEY (id_post) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_user;
       public          postgres    false    3207    218    209            ?           2606    75261 $   post_comment_reactions react-comment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_comment_reactions
    ADD CONSTRAINT "react-comment" FOREIGN KEY (id_comment) REFERENCES public.post_comments(id_comment) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_comment_reactions DROP CONSTRAINT "react-comment";
       public          postgres    false    220    218    3219            ?           2606    75256 !   post_comment_reactions react-user    FK CONSTRAINT     ?   ALTER TABLE ONLY public.post_comment_reactions
    ADD CONSTRAINT "react-user" FOREIGN KEY (id_user) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.post_comment_reactions DROP CONSTRAINT "react-user";
       public          postgres    false    220    3207    209            ,      x?????? ? ?      3      x?????? ? ?      1      x?????? ? ?      /      x?????? ? ?      .      x?????? ? ?      *      x?????? ? ?      (     x?uSMn[G^??B+?b??- ????m????p8??'=Ւ??=B?=C??Ez??????<8|$?~???¥p?<|??k^??2?????????????:B???????*??Ç????/???????Ch?UY?????ɶ?}????a??w???5???c??????PW?nW2???4E?????d??RW??~???????ǋ??O?C??ɒw????_?.??כo????t???5?t??tl?C攋)?H4Z??Ѹ?9??z_?b?,?0R?1˂Λ?\EϦ?-???0?B?m??%'!G!???b??>?F??R?~o?9?}?qꋛ???[&bQ&Ɂ??Z9k?? f??.??Ȭ?????B??S?cֆ*CjMJA?,b?!	G?|HJ??5UC-?X???k(YKc?3烆??}T???o?}????|?????????/)?6@V?Ǌ???ujGO@}?
k?????????rmC!z?Ҙk?KLV?)?J?!??^????q?@e?Y???`?8%*?Y?r????XT?T??C?}c?k-?m????o?	\rmT5?\4~??g?s??g?k??sw=?Wı?f?????%1m?ڊ??L?j`l?5%??O)k4a1mˬH\I-?Xk,\?0M?z\`??2ږ??????
??U???b?EZ?ڔ??b???~I??aX?z?????n?V?????????H6??*^l?/??v~??߼?=?x?۽???????V??Rc*??M?"?T?x???????h??clJ     