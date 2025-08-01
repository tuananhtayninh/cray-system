PGDMP  #    6                }            craysys    16.2    16.2 V              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16544    craysys    DATABASE        CREATE DATABASE craysys WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE craysys;
                postgres    false            .           1259    17073    account_payments    TABLE     �  CREATE TABLE public.account_payments (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    payment_method character varying(255),
    account_name character varying(255),
    account_number character varying(255),
    bank_name character varying(255),
    phone_number character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.account_payments;
       public         heap    postgres    false            -           1259    17072    account_payments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.account_payments_id_seq;
       public          postgres    false    302            	           0    0    account_payments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.account_payments_id_seq OWNED BY public.account_payments.id;
          public          postgres    false    301            "           1259    17004    banks    TABLE     �  CREATE TABLE public.banks (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.banks;
       public         heap    postgres    false            !           1259    17003    banks_id_seq    SEQUENCE     u   CREATE SEQUENCE public.banks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.banks_id_seq;
       public          postgres    false    290            
           0    0    banks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;
          public          postgres    false    289            �            1259    16585    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false            �            1259    16592    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false            &           1259    17023    cart_product    TABLE     �  CREATE TABLE public.cart_product (
    id bigint NOT NULL,
    cart_id bigint NOT NULL,
    product_id bigint NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
     DROP TABLE public.cart_product;
       public         heap    postgres    false            %           1259    17022    cart_product_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cart_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cart_product_id_seq;
       public          postgres    false    294                       0    0    cart_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cart_product_id_seq OWNED BY public.cart_product.id;
          public          postgres    false    293            $           1259    17014    carts    TABLE     y  CREATE TABLE public.carts (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.carts;
       public         heap    postgres    false            #           1259    17013    carts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    292                       0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    291                       1259    16882 
   categories    TABLE     �  CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    slug character varying(255),
    image character varying(255),
    parent_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false                       1259    16881    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    270                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    269                       1259    16979    certification_accounts    TABLE       CREATE TABLE public.certification_accounts (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    contract character varying(255),
    front_id_image character varying(255),
    back_id_image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 *   DROP TABLE public.certification_accounts;
       public         heap    postgres    false                       1259    16978    certification_accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.certification_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.certification_accounts_id_seq;
       public          postgres    false    286                       0    0    certification_accounts_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.certification_accounts_id_seq OWNED BY public.certification_accounts.id;
          public          postgres    false    285                       1259    16839    comments    TABLE       CREATE TABLE public.comments (
    id bigint NOT NULL,
    comment character varying(255) NOT NULL,
    project_id integer NOT NULL,
    keyword character varying(255) NOT NULL,
    is_used integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false                       1259    16838    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    262                       0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    261                       1259    16817 	   companies    TABLE       CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying(255),
    tax character varying(255),
    email character varying(255) NOT NULL,
    is_receive integer,
    address character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.companies;
       public         heap    postgres    false                       1259    16816    companies_id_seq    SEQUENCE     y   CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.companies_id_seq;
       public          postgres    false    258                       0    0    companies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;
          public          postgres    false    257            2           1259    17092    contact_order    TABLE     @  CREATE TABLE public.contact_order (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    telephone character varying(255) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.contact_order;
       public         heap    postgres    false            1           1259    17091    contact_order_id_seq    SEQUENCE     }   CREATE SEQUENCE public.contact_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.contact_order_id_seq;
       public          postgres    false    306                       0    0    contact_order_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.contact_order_id_seq OWNED BY public.contact_order.id;
          public          postgres    false    305                       1259    16828    departments    TABLE     �  CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    parent_id integer,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false                       1259    16827    departments_id_seq    SEQUENCE     {   CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.departments_id_seq;
       public          postgres    false    260                       0    0    departments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;
          public          postgres    false    259                       1259    16871    deposit_requests    TABLE     �  CREATE TABLE public.deposit_requests (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    amount numeric(15,0) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT deposit_requests_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'completed'::character varying, 'failed'::character varying])::text[])))
);
 $   DROP TABLE public.deposit_requests;
       public         heap    postgres    false                       1259    16870    deposit_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deposit_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.deposit_requests_id_seq;
       public          postgres    false    268                       0    0    deposit_requests_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.deposit_requests_id_seq OWNED BY public.deposit_requests.id;
          public          postgres    false    267            (           1259    17044    expenditure_statistics    TABLE     �  CREATE TABLE public.expenditure_statistics (
    id bigint NOT NULL,
    money numeric(15,0) DEFAULT '0'::numeric NOT NULL,
    user_id integer NOT NULL,
    month character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 *   DROP TABLE public.expenditure_statistics;
       public         heap    postgres    false            '           1259    17043    expenditure_statistics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.expenditure_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.expenditure_statistics_id_seq;
       public          postgres    false    296                       0    0    expenditure_statistics_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.expenditure_statistics_id_seq OWNED BY public.expenditure_statistics.id;
          public          postgres    false    295            �            1259    16619    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16618    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    227                       0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    226                        1259    16806    faqs    TABLE     �  CREATE TABLE public.faqs (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.faqs;
       public         heap    postgres    false            �            1259    16805    faqs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.faqs_id_seq;
       public          postgres    false    256                       0    0    faqs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;
          public          postgres    false    255            �            1259    16631 	   histories    TABLE     �  CREATE TABLE public.histories (
    id bigint NOT NULL,
    content json NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.histories;
       public         heap    postgres    false            �            1259    16630    histories_id_seq    SEQUENCE     y   CREATE SEQUENCE public.histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.histories_id_seq;
       public          postgres    false    229                       0    0    histories_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.histories_id_seq OWNED BY public.histories.id;
          public          postgres    false    228            �            1259    16669    image_projects    TABLE     �  CREATE TABLE public.image_projects (
    id bigint NOT NULL,
    project_id integer NOT NULL,
    image_url character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    is_used boolean DEFAULT false NOT NULL
);
 "   DROP TABLE public.image_projects;
       public         heap    postgres    false            �            1259    16668    image_projects_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.image_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.image_projects_id_seq;
       public          postgres    false    235                       0    0    image_projects_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.image_projects_id_seq OWNED BY public.image_projects.id;
          public          postgres    false    234            �            1259    16611    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false            �            1259    16600    jobs    TABLE     �  CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    16599    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    224                       0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    223                       1259    16851    logs    TABLE     �  CREATE TABLE public.logs (
    id bigint NOT NULL,
    transaction_id integer NOT NULL,
    log_message character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.logs;
       public         heap    postgres    false                       1259    16850    logs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.logs_id_seq;
       public          postgres    false    264                       0    0    logs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;
          public          postgres    false    263            �            1259    16783    messages    TABLE     �  CREATE TABLE public.messages (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.messages;
       public         heap    postgres    false            �            1259    16782    messages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    252                       0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    251            �            1259    16546 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16545    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215                       1259    16966    missions    TABLE     _  CREATE TABLE public.missions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    price double precision DEFAULT '0'::double precision NOT NULL,
    project_id integer NOT NULL,
    comment_id integer NOT NULL,
    image_id integer,
    status integer NOT NULL,
    no_image boolean,
    no_review boolean,
    checked_at timestamp(0) without time zone,
    num_check integer DEFAULT 0 NOT NULL,
    latitude character varying(255),
    longitude character varying(255),
    completed_at timestamp(0) without time zone,
    link_confirm character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.missions;
       public         heap    postgres    false                       1259    16965    missions_id_seq    SEQUENCE     x   CREATE SEQUENCE public.missions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.missions_id_seq;
       public          postgres    false    284                       0    0    missions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.missions_id_seq OWNED BY public.missions.id;
          public          postgres    false    283            �            1259    16745    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         heap    postgres    false            �            1259    16756    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         heap    postgres    false            �            1259    16689    notifications    TABLE       CREATE TABLE public.notifications (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    status integer DEFAULT 2 NOT NULL,
    user_id integer,
    role_id integer,
    support_id integer,
    file_path character varying(255),
    send_group_id integer,
    read_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.notifications;
       public         heap    postgres    false            �            1259    16688    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    239                       0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public          postgres    false    238                       1259    16929    order_items    TABLE     �  CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    price numeric(15,0) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.order_items;
       public         heap    postgres    false                       1259    16928    order_items_id_seq    SEQUENCE     {   CREATE SEQUENCE public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_items_id_seq;
       public          postgres    false    278                       0    0    order_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;
          public          postgres    false    277                       1259    16915    orders    TABLE     r  CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    total numeric(15,0) NOT NULL,
    shipping_address character varying(255) NOT NULL,
    payment_method character varying(255) NOT NULL,
    recipient_name character varying(255),
    recipient_phone character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT orders_payment_method_check CHECK (((payment_method)::text = ANY ((ARRAY['credit_card'::character varying, 'bank_transfer'::character varying, 'cash_on_delivery'::character varying])::text[]))),
    CONSTRAINT orders_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'processing'::character varying, 'shipped'::character varying, 'delivered'::character varying, 'cancelled'::character varying])::text[])))
);
    DROP TABLE public.orders;
       public         heap    postgres    false                       1259    16914    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    276                        0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    275            �            1259    16567    password_reset_tokens    TABLE     z  CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false                        1259    16992    payment_methods    TABLE     4  CREATE TABLE public.payment_methods (
    id bigint NOT NULL,
    type character varying(255) NOT NULL,
    owner_name character varying(255) NOT NULL,
    account_number character varying(255) NOT NULL,
    bank_name character varying(255),
    bank_branch character varying(255),
    note text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT payment_methods_type_check CHECK (((type)::text = ANY ((ARRAY['momo'::character varying, 'bank'::character varying, 'vnpay'::character varying, 'visa'::character varying, 'paypal'::character varying])::text[])))
);
 #   DROP TABLE public.payment_methods;
       public         heap    postgres    false                       1259    16991    payment_methods_id_seq    SEQUENCE        CREATE SEQUENCE public.payment_methods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_methods_id_seq;
       public          postgres    false    288            !           0    0    payment_methods_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_methods_id_seq OWNED BY public.payment_methods.id;
          public          postgres    false    287            �            1259    16724    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    16723    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    245            "           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    244            *           1259    17054    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            )           1259    17053    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    298            #           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    297                       1259    16905    product_images    TABLE     �  CREATE TABLE public.product_images (
    id bigint NOT NULL,
    link_image character varying(255) NOT NULL,
    product_id integer NOT NULL,
    is_default integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false                       1259    16904    product_images_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_images_id_seq;
       public          postgres    false    274            $           0    0    product_images_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;
          public          postgres    false    273                       1259    16893    products    TABLE     �  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    category_id integer,
    slug character varying(255),
    customer_id character varying(255),
    description text,
    price numeric(15,0) NOT NULL,
    product_code character varying(255),
    sku character varying(255),
    stock integer DEFAULT 0 NOT NULL,
    keyword character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    data1 boolean,
    data2 boolean,
    data3 boolean,
    data4 boolean,
    data5 boolean,
    data6 boolean,
    data7 boolean,
    data8 boolean,
    data9 boolean,
    data10 boolean,
    data11 boolean,
    data12 boolean,
    data13 boolean,
    data14 boolean,
    data15 boolean,
    data16 boolean
);
    DROP TABLE public.products;
       public         heap    postgres    false                       1259    16892    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    272            %           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    271            �            1259    16654    projects    TABLE     n  CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    project_code character varying(255),
    url_map character varying(255),
    description character varying(255),
    package character varying(255),
    name_google character varying(255),
    address_google character varying(255),
    telephone_google character varying(255),
    rating_google double precision,
    total_rating_google double precision,
    rating_desire double precision,
    is_slow character varying(255),
    point_slow character varying(255),
    keyword character varying(255),
    latitude character varying(255),
    longitude character varying(255),
    place_id character varying(255),
    has_image boolean DEFAULT false,
    status integer NOT NULL,
    is_wrong_image integer DEFAULT 0,
    update_wrong_image date,
    is_wrong_rate integer DEFAULT 0,
    update_wrong_rate date,
    is_payment character varying(255),
    voucher_code character varying(255),
    price numeric(15,0),
    id_confirm integer,
    id_confirm_at timestamp(0) without time zone,
    id_cancel integer,
    content_cancel character varying(255),
    id_cancel_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT projects_is_payment_check CHECK (((is_payment)::text = ANY ((ARRAY['1'::character varying, '2'::character varying])::text[])))
);
    DROP TABLE public.projects;
       public         heap    postgres    false            �            1259    16653    projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projects_id_seq;
       public          postgres    false    233            &           0    0    projects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;
          public          postgres    false    232                       1259    16957 
   promotions    TABLE     �  CREATE TABLE public.promotions (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    price numeric(15,0) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.promotions;
       public         heap    postgres    false                       1259    16956    promotions_id_seq    SEQUENCE     z   CREATE SEQUENCE public.promotions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.promotions_id_seq;
       public          postgres    false    282            '           0    0    promotions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.promotions_id_seq OWNED BY public.promotions.id;
          public          postgres    false    281            �            1259    16767    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         heap    postgres    false            �            1259    16735    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16734    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    247            (           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    246            �            1259    16576    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            0           1259    17083    settings    TABLE       CREATE TABLE public.settings (
    id bigint NOT NULL,
    code_setting character varying(255),
    key_setting character varying(255),
    value_setting character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.settings;
       public         heap    postgres    false            /           1259    17082    settings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public          postgres    false    304            )           0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
          public          postgres    false    303            �            1259    16794    supports    TABLE     ^  CREATE TABLE public.supports (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    support_code character varying(255) NOT NULL,
    department_id integer,
    project_id integer,
    content text NOT NULL,
    filepath character varying(255) NOT NULL,
    status integer DEFAULT 2 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.supports;
       public         heap    postgres    false            �            1259    16793    supports_id_seq    SEQUENCE     x   CREATE SEQUENCE public.supports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.supports_id_seq;
       public          postgres    false    254            *           0    0    supports_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.supports_id_seq OWNED BY public.supports.id;
          public          postgres    false    253            �            1259    16678    tags    TABLE     �  CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255),
    subject_id character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    16677    tags_id_seq    SEQUENCE     t   CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    237            +           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    236            �            1259    16701    transaction_histories    TABLE     \  CREATE TABLE public.transaction_histories (
    id bigint NOT NULL,
    wallet_id integer NOT NULL,
    type character varying(255) NOT NULL,
    transaction_code character varying(255),
    amount numeric(15,0) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    payment_method_id integer,
    temp_balance numeric(8,2),
    reference_id character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT transaction_histories_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'completed'::character varying, 'failed'::character varying])::text[]))),
    CONSTRAINT transaction_histories_type_check CHECK (((type)::text = ANY ((ARRAY['deposit'::character varying, 'withdraw'::character varying, 'payment'::character varying, 'mined'::character varying])::text[])))
);
 )   DROP TABLE public.transaction_histories;
       public         heap    postgres    false            �            1259    16700    transaction_histories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.transaction_histories_id_seq;
       public          postgres    false    241            ,           0    0    transaction_histories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.transaction_histories_id_seq OWNED BY public.transaction_histories.id;
          public          postgres    false    240            �            1259    16717 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16716    user_roles_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_roles_id_seq;
       public          postgres    false    243            -           0    0    user_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
          public          postgres    false    242            �            1259    16553    users    TABLE     =  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    username character varying(255),
    avatar character varying(255),
    role_id character varying(255),
    email character varying(255) NOT NULL,
    telephone character varying(255),
    telephone_verified_at timestamp(0) without time zone,
    email_verified_at timestamp(0) without time zone,
    country_code character varying(255),
    company_id integer,
    department_id integer,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    google_id character varying(255),
    otp character varying(255),
    otp_expires_at timestamp(0) without time zone,
    latitude character varying(255),
    longitude character varying(255),
    usercode character varying(255),
    level character varying(255),
    CONSTRAINT users_level_check CHECK (((level)::text = ANY ((ARRAY['1'::character varying, '2'::character varying, '3'::character varying, '4'::character varying, '5'::character varying])::text[])))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16552    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            .           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217                       1259    16938    vouchers    TABLE     �  CREATE TABLE public.vouchers (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    discount_type character varying(255) DEFAULT 'fixed'::character varying NOT NULL,
    discount_value numeric(10,0) DEFAULT '0'::numeric NOT NULL,
    start_date date,
    end_date date,
    max_uses integer DEFAULT 0 NOT NULL,
    uses_left integer DEFAULT 0 NOT NULL,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    min_order_value numeric(10,0) DEFAULT '0'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT vouchers_discount_type_check CHECK (((discount_type)::text = ANY ((ARRAY['fixed'::character varying, 'percent'::character varying])::text[]))),
    CONSTRAINT vouchers_status_check CHECK (((status)::text = ANY ((ARRAY['active'::character varying, 'expired'::character varying, 'used'::character varying, 'inactive'::character varying])::text[])))
);
    DROP TABLE public.vouchers;
       public         heap    postgres    false                       1259    16937    vouchers_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vouchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vouchers_id_seq;
       public          postgres    false    280            /           0    0    vouchers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vouchers_id_seq OWNED BY public.vouchers.id;
          public          postgres    false    279            �            1259    16642    wallets    TABLE     N  CREATE TABLE public.wallets (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    balance numeric(15,0) DEFAULT '0'::numeric NOT NULL,
    unit_currency character varying(10) DEFAULT 'VND'::character varying NOT NULL,
    provisional_deduction numeric(15,0) DEFAULT '0'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.wallets;
       public         heap    postgres    false            �            1259    16641    wallets_id_seq    SEQUENCE     w   CREATE SEQUENCE public.wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.wallets_id_seq;
       public          postgres    false    231            0           0    0    wallets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;
          public          postgres    false    230            ,           1259    17066    warrantie_projects    TABLE     �   CREATE TABLE public.warrantie_projects (
    id bigint NOT NULL,
    project_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.warrantie_projects;
       public         heap    postgres    false            +           1259    17065    warrantie_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.warrantie_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.warrantie_projects_id_seq;
       public          postgres    false    300            1           0    0    warrantie_projects_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.warrantie_projects_id_seq OWNED BY public.warrantie_projects.id;
          public          postgres    false    299            
           1259    16860    withdraw_requests    TABLE     �  CREATE TABLE public.withdraw_requests (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    amount numeric(15,0) NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    sort integer DEFAULT 99 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    CONSTRAINT withdraw_requests_status_check CHECK (((status)::text = ANY ((ARRAY['pending'::character varying, 'completed'::character varying, 'failed'::character varying])::text[])))
);
 %   DROP TABLE public.withdraw_requests;
       public         heap    postgres    false            	           1259    16859    withdraw_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.withdraw_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.withdraw_requests_id_seq;
       public          postgres    false    266            2           0    0    withdraw_requests_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.withdraw_requests_id_seq OWNED BY public.withdraw_requests.id;
          public          postgres    false    265            �           2604    17076    account_payments id    DEFAULT     z   ALTER TABLE ONLY public.account_payments ALTER COLUMN id SET DEFAULT nextval('public.account_payments_id_seq'::regclass);
 B   ALTER TABLE public.account_payments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    302    302            {           2604    17007    banks id    DEFAULT     d   ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);
 7   ALTER TABLE public.banks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289    290            �           2604    17026    cart_product id    DEFAULT     r   ALTER TABLE ONLY public.cart_product ALTER COLUMN id SET DEFAULT nextval('public.cart_product_id_seq'::regclass);
 >   ALTER TABLE public.cart_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293    294            ~           2604    17017    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291    292            R           2604    16885    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            u           2604    16982    certification_accounts id    DEFAULT     �   ALTER TABLE ONLY public.certification_accounts ALTER COLUMN id SET DEFAULT nextval('public.certification_accounts_id_seq'::regclass);
 H   ALTER TABLE public.certification_accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    286    286            C           2604    16842    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            =           2604    16820    companies id    DEFAULT     l   ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);
 ;   ALTER TABLE public.companies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    17095    contact_order id    DEFAULT     t   ALTER TABLE ONLY public.contact_order ALTER COLUMN id SET DEFAULT nextval('public.contact_order_id_seq'::regclass);
 ?   ALTER TABLE public.contact_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    305    306    306            @           2604    16831    departments id    DEFAULT     p   ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);
 =   ALTER TABLE public.departments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            N           2604    16874    deposit_requests id    DEFAULT     z   ALTER TABLE ONLY public.deposit_requests ALTER COLUMN id SET DEFAULT nextval('public.deposit_requests_id_seq'::regclass);
 B   ALTER TABLE public.deposit_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            �           2604    17047    expenditure_statistics id    DEFAULT     �   ALTER TABLE ONLY public.expenditure_statistics ALTER COLUMN id SET DEFAULT nextval('public.expenditure_statistics_id_seq'::regclass);
 H   ALTER TABLE public.expenditure_statistics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295    296                       2604    16622    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            :           2604    16809    faqs id    DEFAULT     b   ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);
 6   ALTER TABLE public.faqs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256                       2604    16634    histories id    DEFAULT     l   ALTER TABLE ONLY public.histories ALTER COLUMN id SET DEFAULT nextval('public.histories_id_seq'::regclass);
 ;   ALTER TABLE public.histories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            !           2604    16672    image_projects id    DEFAULT     v   ALTER TABLE ONLY public.image_projects ALTER COLUMN id SET DEFAULT nextval('public.image_projects_id_seq'::regclass);
 @   ALTER TABLE public.image_projects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    16603    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            G           2604    16854    logs id    DEFAULT     b   ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);
 6   ALTER TABLE public.logs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            3           2604    16786    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252                       2604    16549    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            p           2604    16969    missions id    DEFAULT     j   ALTER TABLE ONLY public.missions ALTER COLUMN id SET DEFAULT nextval('public.missions_id_seq'::regclass);
 :   ALTER TABLE public.missions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283    284            (           2604    16692    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            a           2604    16932    order_items id    DEFAULT     p   ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);
 =   ALTER TABLE public.order_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            ]           2604    16918 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275    276            x           2604    16995    payment_methods id    DEFAULT     x   ALTER TABLE ONLY public.payment_methods ALTER COLUMN id SET DEFAULT nextval('public.payment_methods_id_seq'::regclass);
 A   ALTER TABLE public.payment_methods ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            1           2604    16727    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    17057    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    298    298            Y           2604    16908    product_images id    DEFAULT     v   ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);
 @   ALTER TABLE public.product_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            U           2604    16896    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272                       2604    16657    projects id    DEFAULT     j   ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);
 :   ALTER TABLE public.projects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            m           2604    16960    promotions id    DEFAULT     n   ALTER TABLE ONLY public.promotions ALTER COLUMN id SET DEFAULT nextval('public.promotions_id_seq'::regclass);
 <   ALTER TABLE public.promotions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281    282            2           2604    16738    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            �           2604    17086    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303    304            6           2604    16797    supports id    DEFAULT     j   ALTER TABLE ONLY public.supports ALTER COLUMN id SET DEFAULT nextval('public.supports_id_seq'::regclass);
 :   ALTER TABLE public.supports ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            %           2604    16681    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ,           2604    16704    transaction_histories id    DEFAULT     �   ALTER TABLE ONLY public.transaction_histories ALTER COLUMN id SET DEFAULT nextval('public.transaction_histories_id_seq'::regclass);
 G   ALTER TABLE public.transaction_histories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            0           2604    16720    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243                       2604    16556    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            d           2604    16941    vouchers id    DEFAULT     j   ALTER TABLE ONLY public.vouchers ALTER COLUMN id SET DEFAULT nextval('public.vouchers_id_seq'::regclass);
 :   ALTER TABLE public.vouchers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    280    280                       2604    16645 
   wallets id    DEFAULT     h   ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);
 9   ALTER TABLE public.wallets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    17069    warrantie_projects id    DEFAULT     ~   ALTER TABLE ONLY public.warrantie_projects ALTER COLUMN id SET DEFAULT nextval('public.warrantie_projects_id_seq'::regclass);
 D   ALTER TABLE public.warrantie_projects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    300    300            J           2604    16863    withdraw_requests id    DEFAULT     |   ALTER TABLE ONLY public.withdraw_requests ALTER COLUMN id SET DEFAULT nextval('public.withdraw_requests_id_seq'::regclass);
 C   ALTER TABLE public.withdraw_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            �          0    17073    account_payments 
   TABLE DATA           �   COPY public.account_payments (id, user_id, payment_method, account_name, account_number, bank_name, phone_number, created_at, updated_at) FROM stdin;
    public          postgres    false    302   ��      �          0    17004    banks 
   TABLE DATA              COPY public.banks (id, name, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    290   ��      �          0    16585    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    221   �      �          0    16592    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    222   ��      �          0    17023    cart_product 
   TABLE DATA           �   COPY public.cart_product (id, cart_id, product_id, quantity, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    294   ��      �          0    17014    carts 
   TABLE DATA           �   COPY public.carts (id, user_id, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    292   ��      �          0    16882 
   categories 
   TABLE DATA           �   COPY public.categories (id, name, description, slug, image, parent_id, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    270   �      �          0    16979    certification_accounts 
   TABLE DATA           �   COPY public.certification_accounts (id, user_id, contract, front_id_image, back_id_image, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    286   ��      �          0    16839    comments 
   TABLE DATA           �   COPY public.comments (id, comment, project_id, keyword, is_used, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    262   ��      �          0    16817 	   companies 
   TABLE DATA           �   COPY public.companies (id, name, tax, email, is_receive, address, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    258   �                0    17092    contact_order 
   TABLE DATA           f   COPY public.contact_order (id, name, address, telephone, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    306   *�      �          0    16828    departments 
   TABLE DATA           �   COPY public.departments (id, name, parent_id, description, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    260   G�      �          0    16871    deposit_requests 
   TABLE DATA           �   COPY public.deposit_requests (id, user_id, amount, status, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    268   ��      �          0    17044    expenditure_statistics 
   TABLE DATA           �   COPY public.expenditure_statistics (id, money, user_id, month, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    296   ��      �          0    16619    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    227   ��      �          0    16806    faqs 
   TABLE DATA           �   COPY public.faqs (id, title, content, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    256   ��      �          0    16631 	   histories 
   TABLE DATA           �   COPY public.histories (id, content, user_id, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    229   r�      �          0    16669    image_projects 
   TABLE DATA           �   COPY public.image_projects (id, project_id, image_url, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active, is_used) FROM stdin;
    public          postgres    false    235   ��      �          0    16611    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    225   ��      �          0    16600    jobs 
   TABLE DATA           �   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    224   ��      �          0    16851    logs 
   TABLE DATA           �   COPY public.logs (id, transaction_id, log_message, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    264   ��      �          0    16783    messages 
   TABLE DATA           �   COPY public.messages (id, user_id, message, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    252   �      �          0    16546 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216    �      �          0    16966    missions 
   TABLE DATA             COPY public.missions (id, user_id, price, project_id, comment_id, image_id, status, no_image, no_review, checked_at, num_check, latitude, longitude, completed_at, link_confirm, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    284   \�      �          0    16745    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    248   y�      �          0    16756    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    249   ��      �          0    16689    notifications 
   TABLE DATA           �   COPY public.notifications (id, title, content, status, user_id, role_id, support_id, file_path, send_group_id, read_at, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    239   ��      �          0    16929    order_items 
   TABLE DATA           �   COPY public.order_items (id, order_id, product_id, quantity, price, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    278   c�      �          0    16915    orders 
   TABLE DATA           �   COPY public.orders (id, user_id, status, total, shipping_address, payment_method, recipient_name, recipient_phone, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    276   ��      �          0    16567    password_reset_tokens 
   TABLE DATA           �   COPY public.password_reset_tokens (email, token, created_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    219   ��      �          0    16992    payment_methods 
   TABLE DATA           �   COPY public.payment_methods (id, type, owner_name, account_number, bank_name, bank_branch, note, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    288   ��      �          0    16724    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    245   ��      �          0    17054    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    298   y�      �          0    16905    product_images 
   TABLE DATA           �   COPY public.product_images (id, link_image, product_id, is_default, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    274   ��      �          0    16893    products 
   TABLE DATA           P  COPY public.products (id, name, category_id, slug, customer_id, description, price, product_code, sku, stock, keyword, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16) FROM stdin;
    public          postgres    false    272   D�      �          0    16654    projects 
   TABLE DATA             COPY public.projects (id, name, project_code, url_map, description, package, name_google, address_google, telephone_google, rating_google, total_rating_google, rating_desire, is_slow, point_slow, keyword, latitude, longitude, place_id, has_image, status, is_wrong_image, update_wrong_image, is_wrong_rate, update_wrong_rate, is_payment, voucher_code, price, id_confirm, id_confirm_at, id_cancel, content_cancel, id_cancel_at, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    233   s�      �          0    16957 
   promotions 
   TABLE DATA           �   COPY public.promotions (id, product_id, price, start_date, end_date, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    282   ��      �          0    16767    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    250   ��      �          0    16735    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    247   ��      �          0    16576    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    220   �                 0    17083    settings 
   TABLE DATA           h   COPY public.settings (id, code_setting, key_setting, value_setting, created_at, updated_at) FROM stdin;
    public          postgres    false    304   ��      �          0    16794    supports 
   TABLE DATA           �   COPY public.supports (id, title, support_code, department_id, project_id, content, filepath, status, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    254   �      �          0    16678    tags 
   TABLE DATA           �   COPY public.tags (id, name, slug, subject_id, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    237   *�      �          0    16701    transaction_histories 
   TABLE DATA           �   COPY public.transaction_histories (id, wallet_id, type, transaction_code, amount, status, payment_method_id, temp_balance, reference_id, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    241   �      �          0    16717 
   user_roles 
   TABLE DATA           R   COPY public.user_roles (id, user_id, role_id, created_at, updated_at) FROM stdin;
    public          postgres    false    243   ;�      �          0    16553    users 
   TABLE DATA           _  COPY public.users (id, name, username, avatar, role_id, email, telephone, telephone_verified_at, email_verified_at, country_code, company_id, department_id, password, remember_token, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active, google_id, otp, otp_expires_at, latitude, longitude, usercode, level) FROM stdin;
    public          postgres    false    218   X�      �          0    16938    vouchers 
   TABLE DATA           �   COPY public.vouchers (id, code, name, description, discount_type, discount_value, start_date, end_date, max_uses, uses_left, status, min_order_value, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    280   ��      �          0    16642    wallets 
   TABLE DATA           �   COPY public.wallets (id, user_id, balance, unit_currency, provisional_deduction, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    231   �      �          0    17066    warrantie_projects 
   TABLE DATA           T   COPY public.warrantie_projects (id, project_id, created_at, updated_at) FROM stdin;
    public          postgres    false    300    �      �          0    16860    withdraw_requests 
   TABLE DATA           �   COPY public.withdraw_requests (id, user_id, amount, status, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, sort, active) FROM stdin;
    public          postgres    false    266   =�      3           0    0    account_payments_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.account_payments_id_seq', 1, false);
          public          postgres    false    301            4           0    0    banks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.banks_id_seq', 1, false);
          public          postgres    false    289            5           0    0    cart_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cart_product_id_seq', 1, false);
          public          postgres    false    293            6           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 1, false);
          public          postgres    false    291            7           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    269            8           0    0    certification_accounts_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.certification_accounts_id_seq', 1, false);
          public          postgres    false    285            9           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 1, false);
          public          postgres    false    261            :           0    0    companies_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.companies_id_seq', 1, false);
          public          postgres    false    257            ;           0    0    contact_order_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.contact_order_id_seq', 1, false);
          public          postgres    false    305            <           0    0    departments_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.departments_id_seq', 2, true);
          public          postgres    false    259            =           0    0    deposit_requests_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.deposit_requests_id_seq', 1, false);
          public          postgres    false    267            >           0    0    expenditure_statistics_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.expenditure_statistics_id_seq', 1, false);
          public          postgres    false    295            ?           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    226            @           0    0    faqs_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.faqs_id_seq', 7, true);
          public          postgres    false    255            A           0    0    histories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.histories_id_seq', 1, false);
          public          postgres    false    228            B           0    0    image_projects_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.image_projects_id_seq', 1, false);
          public          postgres    false    234            C           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    223            D           0    0    logs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.logs_id_seq', 1, false);
          public          postgres    false    263            E           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 1, false);
          public          postgres    false    251            F           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 49, true);
          public          postgres    false    215            G           0    0    missions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.missions_id_seq', 1, false);
          public          postgres    false    283            H           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 47, true);
          public          postgres    false    238            I           0    0    order_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);
          public          postgres    false    277            J           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    275            K           0    0    payment_methods_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_methods_id_seq', 1, false);
          public          postgres    false    287            L           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 12, true);
          public          postgres    false    244            M           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    297            N           0    0    product_images_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_images_id_seq', 2, true);
          public          postgres    false    273            O           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 4, true);
          public          postgres    false    271            P           0    0    projects_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.projects_id_seq', 1, false);
          public          postgres    false    232            Q           0    0    promotions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.promotions_id_seq', 1, false);
          public          postgres    false    281            R           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    246            S           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 1, false);
          public          postgres    false    303            T           0    0    supports_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.supports_id_seq', 1, false);
          public          postgres    false    253            U           0    0    tags_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tags_id_seq', 7, true);
          public          postgres    false    236            V           0    0    transaction_histories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.transaction_histories_id_seq', 1, false);
          public          postgres    false    240            W           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 1, false);
          public          postgres    false    242            X           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    217            Y           0    0    vouchers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vouchers_id_seq', 1, false);
          public          postgres    false    279            Z           0    0    wallets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.wallets_id_seq', 1, false);
          public          postgres    false    230            [           0    0    warrantie_projects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.warrantie_projects_id_seq', 1, false);
          public          postgres    false    299            \           0    0    withdraw_requests_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.withdraw_requests_id_seq', 1, false);
          public          postgres    false    265                       2606    17080 &   account_payments account_payments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.account_payments
    ADD CONSTRAINT account_payments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.account_payments DROP CONSTRAINT account_payments_pkey;
       public            postgres    false    302            �           2606    17011    banks banks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.banks DROP CONSTRAINT banks_pkey;
       public            postgres    false    290            �           2606    16598    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    222            �           2606    16591    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    221                       2606    17030    cart_product cart_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_pkey;
       public            postgres    false    294                        2606    17021    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    292            �           2606    16891    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    270            �           2606    16988 2   certification_accounts certification_accounts_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.certification_accounts
    ADD CONSTRAINT certification_accounts_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.certification_accounts DROP CONSTRAINT certification_accounts_pkey;
       public            postgres    false    286            �           2606    16849    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    262            �           2606    16826    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    258                       2606    17099     contact_order contact_order_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.contact_order
    ADD CONSTRAINT contact_order_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.contact_order DROP CONSTRAINT contact_order_pkey;
       public            postgres    false    306            �           2606    16837    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    260            �           2606    16880 &   deposit_requests deposit_requests_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.deposit_requests
    ADD CONSTRAINT deposit_requests_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.deposit_requests DROP CONSTRAINT deposit_requests_pkey;
       public            postgres    false    268                       2606    17052 2   expenditure_statistics expenditure_statistics_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.expenditure_statistics
    ADD CONSTRAINT expenditure_statistics_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.expenditure_statistics DROP CONSTRAINT expenditure_statistics_pkey;
       public            postgres    false    296            �           2606    16627    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    227            �           2606    16629 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    227            �           2606    16815    faqs faqs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.faqs DROP CONSTRAINT faqs_pkey;
       public            postgres    false    256            �           2606    16640    histories histories_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.histories
    ADD CONSTRAINT histories_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.histories DROP CONSTRAINT histories_pkey;
       public            postgres    false    229            �           2606    16676 "   image_projects image_projects_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.image_projects
    ADD CONSTRAINT image_projects_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.image_projects DROP CONSTRAINT image_projects_pkey;
       public            postgres    false    235            �           2606    16617    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    225            �           2606    16609    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    224            �           2606    16858    logs logs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.logs DROP CONSTRAINT logs_pkey;
       public            postgres    false    264            �           2606    16792    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    252            �           2606    16551    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            �           2606    16977    missions missions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.missions
    ADD CONSTRAINT missions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.missions DROP CONSTRAINT missions_pkey;
       public            postgres    false    284            �           2606    16755 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    248    248    248            �           2606    16766 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    249    249    249            �           2606    16699     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    239            �           2606    16936    order_items order_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public            postgres    false    278            �           2606    16927    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    276            �           2606    16575 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219            �           2606    17002 $   payment_methods payment_methods_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_methods DROP CONSTRAINT payment_methods_pkey;
       public            postgres    false    288            �           2606    16733 .   permissions permissions_name_guard_name_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);
 X   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_guard_name_unique;
       public            postgres    false    245    245            �           2606    16731    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    245                       2606    17061 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    298                       2606    17064 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    298            �           2606    16913 "   product_images product_images_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    274            �           2606    16903    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    272            �           2606    16667    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    233            �           2606    16964    promotions promotions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.promotions DROP CONSTRAINT promotions_pkey;
       public            postgres    false    282            �           2606    16781 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    250    250            �           2606    16744 "   roles roles_name_guard_name_unique 
   CONSTRAINT     i   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_guard_name_unique;
       public            postgres    false    247    247            �           2606    16742    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    247            �           2606    16582    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    220                       2606    17090    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public            postgres    false    304            �           2606    16804    supports supports_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.supports
    ADD CONSTRAINT supports_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.supports DROP CONSTRAINT supports_pkey;
       public            postgres    false    254            �           2606    16687    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    237            �           2606    16713 0   transaction_histories transaction_histories_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.transaction_histories
    ADD CONSTRAINT transaction_histories_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.transaction_histories DROP CONSTRAINT transaction_histories_pkey;
       public            postgres    false    241            �           2606    16715 ?   transaction_histories transaction_histories_reference_id_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.transaction_histories
    ADD CONSTRAINT transaction_histories_reference_id_unique UNIQUE (reference_id);
 i   ALTER TABLE ONLY public.transaction_histories DROP CONSTRAINT transaction_histories_reference_id_unique;
       public            postgres    false    241            �           2606    16722    user_roles user_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    243            �           2606    16564    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            �           2606    16562    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           2606    16990    users users_telephone_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_telephone_unique UNIQUE (telephone);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_telephone_unique;
       public            postgres    false    218            �           2606    16955    vouchers vouchers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT vouchers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT vouchers_pkey;
       public            postgres    false    280            �           2606    16652    wallets wallets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wallets DROP CONSTRAINT wallets_pkey;
       public            postgres    false    231            �           2606    17042    wallets wallets_user_id_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_user_id_unique UNIQUE (user_id);
 H   ALTER TABLE ONLY public.wallets DROP CONSTRAINT wallets_user_id_unique;
       public            postgres    false    231                       2606    17071 *   warrantie_projects warrantie_projects_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.warrantie_projects
    ADD CONSTRAINT warrantie_projects_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.warrantie_projects DROP CONSTRAINT warrantie_projects_pkey;
       public            postgres    false    300            �           2606    16869 (   withdraw_requests withdraw_requests_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.withdraw_requests
    ADD CONSTRAINT withdraw_requests_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.withdraw_requests DROP CONSTRAINT withdraw_requests_pkey;
       public            postgres    false    266            �           1259    16610    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    224            �           1259    16748 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    248    248            �           1259    16759 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    249    249            	           1259    17062 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    298    298            �           1259    16584    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    220            �           1259    16583    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    220                       2606    17031 )   cart_product cart_product_cart_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_cart_id_foreign FOREIGN KEY (cart_id) REFERENCES public.carts(id);
 S   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_cart_id_foreign;
       public          postgres    false    294    292    5120                       2606    17036 ,   cart_product cart_product_product_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_product
    ADD CONSTRAINT cart_product_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id);
 V   ALTER TABLE ONLY public.cart_product DROP CONSTRAINT cart_product_product_id_foreign;
       public          postgres    false    294    272    5100                       2606    16749 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    248    245    5066                       2606    16760 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    5070    249    247                       2606    16770 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    5066    250    245                       2606    16775 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    247    5070    250            �      x������ � �      �      x������ � �      �   �   x�3�4�442642�142�3 BC�����"�L+CscSs3K#CkN�� ��jE%��y�y%��y�y鹉�9z���X�15�42206� ca�R��Ĕ��<�6���Y��C�������c���� ٻH�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m��
�0@��+�mZ{u��6�;z�A��߰��������ֱK)	!<�����J�@=ci�6���BA(R�IǱ��c1�I0!5I�E��"Ma�N��dS���iY�_ ��n0-�����9B�7*\���%�HL��4ă��(���GX$e�������,{��,���r+��z��z�����(���;^�      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �   G   x�3��8�)/]!9�Hs�B����
G&>�=1S����d�?��Ғ����9���
%��������� ��%�      �      x������ � �      �      x������ � �      �      x������ � �      �   m  x��VMk#G=˿�N�.�|�'��!�$!&��̎� iF+u븘BX�'��"���&v�2��C+��O�ewK�q�x43]կ^�z=�5�2]Ri]^Rn
����.mq�R�J����GI]Ƥ�EF;�.���ENI\P:���mN�E�󌾎{���엵���%b�*��LF���t9vR ���[��<H�����qBCs 1�Z�}��cQ]�Ѡ������	��Z�MݺzÉO∆�a�A��𾠼��3���k~�8?E�w��x �ǀ�y�Ss�a��nފU;�#��9IR��qI�������̌����:�5�Ia��o�������#=��g�A������Ç��>:u��K �2H�|�[)0T���(e�� ��"��,!UW����"`����K��_���+KWN��E��wi�"������Ԙs`���'�e�;w��	�F����,iҗ�7���a�9����	��U�M�*�Ф+�eѶ�'�)�GR���k��Ac���kQ�<�I���)Y"eE�mY���̜G�wɅ
�ޢ,���)Q�J	[�{]`��X�����Ƽ"bXWS;9	��Cґ��x:O}��]�LG��{�A2��K0�!�{����xe e���/Q���.�cw�l|����T��i8��J�@�-D	�("p;jU�u��8����g�[=s�
:ʩw5��_���̎r�	dھ�"���P�{�,�|��Rΰ�R�Q�;�D��m�wUQ���� BQ���L*�XU*>�XJ%�wR�������8��"��WQZ3�\Z�,"��|�Q�_u���^U+;��?�NT?�K��p;n�bEKƴ�3{���W��Ʋ�|W%��+�y��<^�"Z�ؙ)��v�8Cm����!�m-�D�GӞ��IY�ERv�p6�8>�a�11�i6���o�V]��÷���h�-�'����7�>}༨��p�}�\�BG�/��aX�4��u�	e[?���-ʎ�s͕b���Gt�1�% ����P2*��(��*�$q3S�i���@�B�\gu�l����Fp��R;M��(ad���e��9E ��da/py�!�؇���b�RZ�Xg��:qK�4766���J�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ,  x�u��r�0�7�cK6�w��n�p
���_9_H��a��;�����_c\m�۟�f��Q�b�Ey�:�~���`���� >�����5(^��P�Q�&���Żٚ�#����z�OhuDE���ٽ�.c��6�����Q��(���Jq���
�ωkW+��e��M��7�ioݔ��
	��������p��ވb�jvC�Æ��I�j���� 3�vY����K�1�y���YjSv�H0��qP�z��9�%�	�W��|o�3��y#c�;7^�T��.�1k��U�~4S^Fy.�f`�f��6�����8��e V����������[��s5Kv<����jw��ODP�d��q.�X�5m+fү��A`L3����dYJ�I�En�P��h�U֛1��h�/�Y,�˭C��i���4*}t�B�,��<���H0n��D� ���{uv�<Pz�d�ai��=H���F�R�9�9���]���v����T��z�������&J�u�@��ވ��E�o�^篱�D�D�S�ӿa#h�����F�j��������ID�K�f�[��D��7?�L��AP����?��_�o�$	e ���w��]����=��	N)U;�ǘ`GRBN�=����R�yOv��5��x��D� EC^C�������~�)f=�d�ˤ�KyŘ���_ܤ��9Js�ȇɌ.� �#�"Z!�3ܹ�<�@�B)���J�z�+��'}U)��3.ɶ�3Qrr�J)��̗�����w�ҕ/��xo�,�Ea�
~R��a�t1oa�+��9�N� F�      �      x������ � �      �      x������ � �      �   N   x�mȹ�0E�ؿĮ�R ��q�����h�M8���#��nψ��}�䰎�q�nʰ;�k3�q;w�.�I�ɹd�      �   _  x��Z�r�8=�_�h��$/�ڒc�]�O}�H�FD�,�B�?����Ɖq�{$nH�|��%v���S3�y�uk�Ú�������uh��������t�]�KLM���	�<����Os��Am�n����g�l��0ᫎs��>���n�8��m~����&$�q�cƥ	c��ph|�F�u���?V�g���v���Ϛ����7��?�K���K��ػ��	�xXZ���a���|��R�n�{�RW�����
���6�C��?�����
���#S�.ms����k�?�=���85)n��s�|ĸӦ�&����C���}�f\�7�M p��W<�ۅ����V�}���u�;˚�~�(Mc
���yϱ�p÷��=5a��>����t\ $��b���QWP@r<�.x\�۵�.p��4ª�հRx�=����RZ# "E�����_,�K��@�#%Q��ϳ)�h�y]�c:jT(�9����� �!;0R�IRb��s�|;�fCP�t����m~��?��-�sh��>z��j���z8���S�Y FR�#=��)���*
�[���MJ�����!���p~
e@���k_��g���ð)�^�N՞�l!p���j�Z�u�{�CKNp��o���L.��BT1!�B�����^
9^�]�k�	!!pG�WK�����P7��'8��8"Q������Q�0��6��6Wk�l� Iԇ�H�ȬO��m��7���IC��W|�!�5���� �ɐm�����c�	9��P*e�\ǴıC��'F����M���1IS��P�<��B�M�Q�|W`j�@%к��0_MaS�����,��f&�=q8���H.ג�"_��qh��.@v)��Vpɕ�}�OH���iwg�Z���Y����l���Tp���Ĝ +G�m��e��">�q��eS�s$q 	E�Av5)?P��#\5ٶՎs�0�n;�3�27K恣��YRa�N�<	�&��BXp�_2@�\�}Xx�Bʹ�'�+E�+防z�.o�E7~l�������)	�@�2���Qv�Q�M���X�)�1"9$��-��T���qj��S�	��z�}$��"�a�D�$==�@:w����*�je�U�ԡ���!,�F�#e�%D��Q�$�BD�9�i���@]>\�6��G L䫽<�Biܸ>�@�Y�P�/6�1�Qv_?����.�"��4��FCa(����X��@�3��=� 0<2Oo���P�l�J
��Sŵ�Ok(=�C��N���Ά�Z��&V�H;�|�*LE�\7��1X��x6�i�W�T���L��G�`ܽ�́�/+�V���=m� 4���i����ڄv�u�Ή=⌱�'�����������e�bV,���$�h[x�vw��d����+�	�d�ꚪL�z
�b�A�@)b*0�1�0���M�6���뮙�2�_!bd����a��?k�����2L���#�ؘ�Uo�Ud�B����4Y�#�(�H�"Iyz. �R�EJʥ���&r�ե#A�B�4\�pR��{����0&��y}ʱ�_�B�>��[sYx�
��xI�Hme��.`���B�?���Y��ӳ��� ��~���ޟ��%j^�!���1:�B�3��P��A��H���W��#\!4���������[�1S��Ly+�0R���g�s������"C���x�&#]z�w�Jd¦Ec�#R�+�I�T�ð�Z�2��d��a��@�[ٴ�'�xSI�I�[��ø#�6�I}XNA�V�жqڻo�ifS�)���i�:��R�%n�vI�ʪ3g��:j,(��W�F'��,K�Z��T̶l�@Ȳ%!��9���`1j�^���ú���0;i�-�Ȧ>;"$'��2]��<��ջ~��ݶ]�3f�l�l��%�%�$���������ԑx�����l3��dn�s���P��!���� +�綡y�n�w���*F��uW����!:X뱤K�X��n�� �q��
ИPc�g�WՌ6�ģ����S'���4�sڶ��ٟ�U���u�N�()���&�N��[,�Pe��d%P� ��2Y�J�T��x��Tf%2�!v�!����������G�����T�~^�i�(q�&�N�*ÍY&��Aم�4��o3]4��*v�t��Q��׫��4�2 oDy�N�2R3����5d��EM`�uDpd�t3M��ۺ�]<���*E��S����lQ�����6�d�f�b�d˔�t��kq�@��4���?e���"$Y��i�
�Њ:D�{QC+�tz6z&Ґ�tB;�M�s~�Ӯ9��M\�g���������rD1Qt^��L�u��hpr�B�Ŋ���UR������6�y_b`n:��qS/����!���/��_˳3���b�6��E�J�]��
��I�] ܫ[g}� cos��-.����9(
�X�]%.�3��4&$�hjL5S�Q"����n9�!�.':����<S�Ie����vN*���L�n�sw��ʵ����3�1&	 []���:e.����4���$���b2å��~r�R	3HaS���D�Ԑ�'
 �s89���l���P]�>iae'�^�H�D0�ɡj!4E*WGK�B#�"���0����� ��mճ��r�/�'��
�<P>3H�9D"��$�s8�:镧r���̲��d��r�L�br�?[�UZӻ6��WN���s�|(�ǹ�{��d��ATw�Yr��bڧ�VI��.'l�!�;y?Y����Ln�Z�������7#?��̯�m��k�?Ő���r�Kfm_Vv6�@�����?ҡ(�v$Ct=��xu�J�M6���h��8�I��U��yv!��wKu�D�5�����`i���g2����ZP]�Md�S'��*K>�7a��bw%�0lN,4���v~�ޚ|���Q.'6w�e�B�T$�y�G�?�*�6����t%���曪&l�:s��\+=�������?L�_�:����W\ �bG�4��5%-��M�I��'�Vwћ�@�0Y�P�I��X��d%2�j��r�`��7��e�f�>�[���Y>��-��s�d��tN�D����[��Y�gUHN
�������'�徭��b��!U�T�5�'�O�5%N�+fh�Sq6���}U���Tgձ9��P�Zom���24����d�Hiɻ��ɮ�/�J|6�����T��<�:�u�?͖/Ν!���:���d��D��P��X�l_�I����/Δ��Q+S�w��.5���8�#]���-�.���4�����ĸ/ u��A�����X�rJ.,�d���:�Հ��T-s� �s3lg<�Pd.�}�'��>�k@���z�G�c-�㿦#����6�]m�F�a�|�J� �����2����.����b'uw����5��T�2��7������@�Ҕ����+��]m&}sڂX�|xJ"�\"�^M+��0fx>�Y�4��J�k�|�r��W+�YB5ɦ��ZN���.o*]��cn�{T��)������Ҹ�OZ�2������+�q͘��I.n%���r��m_�x�_�/Ww      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���A
�0�����@%3�Z{71!��������L���1��s�&	�����~ ����#�����4�D�����	��� FX8�~��$��m�\�ཥ{i��Z�����SmV�[i�.�MmM�`,�J5X��'c�HW��      �      x������ � �      �   �   x�3���MLO-�/(�O)M.�O1�L(�4��5�50HL��2���/̪Hw�
����*H�4�4�4202�50�52S00�21�21�*�T$��Ғ������ ��J�H�B��p�2� ��`��,�*���J���`��r��m����� DeA      �     x��ӽN�0���~�����4^ۡbb�R		%}���(X@bJ�H�Gބ�J��Ĳ������! �@pU�i>on�c�]���_U���}�P�r��ո��J5}����*VE[�2)Z��i�h�e���<���A�i[�3������M*���Y��{��OF�!�!%��#vHی#�ؙ֙ȯ��M�@�wJ�g�����"����
����ѯ8=wݠ���asS�7
w��c���o�X�v��x��0�0�z��1����8������A���[g      �      x������ � �      �      x������ � �      �      x������ � �      �   E   x�3�LL����,OM�4202�54�56P04�2��22�&�eę\Z\���ZD�6c΂Ģ�<u��qqq 7�#�      �   �  x�5Q]��0|�_��nՕAj�<�5�^B�\#�����/�{5S�=3�]32������o����T�i�Z���^蚲����{�a�*��ˎ���^B~fes�|��~���7�E�6�*��y����D������M�"��yV�����Y�|��ї�~'����()Ap���D�R8 5j��u%�n�3�!��-��i1j�L15�}�QcV&r?�N7�2+ص�H����k�
�w��`R�e�1E�T�S��Ɇ#��AKyl1F��Ӳpvc�ZI�N��Π��|_��[��
ܱ�'�1��Uʝ&�N�B�����)���Ś(M���&���K&K[e�?3c��\�'�(���v����׭�C���k~MV�q�|"8%ؠᶠ�Ǳ���[�|4�I�9��ig���7��Z	)� ��=ݶ��~����A����V��             x������ � �      �      x������ � �      �   �   x�}�=jA�k�)tl��.���e54S�|��1�@~p�H�ƻ�,���$��T�1�$�=ЛB��g��;H���ʐ7��8LaS���\1�u8	��C����I�r�s(9�	��H�ڱ�ݣ�����cPi]K����jPF؁(CI�.O��2���p¿���,�ˇ�V�S&�V��!�g<3l��m>�{���	
�9�G�Ul?��JibeS��fR�/_���      �      x������ � �      �      x������ � �      �   ~  x���[��H�g��ЯTQ���"�"�ȭ�$D�����Ӛ�';�f��<@�����#Ǎ�d�c�Y�׿��	"l��#�%X ɏ���Q`��/ ��oK��4k�b��n(��J��%��T��k63zQ�s�4%VG�m$ ��7�����;��g���GYvT�K�Q��?�LYܞ��h_e{9���u�w)~��y-mզ=��,��QŊ��մ
�+���v��3�IDL����z$k��Y���-�TA�	��	�r�+���~�l&��ĺv���Y��n��;�\�W!��t��K�Y��IbZ{e�<%�	������^99 g���$W6Q�l���̃�E�?י3'8��D����g&�k�̞��c����r�+G��)�yS��S?�(H�%��(��F�˚&֖Z�����	�ht)~J~��/&ՕS�rj@>�g��zԶ� �ɂ�^��(�g���P h��~ݜ��:�@}n�o��dtv�2��_-�}�!t��Z�"#|��<�����UK�mj-�kUI�b�`��2O
T�H�?[�5��+A��هt̽�BE�*D�2碚)�	4�5���lŖ��G���$&��Cl�����gK�'
 J�q�
5(�i��T�c��:����m�6\�>��Cl}�.��g��<�$;��8�����'Zr��&�W���W;��iڤ;+%��m��$��lǁ���̌���4�Dwo�PCa�F3I����<�K�Qr�XT*���Y�z��:�����+@��<�=�݀| ��7I������$	1��S�o`t��5���l�J�y��`s�AF/�M���3�{�P�7������7���ܡ*��Α�0Ô��C��1f��Xrl]��UU;��ά���l<��v�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     