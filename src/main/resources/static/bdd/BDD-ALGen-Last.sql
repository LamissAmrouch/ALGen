PGDMP     #                    w        
   BDD-ALGen4    11.1    11.1 �    d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            g           1262    34486 
   BDD-ALGen4    DATABASE     �   CREATE DATABASE "BDD-ALGen4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_Algeria.1252' LC_CTYPE = 'French_Algeria.1252';
    DROP DATABASE "BDD-ALGen4";
             postgres    false            �           1247    34488    t_situation    TYPE     ^   CREATE TYPE public.t_situation AS ENUM (
    'menace',
    'tres menace',
    'non menace'
);
    DROP TYPE public.t_situation;
       public       postgres    false            �           1247    34496    t_type_aliment    TYPE     Z   CREATE TYPE public.t_type_aliment AS ENUM (
    'vegetale',
    'animale',
    'autre'
);
 !   DROP TYPE public.t_type_aliment;
       public       postgres    false            �           1247    34504    t_type_faune    TYPE     M   CREATE TYPE public.t_type_faune AS ENUM (
    'sauvage',
    'domestique'
);
    DROP TYPE public.t_type_faune;
       public       postgres    false            �           1247    34510    t_type_forest    TYPE     p   CREATE TYPE public.t_type_forest AS ENUM (
    'medecinale',
    'aromatique',
    'medecinale & aromatique'
);
     DROP TYPE public.t_type_forest;
       public       postgres    false            �           1247    34518    t_type_institution    TYPE     P   CREATE TYPE public.t_type_institution AS ENUM (
    'publique',
    'privé'
);
 %   DROP TYPE public.t_type_institution;
       public       postgres    false            �           1247    34524 
   t_type_nom    TYPE     Y   CREATE TYPE public.t_type_nom AS ENUM (
    'arabe',
    'commun',
    'scientifique'
);
    DROP TYPE public.t_type_nom;
       public       postgres    false            �           1247    34532    t_type_user    TYPE     g   CREATE TYPE public.t_type_user AS ENUM (
    'admin',
    'simple',
    'editeur',
    'sous-admin'
);
    DROP TYPE public.t_type_user;
       public       postgres    false            �            1259    34541    expert     TABLE     �   CREATE TABLE public."expert " (
    "id " integer NOT NULL,
    nom character varying,
    prenom character varying,
    profil character varying,
    "specialité" character varying,
    lien_avatar character varying,
    id_institution integer
);
    DROP TABLE public."expert ";
       public         postgres    false            �            1259    34547    Expert _id _seq    SEQUENCE     �   CREATE SEQUENCE public."Expert _id _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Expert _id _seq";
       public       postgres    false    196            h           0    0    Expert _id _seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Expert _id _seq" OWNED BY public."expert "."id ";
            public       postgres    false    197            �            1259    34549 
   avoir_role    TABLE     d   CREATE TABLE public.avoir_role (
    id_utilisateur bigint NOT NULL,
    id_role bigint NOT NULL
);
    DROP TABLE public.avoir_role;
       public         postgres    false            �            1259    34552    classification    TABLE     �   CREATE TABLE public.classification (
    id integer NOT NULL,
    espece text,
    genre text,
    famille text,
    ordre text,
    class text,
    embranchement text,
    groupe text
);
 "   DROP TABLE public.classification;
       public         postgres    false            �            1259    34558    demande_dossier    TABLE     �   CREATE TABLE public.demande_dossier (
    id integer NOT NULL,
    numero_dossier integer,
    description text,
    date_creation date,
    date_dernier_modif date,
    archive boolean,
    type character varying,
    but character varying
);
 #   DROP TABLE public.demande_dossier;
       public         postgres    false            �            1259    34564    document    TABLE     �   CREATE TABLE public.document (
    id integer NOT NULL,
    nom character varying(50),
    chemin_doc character varying(70),
    id_demande_dossier integer
);
    DROP TABLE public.document;
       public         postgres    false            �            1259    34567    document-juridique     TABLE     Y  CREATE TABLE public."document-juridique " (
    id integer NOT NULL,
    designation text,
    date_sortie date,
    chemin_doc character varying(70),
    code character varying,
    "meta-donnee" character varying[],
    resume character varying,
    version double precision,
    "abrogé" boolean,
    "motif-abrogation" character varying
);
 )   DROP TABLE public."document-juridique ";
       public         postgres    false            �            1259    34573    document_id_seq    SEQUENCE     �   CREATE SEQUENCE public.document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.document_id_seq;
       public       postgres    false    201            i           0    0    document_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.document_id_seq OWNED BY public.document.id;
            public       postgres    false    203            �            1259    34575    document_juridique    TABLE     v  CREATE TABLE public.document_juridique (
    id bigint NOT NULL,
    "abrogé" boolean,
    chemin_doc character varying(255),
    code character varying(255),
    date_sortie date,
    designation character varying(255),
    meta_donnee character varying(255),
    modif_abrogation character varying(255),
    resume character varying(255),
    version double precision
);
 &   DROP TABLE public.document_juridique;
       public         postgres    false            �            1259    34581    domaine    TABLE     O   CREATE TABLE public.domaine (
    id integer NOT NULL,
    designation text
);
    DROP TABLE public.domaine;
       public         postgres    false            �            1259    34587    domaine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.domaine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.domaine_id_seq;
       public       postgres    false    205            j           0    0    domaine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.domaine_id_seq OWNED BY public.domaine.id;
            public       postgres    false    206            �            1259    34589    dossierusage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dossierusage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dossierusage_id_seq;
       public       postgres    false    200            k           0    0    dossierusage_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.dossierusage_id_seq OWNED BY public.demande_dossier.id;
            public       postgres    false    207            �            1259    34591    espece_id_seq    SEQUENCE     �   CREATE SEQUENCE public.espece_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.espece_id_seq;
       public       postgres    false    199            l           0    0    espece_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.espece_id_seq OWNED BY public.classification.id;
            public       postgres    false    208            �            1259    34593    etat_dossier    TABLE     t   CREATE TABLE public.etat_dossier (
    id integer NOT NULL,
    designation text,
    id_demande_dossier integer
);
     DROP TABLE public.etat_dossier;
       public         postgres    false            �            1259    34599    etat_dossier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etat_dossier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.etat_dossier_id_seq;
       public       postgres    false    209            m           0    0    etat_dossier_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.etat_dossier_id_seq OWNED BY public.etat_dossier.id;
            public       postgres    false    210            �            1259    34601 	   evenement    TABLE     �   CREATE TABLE public.evenement (
    id integer NOT NULL,
    "theme " character varying,
    lieu character varying,
    description text,
    date date,
    id_institution integer
);
    DROP TABLE public.evenement;
       public         postgres    false            �            1259    34607    evenement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.evenement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.evenement_id_seq;
       public       postgres    false    211            n           0    0    evenement_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.evenement_id_seq OWNED BY public.evenement.id;
            public       postgres    false    212            �            1259    34609    fiche     TABLE       CREATE TABLE public."fiche " (
    id integer NOT NULL,
    "statut " character varying,
    "date_dernier-modification" date,
    date_publication date,
    "numero-ref" integer,
    id_reference integer,
    id_utilisateur integer,
    cpt_nb_vus integer
);
    DROP TABLE public."fiche ";
       public         postgres    false            �            1259    34615    fiche _id_seq    SEQUENCE     �   CREATE SEQUENCE public."fiche _id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."fiche _id_seq";
       public       postgres    false    213            o           0    0    fiche _id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."fiche _id_seq" OWNED BY public."fiche ".id;
            public       postgres    false    214            �            1259    34617    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false            �            1259    34619    institution    TABLE     7  CREATE TABLE public.institution (
    id integer NOT NULL,
    nom character varying(200),
    description text,
    date_ouverture date,
    localisation text,
    site character varying(200),
    image character varying(100),
    type_institution character varying(100),
    domaine character varying(255)
);
    DROP TABLE public.institution;
       public         postgres    false            �            1259    34628    institution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.institution_id_seq;
       public       postgres    false    216            p           0    0    institution_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.institution_id_seq OWNED BY public.institution.id;
            public       postgres    false    217            �            1259    34630    institutions_domaines    TABLE     r   CREATE TABLE public.institutions_domaines (
    id_institution bigint NOT NULL,
    id_domaine bigint NOT NULL
);
 )   DROP TABLE public.institutions_domaines;
       public         postgres    false            �            1259    34633    loi    TABLE       CREATE TABLE public.loi (
    id_loi bigint NOT NULL,
    chemin_doc character varying(255) NOT NULL,
    date_sortie timestamp without time zone NOT NULL,
    description character varying(255) NOT NULL,
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.loi;
       public         postgres    false            �            1259    34639 
   loi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.loi_id_seq;
       public       postgres    false    202            q           0    0 
   loi_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.loi_id_seq OWNED BY public."document-juridique ".id;
            public       postgres    false    220            �            1259    34641    permis    TABLE     �   CREATE TABLE public.permis (
    id integer NOT NULL,
    numero_permis integer,
    resume text,
    date_debut date,
    date_expiration date,
    id_demande_dossier integer
);
    DROP TABLE public.permis;
       public         postgres    false            �            1259    34647    permis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.permis_id_seq;
       public       postgres    false    221            r           0    0    permis_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.permis_id_seq OWNED BY public.permis.id;
            public       postgres    false    222            �            1259    34652    possede_document_juridique    TABLE     y   CREATE TABLE public.possede_document_juridique (
    id_document_juridique bigint NOT NULL,
    id_rg bigint NOT NULL
);
 .   DROP TABLE public.possede_document_juridique;
       public         postgres    false            �            1259    34657    proctraditionnel    TABLE     �   CREATE TABLE public.proctraditionnel (
    id integer NOT NULL,
    description text,
    id_rg integer,
    nom character varying(255)
);
 $   DROP TABLE public.proctraditionnel;
       public         postgres    false            �            1259    34663    proctraditionnel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proctraditionnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.proctraditionnel_id_seq;
       public       postgres    false    224            s           0    0    proctraditionnel_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.proctraditionnel_id_seq OWNED BY public.proctraditionnel.id;
            public       postgres    false    225            �            1259    34665 	   reference    TABLE     N  CREATE TABLE public.reference (
    id integer NOT NULL,
    "titre-ouvrage" character varying(90000),
    auteur character varying(90000),
    maison character varying(90000),
    "année-publication" integer,
    resume character varying(90000),
    "lien-web" character varying(90000),
    "lien-image" character varying(90000)
);
    DROP TABLE public.reference;
       public         postgres    false            �            1259    34671    reference_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reference_id_seq;
       public       postgres    false    226            t           0    0    reference_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reference_id_seq OWNED BY public.reference.id;
            public       postgres    false    227            �            1259    34673    rg    TABLE     D  CREATE TABLE public.rg (
    id integer NOT NULL,
    lien_photo character varying(250),
    description text,
    biotope character varying(512),
    reproduction character varying(512),
    cle_identification text,
    id_classification integer,
    id_dossier_usage integer,
    nom character varying(50),
    zonegeo text,
    id_demande_dossier integer,
    dimensions character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    type integer,
    aliment character varying(255),
    nomscient character varying(255)
);
    DROP TABLE public.rg;
       public         postgres    false            �            1259    34679    rg_alimagricol    TABLE     �   CREATE TABLE public.rg_alimagricol (
    id_rg_alimagricol integer NOT NULL,
    type character varying(255),
    regne character varying(255),
    rg_id integer
);
 "   DROP TABLE public.rg_alimagricol;
       public         postgres    false            �            1259    34685 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq;
       public       postgres    false    229            u           0    0 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq OWNED BY public.rg_alimagricol.id_rg_alimagricol;
            public       postgres    false    230            �            1259    34687    rg_faune    TABLE     �   CREATE TABLE public.rg_faune (
    id_rg_faune integer NOT NULL,
    type character varying,
    situation character varying(255),
    regne character varying(255),
    rg_id integer
);
    DROP TABLE public.rg_faune;
       public         postgres    false            �            1259    34693    rg_faune_id_rg_faune_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_faune_id_rg_faune_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.rg_faune_id_rg_faune_seq;
       public       postgres    false    231            v           0    0    rg_faune_id_rg_faune_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.rg_faune_id_rg_faune_seq OWNED BY public.rg_faune.id_rg_faune;
            public       postgres    false    232            �            1259    34695 	   rg_forest    TABLE     �   CREATE TABLE public.rg_forest (
    id_rg_forest integer NOT NULL,
    parties_utilises text,
    constituants text,
    usage text,
    type_forest character varying(255),
    regne character varying(255),
    rg_id integer
);
    DROP TABLE public.rg_forest;
       public         postgres    false            �            1259    34701    rg_forest_id_rg_forest_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_forest_id_rg_forest_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.rg_forest_id_rg_forest_seq;
       public       postgres    false    233            w           0    0    rg_forest_id_rg_forest_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.rg_forest_id_rg_forest_seq OWNED BY public.rg_forest.id_rg_forest;
            public       postgres    false    234            �            1259    34703 	   rg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.rg_id_seq;
       public       postgres    false    228            x           0    0 	   rg_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE public.rg_id_seq OWNED BY public.rg.id;
            public       postgres    false    235            �            1259    34705 	   rg_marine    TABLE     �   CREATE TABLE public.rg_marine (
    id_rg_marine integer NOT NULL,
    en_production character varying(255),
    est_protege boolean,
    niveau_profondeur character varying(255),
    regne character varying(255),
    rg_id integer
);
    DROP TABLE public.rg_marine;
       public         postgres    false            �            1259    34711    rg_marine_id_rg_marine_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_marine_id_rg_marine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.rg_marine_id_rg_marine_seq;
       public       postgres    false    236            y           0    0    rg_marine_id_rg_marine_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.rg_marine_id_rg_marine_seq OWNED BY public.rg_marine.id_rg_marine;
            public       postgres    false    237            �            1259    34713    rg_micro_org    TABLE     �   CREATE TABLE public.rg_micro_org (
    id_rg_micro_org integer NOT NULL,
    est_nocif boolean,
    regne character varying(255),
    type character varying(255),
    rg_id integer
);
     DROP TABLE public.rg_micro_org;
       public         postgres    false            �            1259    34719     rg_micro_org_id_rg_micro_org_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_micro_org_id_rg_micro_org_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.rg_micro_org_id_rg_micro_org_seq;
       public       postgres    false    238            z           0    0     rg_micro_org_id_rg_micro_org_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.rg_micro_org_id_rg_micro_org_seq OWNED BY public.rg_micro_org.id_rg_micro_org;
            public       postgres    false    239            �            1259    34721    rg_ressemblant    TABLE     h   CREATE TABLE public.rg_ressemblant (
    id integer NOT NULL,
    id_rg_ressemblant integer NOT NULL
);
 "   DROP TABLE public.rg_ressemblant;
       public         postgres    false            �            1259    34724    rg_ressemblant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_ressemblant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rg_ressemblant_id_seq;
       public       postgres    false    240            {           0    0    rg_ressemblant_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rg_ressemblant_id_seq OWNED BY public.rg_ressemblant.id;
            public       postgres    false    241            �            1259    34726    role    TABLE     _   CREATE TABLE public.role (
    id integer NOT NULL,
    description character varying(1000)
);
    DROP TABLE public.role;
       public         postgres    false            �            1259    34732    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public       postgres    false    242            |           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
            public       postgres    false    243            �            1259    34734 
   type_usage    TABLE     p   CREATE TABLE public.type_usage (
    id integer NOT NULL,
    designation text,
    id_dossier_usage integer
);
    DROP TABLE public.type_usage;
       public         postgres    false            �            1259    34740    type_usage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_usage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.type_usage_id_seq;
       public       postgres    false    244            }           0    0    type_usage_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.type_usage_id_seq OWNED BY public.type_usage.id;
            public       postgres    false    245            �            1259    34742    utilisateur    TABLE     _  CREATE TABLE public.utilisateur (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    fonction text NOT NULL,
    date_creation date,
    info_personnels text,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    sexe character varying(100) NOT NULL,
    id_demande_dossier integer
);
    DROP TABLE public.utilisateur;
       public         postgres    false            �            1259    34748    utilisateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilisateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.utilisateur_id_seq;
       public       postgres    false    246            ~           0    0    utilisateur_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.utilisateur_id_seq OWNED BY public.utilisateur.id;
            public       postgres    false    247            �            1259    34750    utilise_dans    TABLE     {   CREATE TABLE public.utilise_dans (
    id integer NOT NULL,
    id_domaine integer NOT NULL,
    id_rg integer NOT NULL
);
     DROP TABLE public.utilise_dans;
       public         postgres    false            �            1259    34753    utilise_dans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilise_dans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utilise_dans_id_seq;
       public       postgres    false    248                       0    0    utilise_dans_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utilise_dans_id_seq OWNED BY public.utilise_dans.id;
            public       postgres    false    249            J           2604    34755    classification id    DEFAULT     n   ALTER TABLE ONLY public.classification ALTER COLUMN id SET DEFAULT nextval('public.espece_id_seq'::regclass);
 @   ALTER TABLE public.classification ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    199            K           2604    34756    demande_dossier id    DEFAULT     u   ALTER TABLE ONLY public.demande_dossier ALTER COLUMN id SET DEFAULT nextval('public.dossierusage_id_seq'::regclass);
 A   ALTER TABLE public.demande_dossier ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    200            L           2604    34757    document id    DEFAULT     j   ALTER TABLE ONLY public.document ALTER COLUMN id SET DEFAULT nextval('public.document_id_seq'::regclass);
 :   ALTER TABLE public.document ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    201            M           2604    34758    document-juridique  id    DEFAULT     r   ALTER TABLE ONLY public."document-juridique " ALTER COLUMN id SET DEFAULT nextval('public.loi_id_seq'::regclass);
 G   ALTER TABLE public."document-juridique " ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    202            N           2604    34759 
   domaine id    DEFAULT     h   ALTER TABLE ONLY public.domaine ALTER COLUMN id SET DEFAULT nextval('public.domaine_id_seq'::regclass);
 9   ALTER TABLE public.domaine ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205            O           2604    34760    etat_dossier id    DEFAULT     r   ALTER TABLE ONLY public.etat_dossier ALTER COLUMN id SET DEFAULT nextval('public.etat_dossier_id_seq'::regclass);
 >   ALTER TABLE public.etat_dossier ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            P           2604    34761    evenement id    DEFAULT     l   ALTER TABLE ONLY public.evenement ALTER COLUMN id SET DEFAULT nextval('public.evenement_id_seq'::regclass);
 ;   ALTER TABLE public.evenement ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211            I           2604    34762    expert  id     DEFAULT     p   ALTER TABLE ONLY public."expert " ALTER COLUMN "id " SET DEFAULT nextval('public."Expert _id _seq"'::regclass);
 >   ALTER TABLE public."expert " ALTER COLUMN "id " DROP DEFAULT;
       public       postgres    false    197    196            Q           2604    34763 	   fiche  id    DEFAULT     j   ALTER TABLE ONLY public."fiche " ALTER COLUMN id SET DEFAULT nextval('public."fiche _id_seq"'::regclass);
 :   ALTER TABLE public."fiche " ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            R           2604    34764    institution id    DEFAULT     p   ALTER TABLE ONLY public.institution ALTER COLUMN id SET DEFAULT nextval('public.institution_id_seq'::regclass);
 =   ALTER TABLE public.institution ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            S           2604    34765 	   permis id    DEFAULT     f   ALTER TABLE ONLY public.permis ALTER COLUMN id SET DEFAULT nextval('public.permis_id_seq'::regclass);
 8   ALTER TABLE public.permis ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221            T           2604    34767    proctraditionnel id    DEFAULT     z   ALTER TABLE ONLY public.proctraditionnel ALTER COLUMN id SET DEFAULT nextval('public.proctraditionnel_id_seq'::regclass);
 B   ALTER TABLE public.proctraditionnel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            U           2604    34768    reference id    DEFAULT     l   ALTER TABLE ONLY public.reference ALTER COLUMN id SET DEFAULT nextval('public.reference_id_seq'::regclass);
 ;   ALTER TABLE public.reference ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            V           2604    34769    rg id    DEFAULT     ^   ALTER TABLE ONLY public.rg ALTER COLUMN id SET DEFAULT nextval('public.rg_id_seq'::regclass);
 4   ALTER TABLE public.rg ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    228            W           2604    34770     rg_alimagricol id_rg_alimagricol    DEFAULT     �   ALTER TABLE ONLY public.rg_alimagricol ALTER COLUMN id_rg_alimagricol SET DEFAULT nextval('public.rg_alimagricol_id_rg_alimagricol_seq'::regclass);
 O   ALTER TABLE public.rg_alimagricol ALTER COLUMN id_rg_alimagricol DROP DEFAULT;
       public       postgres    false    230    229            X           2604    34771    rg_faune id_rg_faune    DEFAULT     |   ALTER TABLE ONLY public.rg_faune ALTER COLUMN id_rg_faune SET DEFAULT nextval('public.rg_faune_id_rg_faune_seq'::regclass);
 C   ALTER TABLE public.rg_faune ALTER COLUMN id_rg_faune DROP DEFAULT;
       public       postgres    false    232    231            Y           2604    34772    rg_forest id_rg_forest    DEFAULT     �   ALTER TABLE ONLY public.rg_forest ALTER COLUMN id_rg_forest SET DEFAULT nextval('public.rg_forest_id_rg_forest_seq'::regclass);
 E   ALTER TABLE public.rg_forest ALTER COLUMN id_rg_forest DROP DEFAULT;
       public       postgres    false    234    233            Z           2604    34773    rg_marine id_rg_marine    DEFAULT     �   ALTER TABLE ONLY public.rg_marine ALTER COLUMN id_rg_marine SET DEFAULT nextval('public.rg_marine_id_rg_marine_seq'::regclass);
 E   ALTER TABLE public.rg_marine ALTER COLUMN id_rg_marine DROP DEFAULT;
       public       postgres    false    237    236            [           2604    34774    rg_micro_org id_rg_micro_org    DEFAULT     �   ALTER TABLE ONLY public.rg_micro_org ALTER COLUMN id_rg_micro_org SET DEFAULT nextval('public.rg_micro_org_id_rg_micro_org_seq'::regclass);
 K   ALTER TABLE public.rg_micro_org ALTER COLUMN id_rg_micro_org DROP DEFAULT;
       public       postgres    false    239    238            \           2604    34775    rg_ressemblant id    DEFAULT     v   ALTER TABLE ONLY public.rg_ressemblant ALTER COLUMN id SET DEFAULT nextval('public.rg_ressemblant_id_seq'::regclass);
 @   ALTER TABLE public.rg_ressemblant ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            ]           2604    34776    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            ^           2604    34777    type_usage id    DEFAULT     n   ALTER TABLE ONLY public.type_usage ALTER COLUMN id SET DEFAULT nextval('public.type_usage_id_seq'::regclass);
 <   ALTER TABLE public.type_usage ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            _           2604    34778    utilisateur id    DEFAULT     p   ALTER TABLE ONLY public.utilisateur ALTER COLUMN id SET DEFAULT nextval('public.utilisateur_id_seq'::regclass);
 =   ALTER TABLE public.utilisateur ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            `           2604    34779    utilise_dans id    DEFAULT     r   ALTER TABLE ONLY public.utilise_dans ALTER COLUMN id SET DEFAULT nextval('public.utilise_dans_id_seq'::regclass);
 >   ALTER TABLE public.utilise_dans ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            .          0    34549 
   avoir_role 
   TABLE DATA               =   COPY public.avoir_role (id_utilisateur, id_role) FROM stdin;
    public       postgres    false    198   �      /          0    34552    classification 
   TABLE DATA               i   COPY public.classification (id, espece, genre, famille, ordre, class, embranchement, groupe) FROM stdin;
    public       postgres    false    199   -      0          0    34558    demande_dossier 
   TABLE DATA               �   COPY public.demande_dossier (id, numero_dossier, description, date_creation, date_dernier_modif, archive, type, but) FROM stdin;
    public       postgres    false    200   p	      1          0    34564    document 
   TABLE DATA               K   COPY public.document (id, nom, chemin_doc, id_demande_dossier) FROM stdin;
    public       postgres    false    201   �	      2          0    34567    document-juridique  
   TABLE DATA               �   COPY public."document-juridique " (id, designation, date_sortie, chemin_doc, code, "meta-donnee", resume, version, "abrogé", "motif-abrogation") FROM stdin;
    public       postgres    false    202   �	      4          0    34575    document_juridique 
   TABLE DATA               �   COPY public.document_juridique (id, "abrogé", chemin_doc, code, date_sortie, designation, meta_donnee, modif_abrogation, resume, version) FROM stdin;
    public       postgres    false    204   �	      5          0    34581    domaine 
   TABLE DATA               2   COPY public.domaine (id, designation) FROM stdin;
    public       postgres    false    205   �	      9          0    34593    etat_dossier 
   TABLE DATA               K   COPY public.etat_dossier (id, designation, id_demande_dossier) FROM stdin;
    public       postgres    false    209   �
      ;          0    34601 	   evenement 
   TABLE DATA               Z   COPY public.evenement (id, "theme ", lieu, description, date, id_institution) FROM stdin;
    public       postgres    false    211   �
      ,          0    34541    expert  
   TABLE DATA               k   COPY public."expert " ("id ", nom, prenom, profil, "specialité", lien_avatar, id_institution) FROM stdin;
    public       postgres    false    196   �
      =          0    34609    fiche  
   TABLE DATA               �   COPY public."fiche " (id, "statut ", "date_dernier-modification", date_publication, "numero-ref", id_reference, id_utilisateur, cpt_nb_vus) FROM stdin;
    public       postgres    false    213   �
      @          0    34619    institution 
   TABLE DATA               �   COPY public.institution (id, nom, description, date_ouverture, localisation, site, image, type_institution, domaine) FROM stdin;
    public       postgres    false    216         B          0    34630    institutions_domaines 
   TABLE DATA               K   COPY public.institutions_domaines (id_institution, id_domaine) FROM stdin;
    public       postgres    false    218   �      C          0    34633    loi 
   TABLE DATA               \   COPY public.loi (id_loi, chemin_doc, date_sortie, description, id, designation) FROM stdin;
    public       postgres    false    219   �      E          0    34641    permis 
   TABLE DATA               l   COPY public.permis (id, numero_permis, resume, date_debut, date_expiration, id_demande_dossier) FROM stdin;
    public       postgres    false    221   �      G          0    34652    possede_document_juridique 
   TABLE DATA               R   COPY public.possede_document_juridique (id_document_juridique, id_rg) FROM stdin;
    public       postgres    false    223   �      H          0    34657    proctraditionnel 
   TABLE DATA               G   COPY public.proctraditionnel (id, description, id_rg, nom) FROM stdin;
    public       postgres    false    224         J          0    34665 	   reference 
   TABLE DATA               �   COPY public.reference (id, "titre-ouvrage", auteur, maison, "année-publication", resume, "lien-web", "lien-image") FROM stdin;
    public       postgres    false    226   �      L          0    34673    rg 
   TABLE DATA               �   COPY public.rg (id, lien_photo, description, biotope, reproduction, cle_identification, id_classification, id_dossier_usage, nom, zonegeo, id_demande_dossier, dimensions, created_at, updated_at, type, aliment, nomscient) FROM stdin;
    public       postgres    false    228   �      M          0    34679    rg_alimagricol 
   TABLE DATA               O   COPY public.rg_alimagricol (id_rg_alimagricol, type, regne, rg_id) FROM stdin;
    public       postgres    false    229   Q      O          0    34687    rg_faune 
   TABLE DATA               N   COPY public.rg_faune (id_rg_faune, type, situation, regne, rg_id) FROM stdin;
    public       postgres    false    231   ZQ      Q          0    34695 	   rg_forest 
   TABLE DATA               s   COPY public.rg_forest (id_rg_forest, parties_utilises, constituants, usage, type_forest, regne, rg_id) FROM stdin;
    public       postgres    false    233   �Q      T          0    34705 	   rg_marine 
   TABLE DATA               n   COPY public.rg_marine (id_rg_marine, en_production, est_protege, niveau_profondeur, regne, rg_id) FROM stdin;
    public       postgres    false    236   �[      V          0    34713    rg_micro_org 
   TABLE DATA               V   COPY public.rg_micro_org (id_rg_micro_org, est_nocif, regne, type, rg_id) FROM stdin;
    public       postgres    false    238   �[      X          0    34721    rg_ressemblant 
   TABLE DATA               ?   COPY public.rg_ressemblant (id, id_rg_ressemblant) FROM stdin;
    public       postgres    false    240   /\      Z          0    34726    role 
   TABLE DATA               /   COPY public.role (id, description) FROM stdin;
    public       postgres    false    242   L\      \          0    34734 
   type_usage 
   TABLE DATA               G   COPY public.type_usage (id, designation, id_dossier_usage) FROM stdin;
    public       postgres    false    244   �\      ^          0    34742    utilisateur 
   TABLE DATA               �   COPY public.utilisateur (id, email, password, fonction, date_creation, info_personnels, nom, prenom, sexe, id_demande_dossier) FROM stdin;
    public       postgres    false    246   ]      `          0    34750    utilise_dans 
   TABLE DATA               =   COPY public.utilise_dans (id, id_domaine, id_rg) FROM stdin;
    public       postgres    false    248   ^      �           0    0    Expert _id _seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Expert _id _seq"', 1, false);
            public       postgres    false    197            �           0    0    document_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.document_id_seq', 1, false);
            public       postgres    false    203            �           0    0    domaine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.domaine_id_seq', 1, false);
            public       postgres    false    206            �           0    0    dossierusage_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dossierusage_id_seq', 1, false);
            public       postgres    false    207            �           0    0    espece_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.espece_id_seq', 1, false);
            public       postgres    false    208            �           0    0    etat_dossier_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.etat_dossier_id_seq', 1, false);
            public       postgres    false    210            �           0    0    evenement_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.evenement_id_seq', 1, false);
            public       postgres    false    212            �           0    0    fiche _id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."fiche _id_seq"', 1, false);
            public       postgres    false    214            �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 31, true);
            public       postgres    false    215            �           0    0    institution_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.institution_id_seq', 9, true);
            public       postgres    false    217            �           0    0 
   loi_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.loi_id_seq', 1, false);
            public       postgres    false    220            �           0    0    permis_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.permis_id_seq', 1, false);
            public       postgres    false    222            �           0    0    proctraditionnel_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.proctraditionnel_id_seq', 1, false);
            public       postgres    false    225            �           0    0    reference_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reference_id_seq', 1, false);
            public       postgres    false    227            �           0    0 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.rg_alimagricol_id_rg_alimagricol_seq', 3, true);
            public       postgres    false    230            �           0    0    rg_faune_id_rg_faune_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.rg_faune_id_rg_faune_seq', 1, true);
            public       postgres    false    232            �           0    0    rg_forest_id_rg_forest_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.rg_forest_id_rg_forest_seq', 2, true);
            public       postgres    false    234            �           0    0 	   rg_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.rg_id_seq', 1, false);
            public       postgres    false    235            �           0    0    rg_marine_id_rg_marine_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.rg_marine_id_rg_marine_seq', 7, true);
            public       postgres    false    237            �           0    0     rg_micro_org_id_rg_micro_org_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.rg_micro_org_id_rg_micro_org_seq', 6, true);
            public       postgres    false    239            �           0    0    rg_ressemblant_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.rg_ressemblant_id_seq', 1, false);
            public       postgres    false    241            �           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
            public       postgres    false    243            �           0    0    type_usage_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.type_usage_id_seq', 1, false);
            public       postgres    false    245            �           0    0    utilisateur_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.utilisateur_id_seq', 1, false);
            public       postgres    false    247            �           0    0    utilise_dans_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utilise_dans_id_seq', 1, false);
            public       postgres    false    249            b           2606    34781    expert  Expert _pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."expert "
    ADD CONSTRAINT "Expert _pkey" PRIMARY KEY ("id ");
 B   ALTER TABLE ONLY public."expert " DROP CONSTRAINT "Expert _pkey";
       public         postgres    false    196            d           2606    34785    avoir_role avoir_role_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT avoir_role_pkey PRIMARY KEY (id_utilisateur, id_role);
 D   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT avoir_role_pkey;
       public         postgres    false    198    198            n           2606    34787 *   document_juridique document_juridique_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.document_juridique
    ADD CONSTRAINT document_juridique_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.document_juridique DROP CONSTRAINT document_juridique_pkey;
       public         postgres    false    204            j           2606    34789    document document_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
       public         postgres    false    201            p           2606    34791    domaine domaine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.domaine
    ADD CONSTRAINT domaine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.domaine DROP CONSTRAINT domaine_pkey;
       public         postgres    false    205            h           2606    34793 !   demande_dossier dossierusage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.demande_dossier
    ADD CONSTRAINT dossierusage_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.demande_dossier DROP CONSTRAINT dossierusage_pkey;
       public         postgres    false    200            f           2606    34795    classification espece_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classification
    ADD CONSTRAINT espece_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classification DROP CONSTRAINT espece_pkey;
       public         postgres    false    199            r           2606    34797    etat_dossier etat_dossier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etat_dossier
    ADD CONSTRAINT etat_dossier_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etat_dossier DROP CONSTRAINT etat_dossier_pkey;
       public         postgres    false    209            t           2606    34799    evenement evenement_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.evenement DROP CONSTRAINT evenement_pkey;
       public         postgres    false    211            v           2606    34801    fiche  fiche _pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _pkey";
       public         postgres    false    213            x           2606    34803    institution institution_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.institution DROP CONSTRAINT institution_pkey;
       public         postgres    false    216            l           2606    34805    document-juridique  loi_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."document-juridique "
    ADD CONSTRAINT loi_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."document-juridique " DROP CONSTRAINT loi_pkey;
       public         postgres    false    202            z           2606    34807    loi loi_pkey1 
   CONSTRAINT     O   ALTER TABLE ONLY public.loi
    ADD CONSTRAINT loi_pkey1 PRIMARY KEY (id_loi);
 7   ALTER TABLE ONLY public.loi DROP CONSTRAINT loi_pkey1;
       public         postgres    false    219            �           2606    34994    rg_micro_org myprimarykedy 
   CONSTRAINT     e   ALTER TABLE ONLY public.rg_micro_org
    ADD CONSTRAINT myprimarykedy PRIMARY KEY (id_rg_micro_org);
 D   ALTER TABLE ONLY public.rg_micro_org DROP CONSTRAINT myprimarykedy;
       public         postgres    false    238            �           2606    34986    rg_alimagricol myprimarykey 
   CONSTRAINT     h   ALTER TABLE ONLY public.rg_alimagricol
    ADD CONSTRAINT myprimarykey PRIMARY KEY (id_rg_alimagricol);
 E   ALTER TABLE ONLY public.rg_alimagricol DROP CONSTRAINT myprimarykey;
       public         postgres    false    229            �           2606    34988    rg_faune myprimarykey2 
   CONSTRAINT     ]   ALTER TABLE ONLY public.rg_faune
    ADD CONSTRAINT myprimarykey2 PRIMARY KEY (id_rg_faune);
 @   ALTER TABLE ONLY public.rg_faune DROP CONSTRAINT myprimarykey2;
       public         postgres    false    231            �           2606    34990    rg_forest myprimarykey3 
   CONSTRAINT     _   ALTER TABLE ONLY public.rg_forest
    ADD CONSTRAINT myprimarykey3 PRIMARY KEY (id_rg_forest);
 A   ALTER TABLE ONLY public.rg_forest DROP CONSTRAINT myprimarykey3;
       public         postgres    false    233            �           2606    34992    rg_marine myprimarykeyd 
   CONSTRAINT     _   ALTER TABLE ONLY public.rg_marine
    ADD CONSTRAINT myprimarykeyd PRIMARY KEY (id_rg_marine);
 A   ALTER TABLE ONLY public.rg_marine DROP CONSTRAINT myprimarykeyd;
       public         postgres    false    236            |           2606    34809    permis permis_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.permis
    ADD CONSTRAINT permis_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.permis DROP CONSTRAINT permis_pkey;
       public         postgres    false    221            ~           2606    34813 &   proctraditionnel proctraditionnel_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proctraditionnel
    ADD CONSTRAINT proctraditionnel_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.proctraditionnel DROP CONSTRAINT proctraditionnel_pkey;
       public         postgres    false    224            �           2606    34815    reference reference_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reference
    ADD CONSTRAINT reference_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reference DROP CONSTRAINT reference_pkey;
       public         postgres    false    226            �           2606    34817 
   rg rg_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_pkey;
       public         postgres    false    228            �           2606    34819 "   rg_ressemblant rg_ressemblant_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_pkey PRIMARY KEY (id, id_rg_ressemblant);
 L   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_pkey;
       public         postgres    false    240    240            �           2606    34821    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public         postgres    false    242            �           2606    34823    type_usage type_usage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.type_usage
    ADD CONSTRAINT type_usage_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.type_usage DROP CONSTRAINT type_usage_pkey;
       public         postgres    false    244            �           2606    34825 !   utilisateur utilisateur_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_email_key UNIQUE (email);
 K   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_email_key;
       public         postgres    false    246            �           2606    34827    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public         postgres    false    246            �           2606    34829    utilise_dans utilise_dans_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_pkey PRIMARY KEY (id, id_rg, id_domaine);
 H   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_pkey;
       public         postgres    false    248    248    248            �           2606    34840 )   document document_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 S   ALTER TABLE ONLY public.document DROP CONSTRAINT document_id_demande_dossier_fkey;
       public       postgres    false    2920    200    201            �           2606    34845 1   etat_dossier etat_dossier_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.etat_dossier
    ADD CONSTRAINT etat_dossier_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 [   ALTER TABLE ONLY public.etat_dossier DROP CONSTRAINT etat_dossier_id_demande_dossier_fkey;
       public       postgres    false    200    209    2920            �           2606    34850 '   evenement evenement_id_institution_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_id_institution_fkey FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 Q   ALTER TABLE ONLY public.evenement DROP CONSTRAINT evenement_id_institution_fkey;
       public       postgres    false    211    2936    216            �           2606    34855 #   expert  expert _id_institution_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."expert "
    ADD CONSTRAINT "expert _id_institution_fkey" FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 Q   ALTER TABLE ONLY public."expert " DROP CONSTRAINT "expert _id_institution_fkey";
       public       postgres    false    196    2936    216            �           2606    34860    fiche  fiche _id_reference_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _id_reference_fkey" FOREIGN KEY (id_reference) REFERENCES public.reference(id);
 M   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _id_reference_fkey";
       public       postgres    false    2944    226    213            �           2606    34865 !   fiche  fiche _id_utilisateur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _id_utilisateur_fkey" FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);
 O   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _id_utilisateur_fkey";
       public       postgres    false    213    2966    246            �           2606    34870 1   institutions_domaines fk4c5rhd1t8a31dppb98diancfo    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions_domaines
    ADD CONSTRAINT fk4c5rhd1t8a31dppb98diancfo FOREIGN KEY (id_domaine) REFERENCES public.domaine(id);
 [   ALTER TABLE ONLY public.institutions_domaines DROP CONSTRAINT fk4c5rhd1t8a31dppb98diancfo;
       public       postgres    false    205    2928    218            �           2606    34875 6   possede_document_juridique fk9a7261arnei5rjvbr8filae4o    FK CONSTRAINT     �   ALTER TABLE ONLY public.possede_document_juridique
    ADD CONSTRAINT fk9a7261arnei5rjvbr8filae4o FOREIGN KEY (id_document_juridique) REFERENCES public.document_juridique(id);
 `   ALTER TABLE ONLY public.possede_document_juridique DROP CONSTRAINT fk9a7261arnei5rjvbr8filae4o;
       public       postgres    false    2926    223    204            �           2606    34880 *   rg_alimagricol fkatxppl7q94v9ig9bjxpw7sa42    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_alimagricol
    ADD CONSTRAINT fkatxppl7q94v9ig9bjxpw7sa42 FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 T   ALTER TABLE ONLY public.rg_alimagricol DROP CONSTRAINT fkatxppl7q94v9ig9bjxpw7sa42;
       public       postgres    false    229    228    2946            �           2606    34885 %   rg_forest fkcvm532l5uo3ks7ttyy0gefsko    FK CONSTRAINT        ALTER TABLE ONLY public.rg_forest
    ADD CONSTRAINT fkcvm532l5uo3ks7ttyy0gefsko FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_forest DROP CONSTRAINT fkcvm532l5uo3ks7ttyy0gefsko;
       public       postgres    false    2946    233    228            �           2606    34890 6   possede_document_juridique fkeo675065yh8inj9bsd6nbavio    FK CONSTRAINT     �   ALTER TABLE ONLY public.possede_document_juridique
    ADD CONSTRAINT fkeo675065yh8inj9bsd6nbavio FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 `   ALTER TABLE ONLY public.possede_document_juridique DROP CONSTRAINT fkeo675065yh8inj9bsd6nbavio;
       public       postgres    false    228    223    2946            �           2606    34895 &   avoir_role fkg34ny0y2uno228qe5absx5658    FK CONSTRAINT     �   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT fkg34ny0y2uno228qe5absx5658 FOREIGN KEY (id_role) REFERENCES public.role(id);
 P   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT fkg34ny0y2uno228qe5absx5658;
       public       postgres    false    198    2960    242            �           2606    34900 %   rg_marine fkhknfkoyqwl9ackw7oxnyyu1r1    FK CONSTRAINT        ALTER TABLE ONLY public.rg_marine
    ADD CONSTRAINT fkhknfkoyqwl9ackw7oxnyyu1r1 FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_marine DROP CONSTRAINT fkhknfkoyqwl9ackw7oxnyyu1r1;
       public       postgres    false    236    228    2946            �           2606    34905 $   rg_faune fkijkgcjpol2c8dok2j2gbp8mai    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rg_faune
    ADD CONSTRAINT fkijkgcjpol2c8dok2j2gbp8mai FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 N   ALTER TABLE ONLY public.rg_faune DROP CONSTRAINT fkijkgcjpol2c8dok2j2gbp8mai;
       public       postgres    false    2946    231    228            �           2606    34910 (   rg_micro_org fkjsb2p36o3hjs0ypbganimesfe    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_micro_org
    ADD CONSTRAINT fkjsb2p36o3hjs0ypbganimesfe FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 R   ALTER TABLE ONLY public.rg_micro_org DROP CONSTRAINT fkjsb2p36o3hjs0ypbganimesfe;
       public       postgres    false    238    228    2946            �           2606    34915 &   avoir_role fkn8m0aqw8f2oifm5qkiaoej6ex    FK CONSTRAINT     �   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT fkn8m0aqw8f2oifm5qkiaoej6ex FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);
 P   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT fkn8m0aqw8f2oifm5qkiaoej6ex;
       public       postgres    false    198    2966    246            �           2606    34920 1   institutions_domaines fkolilqhoafxflwiedt6vtu9yhi    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions_domaines
    ADD CONSTRAINT fkolilqhoafxflwiedt6vtu9yhi FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 [   ALTER TABLE ONLY public.institutions_domaines DROP CONSTRAINT fkolilqhoafxflwiedt6vtu9yhi;
       public       postgres    false    216    218    2936            �           2606    34925 %   permis permis_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.permis
    ADD CONSTRAINT permis_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 O   ALTER TABLE ONLY public.permis DROP CONSTRAINT permis_id_demande_dossier_fkey;
       public       postgres    false    200    2920    221            �           2606    34940 ,   proctraditionnel proctraditionnel_id_rg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proctraditionnel
    ADD CONSTRAINT proctraditionnel_id_rg_fkey FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 V   ALTER TABLE ONLY public.proctraditionnel DROP CONSTRAINT proctraditionnel_id_rg_fkey;
       public       postgres    false    2946    224    228            �           2606    34945    rg rg_id_classification_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_id_classification_fkey FOREIGN KEY (id_classification) REFERENCES public.classification(id);
 F   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_id_classification_fkey;
       public       postgres    false    228    199    2918            �           2606    34950    rg rg_id_dossier_usage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_id_dossier_usage_fkey FOREIGN KEY (id_dossier_usage) REFERENCES public.demande_dossier(id);
 E   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_id_dossier_usage_fkey;
       public       postgres    false    200    2920    228            �           2606    34955 %   rg_ressemblant rg_ressemblant_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_id_fkey FOREIGN KEY (id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_id_fkey;
       public       postgres    false    2946    240    228            �           2606    34960 4   rg_ressemblant rg_ressemblant_id_rg_ressemblant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_id_rg_ressemblant_fkey FOREIGN KEY (id_rg_ressemblant) REFERENCES public.rg(id);
 ^   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_id_rg_ressemblant_fkey;
       public       postgres    false    228    240    2946            �           2606    34965 +   type_usage type_usage_id_dossier_usage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_usage
    ADD CONSTRAINT type_usage_id_dossier_usage_fkey FOREIGN KEY (id_dossier_usage) REFERENCES public.demande_dossier(id);
 U   ALTER TABLE ONLY public.type_usage DROP CONSTRAINT type_usage_id_dossier_usage_fkey;
       public       postgres    false    200    2920    244            �           2606    34970 )   utilise_dans utilise_dans_id_domaine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_id_domaine_fkey FOREIGN KEY (id_domaine) REFERENCES public.domaine(id);
 S   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_id_domaine_fkey;
       public       postgres    false    2928    248    205            �           2606    34975 $   utilise_dans utilise_dans_id_rg_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_id_rg_fkey FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 N   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_id_rg_fkey;
       public       postgres    false    2946    228    248            .   "   x�32�4�22�4�\Ɔ���`҄+F��� K�s      /   3  x���Kr�8���)x�)���RQl�U��Te���0 �2s��z5����o �h�I��ݍ�ֈ-475��.dݔ��������z��ؾH�>�Z�ʫ��'�������U�֒}�x2f3�r�g����7�ͱ��Fqv�W	F=} }�^4�+H��tKi�[���{%����)����J����Iy���R�!�R�6s�aܭ�$[r��u<�m��8gl)
+�(@����Vvm[�Ț�U��k��u�en���C	���Z6�������1�8Pi*�3
�S�k��FPu���*��}��X���XK��9Is�{���V����֚� �ME��S��%�<D]�;޸�gƮ�V>C�w�P�S,�p�����蕪Ô�(̈A�Zs��ykKid���/&��\���F�>�1ҧB[�2�r4��+pM������Ȓ+O�|5C��T.�<6���I�N� 	��"lsՔ�I<�Ƌ�eθ1r�X�>rWq���������5^N2g#iQ�H�����c����f��r6z�\V�n����ep;�B�?,|u*r��G+j�q$[H�תkb	5��1.ؓ�d�]���Ru ��R-�)Hп��.ٝz&GB��Bum�����Zʐ	�n.���q���DAL�uaDC.i)t�ZW߱&wJu�ơ�i|�ȱ�4.����ߎ!���n�޾gו2d�,K���,`��5���cZ��5kL�z�v�W��9a���^ࣃu|�0jީݫ}$_��w0�8�B�B��R���~MZ@s"�?f�s��ZYOɎ"���{ц�M12�b\��2��P-�ɑ+�ƗCZ՘�<�N�*���x������F�-�OV<F��)~ٲ��@#)��Q��#l?%���Q�X��ZB��@��)4����?R	?��G��U�'�F]f�]�i�D���Q�_��߇c�N	?`'�_�M�ndSR�y󣳵����?��V�����Ƀ�����7ʕp��'焚�gBr׉w�x8F�ߢ��ɒ�鶑�ۗ0��S%���qWGH���'|g�8�U�������`����nC�<���W��3�T�B� �8P~ֻ�o$�����>t�o��Q<G<9�4��^ܝ��="o0�,�@"�:^1�ϑ�8��.�o�d:ޟ���J�7�����Lv�rj�l�;��g����س����L��6^ NU1e�́�z�s�	���'�!k��X�/(�V��>���� O
9"�3�J�Du��r��Slzf�NQ����-Q�?���ݢ��k���_�r��Ap�*��urr�KE	A      0      x������ � �      1      x������ � �      2      x������ � �      4      x������ � �      5   �   x�}��1Dϸ
W�į�\��7����$�#m�[�vB%8��r�ǚy#�6g.%7u\�/sZ�*�fb�ʥ��\Q9P��	jw���w͑~	3�e�I�`���Ɏޏ'���!r��ͫ�jS��*"�J��U��Gj��P���^1��3��O�*�i��)I�\� �jz�      9      x������ � �      ;      x������ � �      ,      x������ � �      =      x������ � �      @   t	  x��X�r���9_љw� ��܌z��W%j)iM��@7��<�I���F��Fv��ٰ���K|n7 ��4[�������}�{���	U�/�V<c�2,���OR��c.����R�e,E�	&J����Lj�w��G�z,�ϕ�~)�,�֊���
b��3;����3������tߙ�sab	�����d���,㬬J�l"�ӽ��JZ	}KF��q���q�%;_=.E���[pS���R��_aKƓ�]eV����U
v(+d���Y�����t��\�{���{ՋN���Azo���`��+Y�f|��$���W6�Raz�޽��Jr�������l2�^���WP�(����M��5^ ^�Z(6���g�3�J�#'oNK�"�V�KaX��hܲy����N�+���S�|x�U�%E����t�Z8l�~,�ʙe��s��0���,��/9�*l��P��u��f}*a�Nj�f<l��&�.Ӗ�+xK���a�nߌ�EZ_i��JP�JZv�%�D����s�Y�={ 4�fJ����7��l�R;�Z�tI>a�e~�ؚ�X���������R(�Z�4�:\=�Z�ܶg)�_�L�ul�i�L쟪�e�)�r~�ܙ��:�j���/���prF�0:� �+�����j��u'�߷wl0d����h��.p�af%�ah���Q�"��܀AIg��D�]<z� ��wbҞ�vN�u�{2�J7M�w/hQ��ԥ������X�����{��,aقl�+v;w]�Xa��eX��W�}@�2�łU�G@���	�iCx��'^HSbz�+���[�y�S�K��z�����	?U��fL��c�~�m��$�Q�����Ax��te@����p���X�9�kR����Y���vIe�m?D�C��S�ȍ�Km<� ���Y�����	�!��D"6�c����V���r]W } �.x�h��~L1}_ �.�s�V@4E�<<�ɥۨ�s�قD�օ/�Ãp0��w/���f3r�"C�<`?V"aSPA��Y]� ݒ��($��Y�ǽ1*\��h̓<5U�Ψ�������-i1�j�]��޾��M�_?n=R�g�u�Y�3p'� ���_�E�2�D���]�T����/����a4�+B-��~C�ޫ?�4�GG�EnJ�a8اt�1�)�sC��Ƿ��B��-k��p�P�S�@�D��*���p� .|&�.�R�)�'�xr3�P�IM�O)��KG�ں-��"f��M�`��,���u���=�#sm��"f��kP-W��E]M��ZK�)�+���e��} <����0��?S����$���c���(j����P	H"/*��6@�f�xf8�>!�UA}<sOջI5�(�]r����D�t����s��˶�C�!U��h�w�m{�c��v���KT������{���-`��~nz�Dӫ��xvƏ��z��h*Vu�������������z��F҈פ��7U�g�gF�ߚI��&�5��3u>���ElF�l�MA�i�����"@*�p� K �]�������1b !� ���$�����Ge���-��U,]"�%��"���T��eP@�Ǥ�� �:�$2s2z�t.bߍ'�����T�T\�4��fվF��f�\���������Q
�h���J�R�'�!z�6�y��$�O���w�-Ł�7L��!߰3�+���*h�{��mt�) �����S�w�w<���Oj�w&�9v�7Ph�x�qP�;�ЕdU��B�(�A���'�o��N����`N�����v�z24�F'G�$�3U	�'s.=��,�Q�~�i ֧�d�-��e��g�:Sq�*I��O�I�b�IE��)�;�>����E��tA�۾���k���>����1$u �TX4d��j��{k���M	�a�ݶ�o!Ʃ6��#��}>��RE;vZ�c������_�.w4�R��SP�d����搢��mo�G	Y�QW�� ��;�s.��g�ur$���x����2�i�+E_B7#�N����'�~�x�$I,�Z{!D��(`g�R���~�3'hIC�ځ��6��t3�ߍ��iW��H��W�g�j�:_��`���ߘh�A-.u�/��6?��o���-p�)��������1t�y4?p�3G�G��'�ʏ� �J�f(nF���ԐN�T�[�c�ט
CZ�g���m�ף��be]6�A� �Um�	H^�v��G�&��^ e��s=�$d2O֯���!T���i��c�:~�۠JjP|����ă�� 
�!<�?�qq� �n��%{3�����QlH��L\��_�����_�x�o�D�      B      x������ � �      C      x������ � �      E      x������ � �      G      x������ � �      H   �  x��W�n7�G_�R����ʰ8�c	ҩ��pgip�����tA*��TiRϟ�Kr�%w�Z��3�׽�s.�I�ѨM(W�F5崊���(��ZZ�U�/�;MF�l�/YgL7gj�z�q�f{Y�$����iުA��}��єk�����i�p�J���)�M<:'&;�[l���JV;=����B����)����{�L�w=X<`�*X�Εu�4�U��q"�h��*8~c��F��:7��� �p�_k&9�l����~���ۿ����",�Sp�
���c���p�4�t��So�@x����,�u�s�Ǣ����$k���i�M�	����WX���2F�Zq������3q'N#�������HM��Y��Q;��3bXR���� ��>���M�����W�?����3���l��r���yK�l�$�Ef_�H��Ō���p8��ݏ��_d��Z�#�K�b�۔דi��2qb UEy��e�۔�M�g{D�,ecn�놋{!�%{��"'���d�;�iՁHc,�TJ��V� �+|�Ȥ�Iw���iGR��b�IY��3���A7�G})��*���~mS��3�3���iQ8}֯�7J��Mj|D�`b\���a�n�c(�c�j@�+��bXB�L+�H�>A�ۗ�д����	yO[�V�p�&C�K��>�~]�BL�_���rh�B�C�1ҙB�z��{J��u�P�l7@��ʆ\o��G�P�:,5�L����1��Y���
}��e�0�{��w���ҥ�8���HK�\�f6t�j��or7]�Q`��l�eg�v�W$�B��2��g��׶�$���fS��E�����~8r�;!�͵�3a(+Z�D��T�{DO�a�zv���\�1ˈ�;h�F��d;*C�D���S9,Z�'}��̣��07��3�ŮF��It�:�~UX�G��X pԘfR�'�F��n�>�k�K�Ӯk�ni"+�c���\<�?,Qb���Q�MI�Xj�n������-�+����u,5�)g�zѽ`1_vh�l��
�Շ^�Y�M���>\��.W�  { �}!Ȑ讫�"Z�V�t��lt�e�l�i�`M�{���m�w���o��,ls(lj�U��S��pM�s�����,����T�W1k4��sS�]]���£���},��,ʫ.qU�V��$��?��s�"�W\���̀�wH���ScL�yE�[Jz�1�;��vn�&�4���!��.��^3�7����z�;� N`�����HGu�p�"�
m�s���h�4?��������B��g�6'#��ԛԩԅ�\�"%5��f"�?�g0O4�(�9�W{�\kg$� b$�;l����kᓝo{�(�D
�z�S����:��ݮ������6�^���Q�w2�)��L�*�c�O����J��bq��0u�D[��j��z!�������r��X	�r�չ�n�%�ʲ�.&�:G��r�DKJ�A�)⪪N?�hˤ�3���>.`���T��X�u/�6���=%��)o�w��8�~��#~��^p�����B�+��&�$���wP��Q�����kFf����pV�N���]s��שʊ�䯉E��ҸX������nv      J      x������ � �      L      x��}Ko$�u�:�+@
A��z�W,�U��b�`�܌�LFwdDv<r�^i9���f5�V]2`{1^4�&���_2��ι7"��R�e<�,KU������M����UV}���o��ɹo_�w��&i��Mf����o�����M�"o>q�wǕ�s��4��-oϲw]�E����ͯ�dY�}l�N�z��y�����E��5�UU�Kg>ɮ��?���w�&���ҵ�����R�^-�U�ve��k����e�gw�o�$/�|��U�$]��.��k�%n:��C!����7����y^zy@^���.e���n��ۥ�W�,��G�q��.+�''��Ǜ��N�,o�\���R��Y~u%+����7˻3�*�jkjX���VX�����IV�F^�'�$�Ʌ�*�1V'k�c�`��I+���2W������"t�JD��%��^^WE5�=^W�d^W�R�~v,M
6)��NW�˦+�A|�Y�z�SEU�ؤs�Q�kY���m����uB2�:��},*��u���������[�������/L'��A��H'o]�V��ǕX�j9�+�������c#��,��1�@��F\�?�!��oy�u&-�w�Nv"�}++�),�F�TEj���{ץX:Y��]r!�6���.2���|ẛ��e�e.�F�Rw �Bn(�i�������B�*���"kۑ�f��b�y%��'�u�k�r>����zyRؠk|I�%������O�|:qs������QM\� 2�2�;G�O���]���쥏����4�[Ḵ����7� �|�����&����,�WU�E���L��կ������t��J����
�"���o~wپ5�瓮L�k'|B8#�zF�W�vS��˂�ob�B��%�v����		�y���W�I�8��y9i�$�x󵐂f\�!0ej��i�ɞU$H��յ|6��*�|t��r*��q߸������T�"�ikY���Dv�|��(�lZ�ܮI��d�4�,�������F��(�'�<Ƶ%�E��
b��wXn�~)��%�A�ϼlm���@�5���yC�	��h�>.�,����xj�KYLߖ;
��q@�7�����W��#vJ����!�â��A�U��t��ݤ>��n(���5\^@U6��/<�����~Q���_&n��>�r~I�b�Ѭ�:rVv[��r*����vY��$�j�%Y#�����>����tPw���0���qTK �HA6�FI7��0�+ٲ�fX_��Ww�4��Z8����p�\U�e9y�r���)U7R�Fm-(��4l�����J��א4��?�Ww~jYW�BjT-�5&{Q�5��ɒA	�>�l)�ɃW��7]�]��m���,���+H#�q�ʅ]�֡m���p��GWd���V@ٌ�;�"�v�2`�f�<��۪儷޺�,XL��N^�$A��Jqqg�,<�wk���h���*���W� �	��L�V� ���GD�,�q�ࠦ"���H3���&���m�Xwщ�K�*s���J!�_L7��M�?%p1���gz:PN�JHJǁ�,�E�3&��<}9����^�kdԭ��D������'�����}}���������&���bD��HI%u09#��R��M����(�����r�ݖ�� �.|/�0���+@�R" Yފ2�gx�'��{����N�ޘ���yb nRJzJ�\v�GpSP��d�HI/�@r��2�yW����mZ�/����2,�e��Bo��eâ��~q��b�!���(��N+5p��-�(JD6����kW���x�����Ū��ET\�P�-��r+�嶾N�Z�ad�UJ��c�<�&�zz����V�-���N6ɭ�f	���	�kT�r�/#���B���L�bG�+ 3f{f !˸�5��&ȽR!�L�+�D�JD�4��WK�WA6�:� �����3��BlM�Rޫڥ Dh�܏U�`)�d,�0���]N�()7cA��z+Ѫ��%$:?8��u�u��*i�����C��������G9��1@G\i*ш��W��B��י�6��'���P��t���LT��~ʩ���e�*�մE7j����� ���B{\�|�@@����˒��a��^��*A)�����x<J�/)��F��/�/���
��Yaz4�fA��,�XˮQχ���(_��[_N���ԝ�$W�� 9B?��X_ֵv�	nޛ�6 �{����:�׋hh���u���д&z8���"B��T��w��*��C׭�S.˷�s�󄤌]�����D��&9}���g�/�D�>��V7��uu)�A�~Ç?�$}J-��%�0��Y�ˏ+���ݯ�&B osg�mFS�.��"ǚ< B����L�zx"OOݲ�}�w���BO���O� �����7Y�E�-�U���;�9+>��kn�OY���s2b�Ǩ�	�{
_� 7S ��}{�S!���)�;��~����^w�1�'
]��{�~��i�hw'���������ɩ4�}MR�,�)N�'�	���i}��>�<7ٞ�k�Mh�Ba�i�++Ђ_��-L���:�?dt�� ����e�`i�x	.I�W2�h���/EB-��ϒC<w��Yх�݊��K�""�`w�\� E�`�hj,�׎���� ��5�����r+<4�C%ad��mx6�W`�q}�~3�!�\C�+�\$��	����Cm&��(廏�9@�wsr.B��bAm�8J��h	������5!F-�m��I\������Y��_�<��s�>L�˄��t�(p�&�����[/k�uQM���PgnbbO�d�O��!tp�g�%Y_�l�-Q�pSP�q|���]-{h�|m���c����hr��y�N���K��\�*�FL	�c���8��o�4�:uE��v"��g��E��� `8�厯�rj�ѓ�����j��E�ص��C��&o�J��*-�%�,_�Ԅ@�b������ 	�xV�QW�w����Y���h��.Q����e���M	��>��&'I.%��?��p��c`ѹhb�֓����� K��'oŲ3뺘��2]s��j�/,'��T[�_p"d객o�L�G�w,�C��._�\@��>����PNTu]����%�nv1`�A�
���/��$�;�f�P��h�F6uЬ{�|H
���*e�( !D���Zw�a|2?�P�b#��b��ь���
Qb��7IMx�o�X��WG�h�RgE]0.!�� W�h�o�'�F;���������FbS����A�L��Ķ���t�?j ��f"M��Zb�z��x�ެB�e	k7_�3D�ȃ7����VZPЉf
��
@Ͷ&���ԯ�E�l^g�2�!>(�%W������y�����;�CE
f��B����p��9�/�F��l�r�LD����ϩ�삩�����"���H��L+�����c�+�QF�1��KuT>�/ͫ�J}������M���_6��d'`=%�	�p)ۯ8.��or�3UBKCѮ�@ӠG+�	~;���^{�`�Q\oE��%���?����+��Aa�D�,Gn��(�,_�^��"�ޣ<٧�=}���Wɫ�Wg�o^����mG�SX��~:yK�����<�9�ļ��	�}��kNǖ�X�&jx2
MT0���hxf�ƙ�U��k,,!-�d-�.li������Ź9����p�SQ���q�$��c��d$�V[�A���]��-"���{�}p<^�brHa�OC�����j��䁉u�]=g&!E�`��)�R�j�G����hˬ��qSZW��?�=����YTf���Ǥ[*I�1ʆ޿K���O����~/��}4�4����;y7t��h�����)��qKAL`�m�� Y~>��!�Dk9M�a�q��v�?���W��p%���\ـ�/�Q�_B@|>?W���U�;q)˃aW��µ�[�O�O��~��Õ�j��    ���8����ShZ���_�V�Xe����My)�`��DܒX���������	����7��it�e����̆�%�4m���>�����-����z6.�O}������w�ۼ={���E��݇�_��?������wW'����7��L���V�X�f90�B�V�;���ܬ��:.|��Lf��}�����yH~R���!]ח��*1�]���Z%�:�5��0��Jo�	la�:��/2�h5m|;�A$��psǆ�R6�"S� ���L��� ��>�Q��Q
s��YL�:
���%@�G����S<H4�Z�c�Mȥw^q p��/ٮ��C�]W7y�*f�t4<C%�^΂˧�Մ�*@���:bhM���M��L��������$��FX^��i��0[GÔw O���ԠJʁ�/)a���兢�B�ٲo�M��$��SX���N�t�yr���(�F�_�H�����pEL4+�$L|���e�Q�/�V��Af���c�핱1�'W<+�Q+7�o��D�M�����9��	3e�`y^�M�ӳ��k߆(��)�����
���5�
�m&�t�����������Er�!y{~����ٓ�Yʼ|]���ѭ_!��0�9j��~��rfm����CL�g�Z�"?��9�1!Jb."%5Xv�#]��ښYQ�14���h�jnYū����<����ޏ^<9bz�	�z
_�.�F���Qor�H�v��J�K]-��#l"�4��4�̓�f����ygsH�Pi�R}b̸*���9���־
�-/��[��,/r�Il��	�;.�ӀC��
[N�]Y2k�s�K NÉ�6��h/��H�v�����^$�!�wf���m:V)Cut�2��xos0S%��yS���)�'�W#t]չ(�½ϝb�U�u�ΚL���ܓY�y ���뉝�Y>[��Siy�j۩A�{Y*]9�)1�Fk���|R]Ō�����o��d22�^@���*k�i���PG%�_Xw�(��<?K���d.�3�N��M��[cD�����e�ARNAI�X���I���:2	D$�<��Yd���؉�W�o>��x�:y����8/k�P~:��{�EڔϨ��@G8d)�RVSU�-D�{U%��J(rU���A�̚X��'+W��;��P��<�8m7�Ӯ(,�˾�W ~ɒ��[:����yִ)�� �|<[����U� P��_�)ݬ+ZCt КH��>Z�2�v�|�_�����\�CXF3��:��	�R
�8ewaڑ��S#�K��!���L�W���hd������d	�P��8S��l�-���g����ʃFp߀��d?=&�/士��e���� A���������F.1��f��=D^[���}��� F����h�0�h�<Cֶ��ϓ��k�!J�����6ŀ`��WQr4��MSΤ�(ZQ�ND�vۦ�ZP��ĆY/R��<�:�Nni��w��������UsH�SWg׮��K�Dt�k��42��9M��������.�!�GN�0�jŦ�"�1��ru��zR��Y!T,�����㞦WGQ��,��9�A�xE���(��d�?&�BЍ�Dr���o漉�_���0I.r�3i5X�7!()cV���{A���'	i��_�\TP#!� �l����ପ���i�7����9�5��,�R��"Vw�!w�"�3����2_�*`�`H717k�U&����2�(� T=���ϒl�&����#(�<�>̔��'�z-�C$��n�֬��5H�V@� �P/=%��h"QI_�;y�<yw��D�=;?y}�9Z��xr"��������'Ɏ#���>;"���"��x�({�9���hl��M,�|I@v����?�??&K7�.���=<�\�ny}[J��_��k�k��O����*�t�#Ì��������W;"�ܾ�3�M?�7\[6��}�1�"�s����vO�]޼�u��YBѻ�yA�_ni�}͚�T����f����F�(���j%���9ĘR��Q�F�T�HF^���&�� A�|x�]9*��o홋Q��rik��䑱�X�c;9d&ƈb�$�io�����W>Ȗ��R���T�eV�G	O����O���O"qߖ9�s�H���8نijTϑ���pbB�UJ�����
��`m#�+C�\Xs~Y���������<-o<H�_5�}}�CX���{,������4� ��ڑ��S��~�a!#fTdV@�Ιn�i�j�Cg�i1��F_�A�d2˰7L����G��L�(�E�7��s��S�Uǋd��M�0#-��d��4�4�4��MQ �	��<yv~�<?K^��K��~��읠ϻ�^�|<��nQ�s!Dmx1��W8��Z8�Eu@b/�ܒ��ң=���ߔk�j}����U��1�	U~xJ]��@j����d�P;i�o�XG�BA�Q�q41wA蝒N}�x��pۖ�Z�U��ua^�Y@i�M.�N�<�g�����J�>X�zߏ.��5t�	��a
ʳ�t�C�,B�:�+x���i(��2�nO
��?�
&1]6`Y&�n�#�4y�,T�ѿ�J���D.�y7���
a����ö�8ƱW�%�Z�6�+��?����;��,�I��.�X�$�,$#㎘F��r`串��b�l�b�?�7��Dzչ!�?L���#�}
�{����R��
�(s&��A/֕���|G�:� 7��B[|���ѓo1�a�K� (L�#0F��G��P�6��*T����f��w��mg�0x $�T��Lƅ�h��J���m*\p��u���特�c��H�^��Rt@U��"���eXΔ��f_�O��2��6�vf��Z����<�M�j#G�|<Vk�eDBVl������g��ۻ�O�~y�9J��p2jd����Mj�u�
KW�a٨�o��s�b;L�Ds��T̤���
R�1FKm/���2mVb� �������'[u�}y����I�Vh�VKc.g˧�A4���0�����N�������t���M��D��� ֞ڏ������M��B��H!�X^f��0�ʪ�,ry�	Kp�_��Tx[g�/)xίt�@^S_�g���jn�����EWY�kو5��D��J��i,��	E��=3o���㷜�29=W��9�r�\�b^E�f>�L���������m���	y(�T����&��qF���M^�q6��<1�?��E��9Y�^�x��zfͼ�����۴S�u��Q�#7m��.>�`u�VЦL��	,�EC,����p�z���{D�L/3R�6�F_Y�p�wj��=��eX��7f�@$�5M�F�q{�f�:��n��<e�ʛ�/xF��с��)��o{���d	5BCdv��?��&�~��"51F�����*v�Y��P/��t�:ƜQj
@���Mr=2�R�CI�nÔ�UW����g�������V�ȷ��(��,�&?�xЍ,X�j���X�!�xwd]	S�:9�?��������˱ ���8�,d���3��ɧ����a���G*��� �؝�ѐ{_�g9����J�[��f�l�*����Ն<�9����ib~d��.+��a?�C@L}��)E���oYu�w5�Vb5��4��-Z���7H��- t�j��n��C�"ٛ=]F����j~��õ��e_C" Y#Mn��6Z�l�(�p���I���T9?$�x3��� g�	 :�Oq���Fڜ(&8y��?y��͇�J9|2y�P�p���YpQ�7�:Ņ�q��g��[���p#��MxɽӐ����v����?�1r,�4�G�,�VjBb���5�
���ޖ ��/�щ*Պr�ye�,v�d�K!*x\D�-,7sfe��=?����x� �@H���	���5���,��+d{��ޔ���q0{p�١����+�O�,�'���[͕�d�A�*o��^    �S.���kb�-��(��w�Ӊ�5�r]��Qݛ�1���p������fɲ�ZƏz�'��%=��sȶ�z3.�;� 0A.��b�~�tl
��mX���.���Ա6�[`׈;�1=�+�UO�*���˼�c���a�w�;`�qa��=bY�Q��j&z����jk�y��A����y�b�������YWkv��^��Ƚ�_�� �1}��\=��Z����rn9J��4���\�]|�6��e9|������z4yu�U�̷p�@��\)��5�֟?�^Ļ�;�o�_h��5[��]w�w���Ԁ.,���&��ɷ4���3@����C�e���S�3N����T�Iߴbr��������x�����d- �Vc5R�:������0�X՞��0��->����=���m�ϐ���>N����#�s������4�S't�����z��;��Q�����Z8��Rs�� 4��"y0��.ۗ��=4z��w�x��&稊������)3����h�>���JvF���ńB�*g�@�Lt�q/�o��%M���'B�#�DvV���ys��Ek�W�է��v���f��o-�:;��f�;�j���`�]�.]8���类Nl�6�X���H��7��:s��4�(I��������������o�+�Ś݄p��b����oq;"6V�˃��dU��nc�(���ԍ9���uCf�%�ǿ���2��A�!<#�$��䬫�%E�E7�y#���z9��'��x���N�ߧ��d��7�_"�kX�I���tev��n���Q6�,�f�־l���־��OK"���f���T�	SN��t�1i�X��o+"��P��^�}���}��)�fY�/�c��H�͌����=L���I4M���NQ�Փ9buv���8�!������pc-�f1���!{;���'h"��
1���	�W��n��v������BB��صZ���Yhh���� ��VA�'J@��缮ذ=�����}���q�P^�u����}g�  �.�r�8�ޝ��&�䐂��7u�>ڛ����ݙ�_ �T���.%~tm�oj3���?֡��O�2v��� ��*��Gy��Ur���>%�]hzcw�}�m�C�7�W�Z�\�Q˿�y�HYW�"f�e�vS��α���������E5=jb�$��Jp$���z@��k��L0R��Z��>�mڵ�O�|z���:ҫ[Ls���u���)29E����\G���-���ad:��~�6b
����)�zȞ�LZKL���t��єϾ݅:g����[4G�(�Op���h�F,::���\٬��H�jx�F���9�ݧ�#�����e�"�ѯ��k���*x�(]��Ƅ�V}��]�eյ��
@��N ��9:@$l���T㏃|�A�4�a�L�6c����I-8�[��s���"��o`oC�H��~ǃh�/}y�jv8y���i�pS��p��31S�P볇z�%���,��)ٌ��c���)��d���_�D2zVP_�y��G������+�%?�h~L��ɱ��� �C�Z�H����m�㱵����3W5��0a���.��:قE'S?>ޞ��Y�2:�g�_u~���zV�.�l+�y�$�7F����S���WU��;� X;Y	jӣCVɝŜ�|��}��
��I�䀪��}?��{j1��-]2I)��ţ����x���%�O�W����̀,i"21T���k�k�3@:�G	,��'�����Kj�h7�c�d�K^�[�����+6����/]={Wu7�M��$ȧ{� ��͞��2�.����1���������p:nH��������k�=4�s��,��Y��F�ǟ�n�Y�����ե�3	u���ci^��}�:cF�@�)�:�(���C���}�d���{��gV��Gy��t�<y`��B\Rw���sxq�؍ֺ�i�q�^��l�_6b�<�����s��O&�ʅ��)��Y�rџ��7��qy�tۛ���O?��B`:b��Ґ�����}*r�!f���� bB�@s�y�D�bx�F7�dy[������HLMhdb
`��ۦ��-*�f,.9�7�h�[�U원m��ekA��Ժ��B3�����,*��1�o�Oet�E�L���W���ˑ����E G[§	+b3�d�r'���B��)il�L��>��:m��e��D~2�\ρ���]M�R��o�H��<ӌ��絒`t���F!H�
3M[�WW9q�w@~m[ES�z�s�y��J��f[�6e�RM/C�*�G��a̎�Z�N�JV8k�1��Thooe䠸�v2��m$ј��x�+_D��k���d@��K&���R����)��Ю�:��m�h�h��R�~U�*ne�}����	�c�٠�O(���Kk�OӃ�Etf����º&���:�a%J:��;��g���"���B��P�sUTmk]S�'��k�A���1��<�P�.�*�x�	�f8G���`��k����("r�VR��Ԃ@�Z��V��k�Pe�ѱ�kϮ$�ו㠧�MKU��Vi�;w�ݙ�Mx��Do�,uK�d� ����y+�^T�ͣ9�C�����]v�x��{�%�q�9�מb!�1ռ&&��v�èѕ�Fo�%lH��}�yHƨי%s-hć�eU0ox��6���e蔨�p�)$WH������ɉ��(5�r#X��Kc�p���ǩW�?�����C�J<��V H\���t/��B'K���e��LN�qҷ���Z��Z^���
����ݏ��2�H��	�e�@�M����p~v~�Yi�G�+S�ݜ
�{�?d)�*oJ7�C�b\���ͼ�L���.JX^h(��Rh��Z�4�nj�M.�U�����}�KV��Pϋ�|��ulSͣ��Udg2�g�=�o���4ߡ�MOAp��~ש�g6�\� }t5e_��U[]o,����Y���#b���W-��hZ��Z#�R�"����R��B�c�m��P�dM �b8Z_�5ƣ�����XwR��Z�Ǝ��<<���dWU�T��IG8U�ܖt�Ƶ��޹B�W�8(k����si������X� �DK��r�*&Z��θr2}�by�7�dp�����jR�`K�� �U������O.�늩O����x� n������~�H�c��pjM��CV�y�3�F���ag��kYp�C$�Ƿ0�=R�ORȤ_R_*������[6��_�
��2)Cj^;R$B��j'n�.Q��Z�,+��H�ϐ*֊��[14�ħ�-;��s|�C���#�}��C��Â�t=�AX�-��vU��Z���'�"��{��	�k!�/�`U�v�B<�d|�)@L�xH��b��X��wz[��ČAY�¹���Mj�$���1�`o��ת,��tpFT�)��Bo�!�-f�<|��F���Ĳ���a�rb���a��ddnFͲ�qZ�n-D��@m޲��`9.:�5�u��>���F����KD"����a\V5�ח s]ag�[��"Z���Jϱ�<�#s˼�Re����2ͣ�aA" ���-ef���QM�	zF�H�]]v#��˲�h_a�����&�xh�V�kUÔ�f���l�Z���8��D�H�R.r`�e6�k��i�[�����w~P�����4Xq5����o�@��i�k��ё����(�8'�_��BAAK�uT3��`�7�Ni]*xJ�)s'��K���L��9�1_s�(�^Ċ#����x�����$F5"���B�^IcC+��Aj�6��w���7ӥ��tSMc1ّ[A�Ͽd�A���[��ɑ88(�ka�4�nB26Fe~�z�Гda�!8A��a�y,��54������(O=�dԫ#�/Q��bhM�i�+!C���X��P a����9f~p<��� Y�aI����b��QW����l_Y��i��}��Ud��U��a�`4c���S7�L 4  sI����@0���N4�V��҅�vH�6�X����׎��q�zXA�_���i�Q��Z,v��Z�إ�	m*��u�P��Jn��h,H���䭻m�[)5v��+����:�6ʏ��s'���O�PAp/��6
�$=��>?Y�ǉ� ���zӕfp��wa����elD�Sgҵ#�z��}L�gS$�3\�t���i������A�]�����\8�U�[�(��v�;�Ì�!����Uٻ����e�����3Ӫh��#5Y�a�����g1F�dg�`�ǧ���<��R~ 2�:�P���o���E�@~XJl�����$�4�1�,�_�B�y�z̧��4�m1���/�\N{��!��F/�i�=e�3oK��7`���Ǎba�A�I��bY�O͈.{�bn�q�F���&�ndă�����QjL쾷( Ё����>MK��e0�)eg>�+�ʷ��hU$����O��3�"e��J�P���k�Gcґ�gT����`fB�5\/����~gî{���H�&���`2^�K7�-ւ.�<�i�r~�s!`�����Ё���~An��˚��y���a��f�d�j���a5�F�Y���4Z���G�s����>�V�nQ�b׋X�}�S��{u�t�N�e�ã	u�6%��&J;�+��y�(�c[&��أ?�)ꉔ��I轢��c"3�G{4�u)��Ә������o5�Q�fU(=��ş*sߟ��2�guW�;��/m�Hn��,Jg��}��H��!4�9Z���]��ۻ��c��@'	븸����i��X��СU�]F���R�6x�m�O#OPc��҈zqm�j%����5�+������#�u��C0V[��( s��5�)�F�ἅ���{���pkL�4<P��x�O�Rg����},�/_�4A@MЋ��߷��Z1}Xu����b�%40�rE+}eH&_Y�������a��=��] �FO��㘌����9N��3_u}�o�tuF��.�y����7��Ә�;jψf���ZLv;_��Sx^
��lUȒ"�Bw6����0F'"YO&���������k�I#�v�鋖�E�<W���%�h��SnXr8G��Q����hM�L�ܝ�Y/�� $[h����ۻ�Y� vC��zE�����T��xZ�w��Iw��E����8Mh��P=N�H��`�-yx{�1(�h�vp:OݬO�� X�?�)���xi��N���ڹ�aR�<��������Vn�
bS��CDt��>���2�+1-4�1��su���w?�{�!y���g�|�����~���-D      M   6   x�5�� E��W�`��	��������f4�c꠫��:S\]įN.@�P      O   E   x�34�N,-KLO�� .C4!C.ct!c.t!.St!S.3t!3.st!s.t!.Kt!K�=... 6�-h      Q   �	  x�}Xˎ#�]K_�M݀$t����x�&���d��DI�YdJ++�FvA��7���'���sɒ��A�������s�=��n&�MRQw֛4y����^�}2����~*F�NT|�F}*�h��H�k�7>��M
S�du���Uʇ��2Y��ҽ��ot.��ԭrZ�0�h�L�j�����������z�)N�l�3�:<l�3=�g��z�2�o��ȩF����;%��8K����@�x���p��*�`O�	��߂Y6p2��!�˖~��?�p��&�8�͇�\������Q�̺��l��G�|���qB�;�1%&q�+�V��z�a�6?�f	�`bor�X(W�)���ǍS�;9��ο�4��3���x ��^븚��xm���l�!�%e:�W��p��O���7�g���n��-ve	p��Q�d��Ә�mA�)CZc77��:�"��ɹ�<�q�.�7���ˍ+]H5���W3��%��L`]�����!���t0F��3^!2�xv%���Kg�T�i��_��V)\�C�X�`�{���I����x�t�-=P܆��" �5�O2���ck�[��7د�-�ά9<4��0 ��'�� 2��� �L$`���zد����H�
2k}�-�L?��P"mM�@�?<��H�pc�-L��%�$�8�o��9��4d@�O�;8�eXb�.�I�v�]���X�;u�D�%�w��P1�!a��6r6^o
�d��Z_�ue7��	odq5)J�d�#�*���+�cܒ�X�ߕ��l�h��l�|��8q�"���A� �ɷ����b��m�3�U�q��.�p��
�>��z����9�?AoUH��o��7W����3ZHD�H�>��[�8��1��������N�7��iq翃i�r�*՝T�s��Ib�9�=��\|��6���ܵ n���T1�P�PE����$/j��%�Ȼ��+�:W8]��@�^��&o;e�~��3i[|�O_LܑQ�{��Pz]e�rg��su��g��׳�"2���/��B#k}Y��~�i�īԍ۾���3B�{3�p?�}�F��D�D�i���V�!��2���bp��uΦ���fwRE��SqkM��,!���F���D�쿴���;��m��a.�H��
�L����:�F����9_9���yF�����^j��ޛ[u�l~��B}8J2�^\,&ɇ�T��8����7(?�P2�[��,~}k�RH�����@�x��Kw��z���Q &�g����7�)������T���W�mf>(�3��\�4OMZs����9���O�	�&��\��Z���Gpx�@���h��>h����P�e_���%�Z#��]�g�RIi�2�Q�^N_M�L�f��:����׬G�A)�9���S0���w{/�P���%5�/GRܾ�o �4���y�h� ���s���vq!�3�"�M?Q�����Z>к�Fh���(���Z�7R��uK#4�͔T��Vl����4�_M_ONe�>���7���,���94ۡ[�I�E}�fK���,4�P"��J7q,�hdk�����vR���c/ͅkb�T�豲����a�@�Z�AF��}"��dr�i��X�P�L��w�Fଅ�)�"���N*�%̩��v��m�C'zV)����1Az:dr���N���I���1��]�������1��3���F�3��%���8'���m��ꑤ6j�$�}���Ȣ�Wؑ����"������k�����Q���Q^Oߜ���1})w�Ȼ����2�'o�
�z���at`�_5UD�c5����y8{Y��?�쳞��K�1.��ɾ	7���-
x��gCږ�������c.���~5�h�m���J��������9byj�Ǻ��76e#2����Am���)�Īy��� [�2�`�]*��:n7Ȯ��;�:���J�|�Ι���E��Wa^��9��I�K�6�����'��1lm�eR�Ң�0�:��08^�,�Ů�i7^x�C\U2�����\/���JJD�.,x����%3����e�i�é�$��b��K]z����Oc���2�O�]�N�Ӗ��Pj�?���v/�[أ<����4�G1��k��m�U�呆qS�u���cN�-��ݺ��Pj���Gh<��}�t��!4и��#��'�ݖ#_Mo�%%�.ԛ��	5���ݶ
�Qڹ����3�q4/P&�)\ll)�b!]�᧎�s��D��ؠ�o_����cC���6��/�&�_����*���l:�Clp@��=j�ӣ����[n_�lD���p:��ѫ�)lLYHD"׃#'g�n�v������M~h��L��Ǝo�i��N�N}�W#^�1�  w��#��OE��p8�6������h�c&���Ҫ|�,���-zit��,}U[��������b:�����>      T   D   x�Uι�0 ��:&���L���p`u���O�	�&TZB�'tF�`&LV�b'lTB\�R�r���*�      V   =   x�Mǹ  ��-al�&���� A�I��ُUVq����]����M�la�7
']'�      X      x������ � �      Z   �   x�3�tu�qRr�w���M�+I�,J�2Cw�/J-.�2G��L.��/JO��,�M��t�����&e�rY���%�PE�-54D�����x˕����C�]��M`ns��]q�M\F\1z\\\ P�      \      x������ � �      ^   �   x�]�=o�0E�_�N�9� �BUU�.]���oj+��l�R��HD����}�}���H>��]�s]�z*�Œ{�������ی��N5�����?�%����w}#k��������u�VS���;7*z���=�d��}@�Q����xi�H�1*D�?�s�����Q�H����ʶn�����J6[�a����^$���V9?A�V��K���v���$I�L�v�      `      x������ � �     