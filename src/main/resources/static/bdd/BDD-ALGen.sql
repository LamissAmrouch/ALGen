PGDMP     6                    w        
   BDD-ALGen2    11.1    11.1 �    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ]           1262    33519 
   BDD-ALGen2    DATABASE     �   CREATE DATABASE "BDD-ALGen2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_Algeria.1252' LC_CTYPE = 'French_Algeria.1252';
    DROP DATABASE "BDD-ALGen2";
             postgres    false            �           1247    33521    t_situation    TYPE     ^   CREATE TYPE public.t_situation AS ENUM (
    'menace',
    'tres menace',
    'non menace'
);
    DROP TYPE public.t_situation;
       public       postgres    false            �           1247    33528    t_type_aliment    TYPE     Z   CREATE TYPE public.t_type_aliment AS ENUM (
    'vegetale',
    'animale',
    'autre'
);
 !   DROP TYPE public.t_type_aliment;
       public       postgres    false            �           1247    33536    t_type_faune    TYPE     M   CREATE TYPE public.t_type_faune AS ENUM (
    'sauvage',
    'domestique'
);
    DROP TYPE public.t_type_faune;
       public       postgres    false            �           1247    33542    t_type_forest    TYPE     p   CREATE TYPE public.t_type_forest AS ENUM (
    'medecinale',
    'aromatique',
    'medecinale & aromatique'
);
     DROP TYPE public.t_type_forest;
       public       postgres    false            �           1247    33550    t_type_institution    TYPE     P   CREATE TYPE public.t_type_institution AS ENUM (
    'publique',
    'privé'
);
 %   DROP TYPE public.t_type_institution;
       public       postgres    false            �           1247    33556 
   t_type_nom    TYPE     Y   CREATE TYPE public.t_type_nom AS ENUM (
    'arabe',
    'commun',
    'scientifique'
);
    DROP TYPE public.t_type_nom;
       public       postgres    false            �           1247    33564    t_type_user    TYPE     g   CREATE TYPE public.t_type_user AS ENUM (
    'admin',
    'simple',
    'editeur',
    'sous-admin'
);
    DROP TYPE public.t_type_user;
       public       postgres    false            �            1259    33573    expert     TABLE     �   CREATE TABLE public."expert " (
    "id " integer NOT NULL,
    nom character varying,
    prenom character varying,
    profil character varying,
    "specialité" character varying,
    lien_avatar character varying,
    id_institution integer
);
    DROP TABLE public."expert ";
       public         postgres    false            �            1259    33579    Expert _id _seq    SEQUENCE     �   CREATE SEQUENCE public."Expert _id _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Expert _id _seq";
       public       postgres    false    196            ^           0    0    Expert _id _seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Expert _id _seq" OWNED BY public."expert "."id ";
            public       postgres    false    197            �            1259    33581 
   avoir_role    TABLE     d   CREATE TABLE public.avoir_role (
    id_utilisateur bigint NOT NULL,
    id_role bigint NOT NULL
);
    DROP TABLE public.avoir_role;
       public         postgres    false            �            1259    33584    classification    TABLE     �   CREATE TABLE public.classification (
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
       public         postgres    false            �            1259    33590    demande_dossier    TABLE     �   CREATE TABLE public.demande_dossier (
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
       public         postgres    false            �            1259    33596    document    TABLE     �   CREATE TABLE public.document (
    id integer NOT NULL,
    nom character varying(50),
    chemin_doc character varying(70),
    id_demande_dossier integer
);
    DROP TABLE public.document;
       public         postgres    false            �            1259    33599    document-juridique     TABLE     Y  CREATE TABLE public."document-juridique " (
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
       public         postgres    false            �            1259    33605    document_id_seq    SEQUENCE     �   CREATE SEQUENCE public.document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.document_id_seq;
       public       postgres    false    201            _           0    0    document_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.document_id_seq OWNED BY public.document.id;
            public       postgres    false    203            �            1259    33607    document_juridique    TABLE     v  CREATE TABLE public.document_juridique (
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
       public         postgres    false            �            1259    33613    domaine    TABLE     O   CREATE TABLE public.domaine (
    id integer NOT NULL,
    designation text
);
    DROP TABLE public.domaine;
       public         postgres    false            �            1259    33619    domaine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.domaine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.domaine_id_seq;
       public       postgres    false    205            `           0    0    domaine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.domaine_id_seq OWNED BY public.domaine.id;
            public       postgres    false    206            �            1259    33621    dossierusage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dossierusage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dossierusage_id_seq;
       public       postgres    false    200            a           0    0    dossierusage_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.dossierusage_id_seq OWNED BY public.demande_dossier.id;
            public       postgres    false    207            �            1259    33623    espece_id_seq    SEQUENCE     �   CREATE SEQUENCE public.espece_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.espece_id_seq;
       public       postgres    false    199            b           0    0    espece_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.espece_id_seq OWNED BY public.classification.id;
            public       postgres    false    208            �            1259    33625    etat_dossier    TABLE     t   CREATE TABLE public.etat_dossier (
    id integer NOT NULL,
    designation text,
    id_demande_dossier integer
);
     DROP TABLE public.etat_dossier;
       public         postgres    false            �            1259    33631    etat_dossier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.etat_dossier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.etat_dossier_id_seq;
       public       postgres    false    209            c           0    0    etat_dossier_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.etat_dossier_id_seq OWNED BY public.etat_dossier.id;
            public       postgres    false    210            �            1259    33633 	   evenement    TABLE     �   CREATE TABLE public.evenement (
    id integer NOT NULL,
    "theme " character varying,
    lieu character varying,
    description text,
    date date,
    id_institution integer
);
    DROP TABLE public.evenement;
       public         postgres    false            �            1259    33639    evenement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.evenement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.evenement_id_seq;
       public       postgres    false    211            d           0    0    evenement_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.evenement_id_seq OWNED BY public.evenement.id;
            public       postgres    false    212            �            1259    33641    fiche     TABLE       CREATE TABLE public."fiche " (
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
       public         postgres    false            �            1259    33647    fiche _id_seq    SEQUENCE     �   CREATE SEQUENCE public."fiche _id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."fiche _id_seq";
       public       postgres    false    213            e           0    0    fiche _id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."fiche _id_seq" OWNED BY public."fiche ".id;
            public       postgres    false    214            �            1259    33649    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false            �            1259    33651    institution    TABLE     7  CREATE TABLE public.institution (
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
       public         postgres    false            �            1259    33660    institution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.institution_id_seq;
       public       postgres    false    216            f           0    0    institution_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.institution_id_seq OWNED BY public.institution.id;
            public       postgres    false    217            �            1259    33662    institutions_domaines    TABLE     r   CREATE TABLE public.institutions_domaines (
    id_institution bigint NOT NULL,
    id_domaine bigint NOT NULL
);
 )   DROP TABLE public.institutions_domaines;
       public         postgres    false            �            1259    33665    loi    TABLE       CREATE TABLE public.loi (
    id_loi bigint NOT NULL,
    chemin_doc character varying(255) NOT NULL,
    date_sortie timestamp without time zone NOT NULL,
    description character varying(255) NOT NULL,
    id bigint NOT NULL,
    designation character varying(255)
);
    DROP TABLE public.loi;
       public         postgres    false            �            1259    33671 
   loi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.loi_id_seq;
       public       postgres    false    202            g           0    0 
   loi_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.loi_id_seq OWNED BY public."document-juridique ".id;
            public       postgres    false    220            �            1259    33673    permis    TABLE     �   CREATE TABLE public.permis (
    id integer NOT NULL,
    numero_permis integer,
    resume text,
    date_debut date,
    date_expiration date,
    id_demande_dossier integer
);
    DROP TABLE public.permis;
       public         postgres    false            �            1259    33679    permis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.permis_id_seq;
       public       postgres    false    221            h           0    0    permis_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.permis_id_seq OWNED BY public.permis.id;
            public       postgres    false    222            �            1259    33684    possede_document_juridique    TABLE     y   CREATE TABLE public.possede_document_juridique (
    id_document_juridique bigint NOT NULL,
    id_rg bigint NOT NULL
);
 .   DROP TABLE public.possede_document_juridique;
       public         postgres    false            �            1259    33689    proctraditionnel    TABLE     k   CREATE TABLE public.proctraditionnel (
    id integer NOT NULL,
    description text,
    id_rg integer
);
 $   DROP TABLE public.proctraditionnel;
       public         postgres    false            �            1259    33695    proctraditionnel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proctraditionnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.proctraditionnel_id_seq;
       public       postgres    false    224            i           0    0    proctraditionnel_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.proctraditionnel_id_seq OWNED BY public.proctraditionnel.id;
            public       postgres    false    225            �            1259    33697 	   reference    TABLE     N  CREATE TABLE public.reference (
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
       public         postgres    false            �            1259    33703    reference_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reference_id_seq;
       public       postgres    false    226            j           0    0    reference_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reference_id_seq OWNED BY public.reference.id;
            public       postgres    false    227            �            1259    33705    rg    TABLE     �  CREATE TABLE public.rg (
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
    dimensions character varying(255)
);
    DROP TABLE public.rg;
       public         postgres    false            �            1259    33711    rg_alimagricol    TABLE     �   CREATE TABLE public.rg_alimagricol (
    id_rg_alimagricol integer NOT NULL,
    aliment character varying(255),
    nom_scient character varying(255),
    type character varying(255),
    regne character varying(255),
    rg_id integer
);
 "   DROP TABLE public.rg_alimagricol;
       public         postgres    false            �            1259    33717 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq;
       public       postgres    false    229            k           0    0 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.rg_alimagricol_id_rg_alimagricol_seq OWNED BY public.rg_alimagricol.id_rg_alimagricol;
            public       postgres    false    230            �            1259    33719    rg_faune    TABLE     �   CREATE TABLE public.rg_faune (
    id_rg_faune integer NOT NULL,
    type character varying,
    aliment character varying,
    nomscien character varying,
    situation character varying(255),
    regne character varying(255),
    rg_id integer
);
    DROP TABLE public.rg_faune;
       public         postgres    false            �            1259    33725    rg_faune_id_rg_faune_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_faune_id_rg_faune_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.rg_faune_id_rg_faune_seq;
       public       postgres    false    231            l           0    0    rg_faune_id_rg_faune_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.rg_faune_id_rg_faune_seq OWNED BY public.rg_faune.id_rg_faune;
            public       postgres    false    232            �            1259    33727 	   rg_forest    TABLE     
  CREATE TABLE public.rg_forest (
    id_rg_forest integer NOT NULL,
    parties_utilises text,
    constituants text,
    usage text,
    type_forest character varying(255),
    regne character varying(255),
    rg_id integer,
    nomscient character varying(255)
);
    DROP TABLE public.rg_forest;
       public         postgres    false            �            1259    33733    rg_forest_id_rg_forest_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_forest_id_rg_forest_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.rg_forest_id_rg_forest_seq;
       public       postgres    false    233            m           0    0    rg_forest_id_rg_forest_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.rg_forest_id_rg_forest_seq OWNED BY public.rg_forest.id_rg_forest;
            public       postgres    false    234            �            1259    33735 	   rg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.rg_id_seq;
       public       postgres    false    228            n           0    0 	   rg_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE public.rg_id_seq OWNED BY public.rg.id;
            public       postgres    false    235            �            1259    33737 	   rg_marine    TABLE     6  CREATE TABLE public.rg_marine (
    id_rg_marine integer NOT NULL,
    en_production character varying(255),
    est_protege boolean,
    niveau_profondeur character varying(255),
    nom_scient character varying(255),
    regne character varying(255),
    aliment character varying(255),
    rg_id integer
);
    DROP TABLE public.rg_marine;
       public         postgres    false            �            1259    33743    rg_marine_id_rg_marine_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_marine_id_rg_marine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.rg_marine_id_rg_marine_seq;
       public       postgres    false    236            o           0    0    rg_marine_id_rg_marine_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.rg_marine_id_rg_marine_seq OWNED BY public.rg_marine.id_rg_marine;
            public       postgres    false    237            �            1259    33745    rg_micro_org    TABLE       CREATE TABLE public.rg_micro_org (
    id_rg_micro_org integer NOT NULL,
    est_nocif boolean,
    nom_scient character varying(255),
    regne character varying(255),
    type character varying(255),
    aliment character varying(255),
    rg_id integer
);
     DROP TABLE public.rg_micro_org;
       public         postgres    false            �            1259    33751     rg_micro_org_id_rg_micro_org_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_micro_org_id_rg_micro_org_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.rg_micro_org_id_rg_micro_org_seq;
       public       postgres    false    238            p           0    0     rg_micro_org_id_rg_micro_org_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.rg_micro_org_id_rg_micro_org_seq OWNED BY public.rg_micro_org.id_rg_micro_org;
            public       postgres    false    239            �            1259    33753    rg_ressemblant    TABLE     h   CREATE TABLE public.rg_ressemblant (
    id integer NOT NULL,
    id_rg_ressemblant integer NOT NULL
);
 "   DROP TABLE public.rg_ressemblant;
       public         postgres    false            �            1259    33756    rg_ressemblant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rg_ressemblant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rg_ressemblant_id_seq;
       public       postgres    false    240            q           0    0    rg_ressemblant_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rg_ressemblant_id_seq OWNED BY public.rg_ressemblant.id;
            public       postgres    false    241            �            1259    33758    role    TABLE     _   CREATE TABLE public.role (
    id integer NOT NULL,
    description character varying(1000)
);
    DROP TABLE public.role;
       public         postgres    false            �            1259    33764    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public       postgres    false    242            r           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
            public       postgres    false    243            �            1259    33766 
   type_usage    TABLE     p   CREATE TABLE public.type_usage (
    id integer NOT NULL,
    designation text,
    id_dossier_usage integer
);
    DROP TABLE public.type_usage;
       public         postgres    false            �            1259    33772    type_usage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_usage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.type_usage_id_seq;
       public       postgres    false    244            s           0    0    type_usage_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.type_usage_id_seq OWNED BY public.type_usage.id;
            public       postgres    false    245            �            1259    33774    utilisateur    TABLE     _  CREATE TABLE public.utilisateur (
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
       public         postgres    false            �            1259    33780    utilisateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilisateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.utilisateur_id_seq;
       public       postgres    false    246            t           0    0    utilisateur_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.utilisateur_id_seq OWNED BY public.utilisateur.id;
            public       postgres    false    247            �            1259    33782    utilise_dans    TABLE     {   CREATE TABLE public.utilise_dans (
    id integer NOT NULL,
    id_domaine integer NOT NULL,
    id_rg integer NOT NULL
);
     DROP TABLE public.utilise_dans;
       public         postgres    false            �            1259    33785    utilise_dans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utilise_dans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utilise_dans_id_seq;
       public       postgres    false    248            u           0    0    utilise_dans_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utilise_dans_id_seq OWNED BY public.utilise_dans.id;
            public       postgres    false    249            J           2604    33787    classification id    DEFAULT     n   ALTER TABLE ONLY public.classification ALTER COLUMN id SET DEFAULT nextval('public.espece_id_seq'::regclass);
 @   ALTER TABLE public.classification ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    199            K           2604    33788    demande_dossier id    DEFAULT     u   ALTER TABLE ONLY public.demande_dossier ALTER COLUMN id SET DEFAULT nextval('public.dossierusage_id_seq'::regclass);
 A   ALTER TABLE public.demande_dossier ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    200            L           2604    33789    document id    DEFAULT     j   ALTER TABLE ONLY public.document ALTER COLUMN id SET DEFAULT nextval('public.document_id_seq'::regclass);
 :   ALTER TABLE public.document ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    201            M           2604    33790    document-juridique  id    DEFAULT     r   ALTER TABLE ONLY public."document-juridique " ALTER COLUMN id SET DEFAULT nextval('public.loi_id_seq'::regclass);
 G   ALTER TABLE public."document-juridique " ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    202            N           2604    33791 
   domaine id    DEFAULT     h   ALTER TABLE ONLY public.domaine ALTER COLUMN id SET DEFAULT nextval('public.domaine_id_seq'::regclass);
 9   ALTER TABLE public.domaine ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205            O           2604    33792    etat_dossier id    DEFAULT     r   ALTER TABLE ONLY public.etat_dossier ALTER COLUMN id SET DEFAULT nextval('public.etat_dossier_id_seq'::regclass);
 >   ALTER TABLE public.etat_dossier ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            P           2604    33793    evenement id    DEFAULT     l   ALTER TABLE ONLY public.evenement ALTER COLUMN id SET DEFAULT nextval('public.evenement_id_seq'::regclass);
 ;   ALTER TABLE public.evenement ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211            I           2604    33794    expert  id     DEFAULT     p   ALTER TABLE ONLY public."expert " ALTER COLUMN "id " SET DEFAULT nextval('public."Expert _id _seq"'::regclass);
 >   ALTER TABLE public."expert " ALTER COLUMN "id " DROP DEFAULT;
       public       postgres    false    197    196            Q           2604    33795 	   fiche  id    DEFAULT     j   ALTER TABLE ONLY public."fiche " ALTER COLUMN id SET DEFAULT nextval('public."fiche _id_seq"'::regclass);
 :   ALTER TABLE public."fiche " ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213            R           2604    33796    institution id    DEFAULT     p   ALTER TABLE ONLY public.institution ALTER COLUMN id SET DEFAULT nextval('public.institution_id_seq'::regclass);
 =   ALTER TABLE public.institution ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            S           2604    33797 	   permis id    DEFAULT     f   ALTER TABLE ONLY public.permis ALTER COLUMN id SET DEFAULT nextval('public.permis_id_seq'::regclass);
 8   ALTER TABLE public.permis ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221            T           2604    33799    proctraditionnel id    DEFAULT     z   ALTER TABLE ONLY public.proctraditionnel ALTER COLUMN id SET DEFAULT nextval('public.proctraditionnel_id_seq'::regclass);
 B   ALTER TABLE public.proctraditionnel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            U           2604    33800    reference id    DEFAULT     l   ALTER TABLE ONLY public.reference ALTER COLUMN id SET DEFAULT nextval('public.reference_id_seq'::regclass);
 ;   ALTER TABLE public.reference ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            V           2604    33801    rg id    DEFAULT     ^   ALTER TABLE ONLY public.rg ALTER COLUMN id SET DEFAULT nextval('public.rg_id_seq'::regclass);
 4   ALTER TABLE public.rg ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    228            W           2604    33802     rg_alimagricol id_rg_alimagricol    DEFAULT     �   ALTER TABLE ONLY public.rg_alimagricol ALTER COLUMN id_rg_alimagricol SET DEFAULT nextval('public.rg_alimagricol_id_rg_alimagricol_seq'::regclass);
 O   ALTER TABLE public.rg_alimagricol ALTER COLUMN id_rg_alimagricol DROP DEFAULT;
       public       postgres    false    230    229            X           2604    33803    rg_faune id_rg_faune    DEFAULT     |   ALTER TABLE ONLY public.rg_faune ALTER COLUMN id_rg_faune SET DEFAULT nextval('public.rg_faune_id_rg_faune_seq'::regclass);
 C   ALTER TABLE public.rg_faune ALTER COLUMN id_rg_faune DROP DEFAULT;
       public       postgres    false    232    231            Y           2604    33804    rg_forest id_rg_forest    DEFAULT     �   ALTER TABLE ONLY public.rg_forest ALTER COLUMN id_rg_forest SET DEFAULT nextval('public.rg_forest_id_rg_forest_seq'::regclass);
 E   ALTER TABLE public.rg_forest ALTER COLUMN id_rg_forest DROP DEFAULT;
       public       postgres    false    234    233            Z           2604    33805    rg_marine id_rg_marine    DEFAULT     �   ALTER TABLE ONLY public.rg_marine ALTER COLUMN id_rg_marine SET DEFAULT nextval('public.rg_marine_id_rg_marine_seq'::regclass);
 E   ALTER TABLE public.rg_marine ALTER COLUMN id_rg_marine DROP DEFAULT;
       public       postgres    false    237    236            [           2604    33806    rg_micro_org id_rg_micro_org    DEFAULT     �   ALTER TABLE ONLY public.rg_micro_org ALTER COLUMN id_rg_micro_org SET DEFAULT nextval('public.rg_micro_org_id_rg_micro_org_seq'::regclass);
 K   ALTER TABLE public.rg_micro_org ALTER COLUMN id_rg_micro_org DROP DEFAULT;
       public       postgres    false    239    238            \           2604    33807    rg_ressemblant id    DEFAULT     v   ALTER TABLE ONLY public.rg_ressemblant ALTER COLUMN id SET DEFAULT nextval('public.rg_ressemblant_id_seq'::regclass);
 @   ALTER TABLE public.rg_ressemblant ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            ]           2604    33808    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            ^           2604    33809    type_usage id    DEFAULT     n   ALTER TABLE ONLY public.type_usage ALTER COLUMN id SET DEFAULT nextval('public.type_usage_id_seq'::regclass);
 <   ALTER TABLE public.type_usage ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            _           2604    33810    utilisateur id    DEFAULT     p   ALTER TABLE ONLY public.utilisateur ALTER COLUMN id SET DEFAULT nextval('public.utilisateur_id_seq'::regclass);
 =   ALTER TABLE public.utilisateur ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            `           2604    33811    utilise_dans id    DEFAULT     r   ALTER TABLE ONLY public.utilise_dans ALTER COLUMN id SET DEFAULT nextval('public.utilise_dans_id_seq'::regclass);
 >   ALTER TABLE public.utilise_dans ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            $          0    33581 
   avoir_role 
   TABLE DATA               =   COPY public.avoir_role (id_utilisateur, id_role) FROM stdin;
    public       postgres    false    198   a�       %          0    33584    classification 
   TABLE DATA               i   COPY public.classification (id, espece, genre, famille, ordre, class, embranchement, groupe) FROM stdin;
    public       postgres    false    199   ��       &          0    33590    demande_dossier 
   TABLE DATA               �   COPY public.demande_dossier (id, numero_dossier, description, date_creation, date_dernier_modif, archive, type, but) FROM stdin;
    public       postgres    false    200   �      '          0    33596    document 
   TABLE DATA               K   COPY public.document (id, nom, chemin_doc, id_demande_dossier) FROM stdin;
    public       postgres    false    201   �      (          0    33599    document-juridique  
   TABLE DATA               �   COPY public."document-juridique " (id, designation, date_sortie, chemin_doc, code, "meta-donnee", resume, version, "abrogé", "motif-abrogation") FROM stdin;
    public       postgres    false    202         *          0    33607    document_juridique 
   TABLE DATA               �   COPY public.document_juridique (id, "abrogé", chemin_doc, code, date_sortie, designation, meta_donnee, modif_abrogation, resume, version) FROM stdin;
    public       postgres    false    204   $      +          0    33613    domaine 
   TABLE DATA               2   COPY public.domaine (id, designation) FROM stdin;
    public       postgres    false    205   A      /          0    33625    etat_dossier 
   TABLE DATA               K   COPY public.etat_dossier (id, designation, id_demande_dossier) FROM stdin;
    public       postgres    false    209   �      1          0    33633 	   evenement 
   TABLE DATA               Z   COPY public.evenement (id, "theme ", lieu, description, date, id_institution) FROM stdin;
    public       postgres    false    211         "          0    33573    expert  
   TABLE DATA               k   COPY public."expert " ("id ", nom, prenom, profil, "specialité", lien_avatar, id_institution) FROM stdin;
    public       postgres    false    196   8      3          0    33641    fiche  
   TABLE DATA               �   COPY public."fiche " (id, "statut ", "date_dernier-modification", date_publication, "numero-ref", id_reference, id_utilisateur, cpt_nb_vus) FROM stdin;
    public       postgres    false    213   U      6          0    33651    institution 
   TABLE DATA               �   COPY public.institution (id, nom, description, date_ouverture, localisation, site, image, type_institution, domaine) FROM stdin;
    public       postgres    false    216   r      8          0    33662    institutions_domaines 
   TABLE DATA               K   COPY public.institutions_domaines (id_institution, id_domaine) FROM stdin;
    public       postgres    false    218   �      9          0    33665    loi 
   TABLE DATA               \   COPY public.loi (id_loi, chemin_doc, date_sortie, description, id, designation) FROM stdin;
    public       postgres    false    219         ;          0    33673    permis 
   TABLE DATA               l   COPY public.permis (id, numero_permis, resume, date_debut, date_expiration, id_demande_dossier) FROM stdin;
    public       postgres    false    221   2      =          0    33684    possede_document_juridique 
   TABLE DATA               R   COPY public.possede_document_juridique (id_document_juridique, id_rg) FROM stdin;
    public       postgres    false    223   O      >          0    33689    proctraditionnel 
   TABLE DATA               B   COPY public.proctraditionnel (id, description, id_rg) FROM stdin;
    public       postgres    false    224   l      @          0    33697 	   reference 
   TABLE DATA               �   COPY public.reference (id, "titre-ouvrage", auteur, maison, "année-publication", resume, "lien-web", "lien-image") FROM stdin;
    public       postgres    false    226   �      B          0    33705    rg 
   TABLE DATA               �   COPY public.rg (id, lien_photo, description, biotope, reproduction, cle_identification, id_classification, id_dossier_usage, nom, zonegeo, id_demande_dossier, dimensions) FROM stdin;
    public       postgres    false    228         C          0    33711    rg_alimagricol 
   TABLE DATA               d   COPY public.rg_alimagricol (id_rg_alimagricol, aliment, nom_scient, type, regne, rg_id) FROM stdin;
    public       postgres    false    229   K      E          0    33719    rg_faune 
   TABLE DATA               a   COPY public.rg_faune (id_rg_faune, type, aliment, nomscien, situation, regne, rg_id) FROM stdin;
    public       postgres    false    231   FK      G          0    33727 	   rg_forest 
   TABLE DATA               ~   COPY public.rg_forest (id_rg_forest, parties_utilises, constituants, usage, type_forest, regne, rg_id, nomscient) FROM stdin;
    public       postgres    false    233   �L      J          0    33737 	   rg_marine 
   TABLE DATA               �   COPY public.rg_marine (id_rg_marine, en_production, est_protege, niveau_profondeur, nom_scient, regne, aliment, rg_id) FROM stdin;
    public       postgres    false    236   �V      L          0    33745    rg_micro_org 
   TABLE DATA               k   COPY public.rg_micro_org (id_rg_micro_org, est_nocif, nom_scient, regne, type, aliment, rg_id) FROM stdin;
    public       postgres    false    238   �V      N          0    33753    rg_ressemblant 
   TABLE DATA               ?   COPY public.rg_ressemblant (id, id_rg_ressemblant) FROM stdin;
    public       postgres    false    240   'W      P          0    33758    role 
   TABLE DATA               /   COPY public.role (id, description) FROM stdin;
    public       postgres    false    242   DW      R          0    33766 
   type_usage 
   TABLE DATA               G   COPY public.type_usage (id, designation, id_dossier_usage) FROM stdin;
    public       postgres    false    244   �W      T          0    33774    utilisateur 
   TABLE DATA               �   COPY public.utilisateur (id, email, password, fonction, date_creation, info_personnels, nom, prenom, sexe, id_demande_dossier) FROM stdin;
    public       postgres    false    246   �W      V          0    33782    utilise_dans 
   TABLE DATA               =   COPY public.utilise_dans (id, id_domaine, id_rg) FROM stdin;
    public       postgres    false    248   �X      v           0    0    Expert _id _seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Expert _id _seq"', 1, false);
            public       postgres    false    197            w           0    0    document_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.document_id_seq', 1, false);
            public       postgres    false    203            x           0    0    domaine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.domaine_id_seq', 1, false);
            public       postgres    false    206            y           0    0    dossierusage_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dossierusage_id_seq', 1, false);
            public       postgres    false    207            z           0    0    espece_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.espece_id_seq', 1, false);
            public       postgres    false    208            {           0    0    etat_dossier_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.etat_dossier_id_seq', 1, false);
            public       postgres    false    210            |           0    0    evenement_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.evenement_id_seq', 1, false);
            public       postgres    false    212            }           0    0    fiche _id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."fiche _id_seq"', 1, false);
            public       postgres    false    214            ~           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 30, true);
            public       postgres    false    215                       0    0    institution_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.institution_id_seq', 9, true);
            public       postgres    false    217            �           0    0 
   loi_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.loi_id_seq', 1, false);
            public       postgres    false    220            �           0    0    permis_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.permis_id_seq', 1, false);
            public       postgres    false    222            �           0    0    proctraditionnel_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.proctraditionnel_id_seq', 1, false);
            public       postgres    false    225            �           0    0    reference_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reference_id_seq', 1, false);
            public       postgres    false    227            �           0    0 $   rg_alimagricol_id_rg_alimagricol_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.rg_alimagricol_id_rg_alimagricol_seq', 1, false);
            public       postgres    false    230            �           0    0    rg_faune_id_rg_faune_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.rg_faune_id_rg_faune_seq', 1, false);
            public       postgres    false    232            �           0    0    rg_forest_id_rg_forest_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.rg_forest_id_rg_forest_seq', 1, false);
            public       postgres    false    234            �           0    0 	   rg_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.rg_id_seq', 1, false);
            public       postgres    false    235            �           0    0    rg_marine_id_rg_marine_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.rg_marine_id_rg_marine_seq', 2, true);
            public       postgres    false    237            �           0    0     rg_micro_org_id_rg_micro_org_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.rg_micro_org_id_rg_micro_org_seq', 1, false);
            public       postgres    false    239            �           0    0    rg_ressemblant_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.rg_ressemblant_id_seq', 1, false);
            public       postgres    false    241            �           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
            public       postgres    false    243            �           0    0    type_usage_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.type_usage_id_seq', 1, false);
            public       postgres    false    245            �           0    0    utilisateur_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.utilisateur_id_seq', 1, false);
            public       postgres    false    247            �           0    0    utilise_dans_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utilise_dans_id_seq', 1, false);
            public       postgres    false    249            b           2606    33813    expert  Expert _pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."expert "
    ADD CONSTRAINT "Expert _pkey" PRIMARY KEY ("id ");
 B   ALTER TABLE ONLY public."expert " DROP CONSTRAINT "Expert _pkey";
       public         postgres    false    196            d           2606    33817    avoir_role avoir_role_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT avoir_role_pkey PRIMARY KEY (id_utilisateur, id_role);
 D   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT avoir_role_pkey;
       public         postgres    false    198    198            n           2606    33819 *   document_juridique document_juridique_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.document_juridique
    ADD CONSTRAINT document_juridique_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.document_juridique DROP CONSTRAINT document_juridique_pkey;
       public         postgres    false    204            j           2606    33821    document document_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
       public         postgres    false    201            p           2606    33823    domaine domaine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.domaine
    ADD CONSTRAINT domaine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.domaine DROP CONSTRAINT domaine_pkey;
       public         postgres    false    205            h           2606    33825 !   demande_dossier dossierusage_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.demande_dossier
    ADD CONSTRAINT dossierusage_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.demande_dossier DROP CONSTRAINT dossierusage_pkey;
       public         postgres    false    200            f           2606    33827    classification espece_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.classification
    ADD CONSTRAINT espece_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.classification DROP CONSTRAINT espece_pkey;
       public         postgres    false    199            r           2606    33829    etat_dossier etat_dossier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etat_dossier
    ADD CONSTRAINT etat_dossier_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etat_dossier DROP CONSTRAINT etat_dossier_pkey;
       public         postgres    false    209            t           2606    33831    evenement evenement_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.evenement DROP CONSTRAINT evenement_pkey;
       public         postgres    false    211            v           2606    33833    fiche  fiche _pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _pkey";
       public         postgres    false    213            x           2606    33835    institution institution_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.institution DROP CONSTRAINT institution_pkey;
       public         postgres    false    216            l           2606    33837    document-juridique  loi_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."document-juridique "
    ADD CONSTRAINT loi_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."document-juridique " DROP CONSTRAINT loi_pkey;
       public         postgres    false    202            z           2606    33839    loi loi_pkey1 
   CONSTRAINT     O   ALTER TABLE ONLY public.loi
    ADD CONSTRAINT loi_pkey1 PRIMARY KEY (id_loi);
 7   ALTER TABLE ONLY public.loi DROP CONSTRAINT loi_pkey1;
       public         postgres    false    219            |           2606    33841    permis permis_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.permis
    ADD CONSTRAINT permis_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.permis DROP CONSTRAINT permis_pkey;
       public         postgres    false    221            ~           2606    33845 &   proctraditionnel proctraditionnel_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proctraditionnel
    ADD CONSTRAINT proctraditionnel_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.proctraditionnel DROP CONSTRAINT proctraditionnel_pkey;
       public         postgres    false    224            �           2606    33847    reference reference_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reference
    ADD CONSTRAINT reference_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reference DROP CONSTRAINT reference_pkey;
       public         postgres    false    226            �           2606    33849 
   rg rg_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_pkey;
       public         postgres    false    228            �           2606    33851 "   rg_ressemblant rg_ressemblant_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_pkey PRIMARY KEY (id, id_rg_ressemblant);
 L   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_pkey;
       public         postgres    false    240    240            �           2606    33853    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public         postgres    false    242            �           2606    33855    type_usage type_usage_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.type_usage
    ADD CONSTRAINT type_usage_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.type_usage DROP CONSTRAINT type_usage_pkey;
       public         postgres    false    244            �           2606    33857 !   utilisateur utilisateur_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_email_key UNIQUE (email);
 K   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_email_key;
       public         postgres    false    246            �           2606    33859    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public         postgres    false    246            �           2606    33861    utilise_dans utilise_dans_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_pkey PRIMARY KEY (id, id_rg, id_domaine);
 H   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_pkey;
       public         postgres    false    248    248    248            �           2606    33872 )   document document_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 S   ALTER TABLE ONLY public.document DROP CONSTRAINT document_id_demande_dossier_fkey;
       public       postgres    false    201    200    2920            �           2606    33877 1   etat_dossier etat_dossier_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.etat_dossier
    ADD CONSTRAINT etat_dossier_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 [   ALTER TABLE ONLY public.etat_dossier DROP CONSTRAINT etat_dossier_id_demande_dossier_fkey;
       public       postgres    false    200    2920    209            �           2606    33882 '   evenement evenement_id_institution_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evenement
    ADD CONSTRAINT evenement_id_institution_fkey FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 Q   ALTER TABLE ONLY public.evenement DROP CONSTRAINT evenement_id_institution_fkey;
       public       postgres    false    211    216    2936            �           2606    33887 #   expert  expert _id_institution_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."expert "
    ADD CONSTRAINT "expert _id_institution_fkey" FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 Q   ALTER TABLE ONLY public."expert " DROP CONSTRAINT "expert _id_institution_fkey";
       public       postgres    false    216    2936    196            �           2606    33892    fiche  fiche _id_reference_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _id_reference_fkey" FOREIGN KEY (id_reference) REFERENCES public.reference(id);
 M   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _id_reference_fkey";
       public       postgres    false    213    2944    226            �           2606    33897 !   fiche  fiche _id_utilisateur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."fiche "
    ADD CONSTRAINT "fiche _id_utilisateur_fkey" FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);
 O   ALTER TABLE ONLY public."fiche " DROP CONSTRAINT "fiche _id_utilisateur_fkey";
       public       postgres    false    246    213    2956            �           2606    33902 1   institutions_domaines fk4c5rhd1t8a31dppb98diancfo    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions_domaines
    ADD CONSTRAINT fk4c5rhd1t8a31dppb98diancfo FOREIGN KEY (id_domaine) REFERENCES public.domaine(id);
 [   ALTER TABLE ONLY public.institutions_domaines DROP CONSTRAINT fk4c5rhd1t8a31dppb98diancfo;
       public       postgres    false    2928    218    205            �           2606    33907 6   possede_document_juridique fk9a7261arnei5rjvbr8filae4o    FK CONSTRAINT     �   ALTER TABLE ONLY public.possede_document_juridique
    ADD CONSTRAINT fk9a7261arnei5rjvbr8filae4o FOREIGN KEY (id_document_juridique) REFERENCES public.document_juridique(id);
 `   ALTER TABLE ONLY public.possede_document_juridique DROP CONSTRAINT fk9a7261arnei5rjvbr8filae4o;
       public       postgres    false    204    2926    223            �           2606    33912 *   rg_alimagricol fkatxppl7q94v9ig9bjxpw7sa42    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_alimagricol
    ADD CONSTRAINT fkatxppl7q94v9ig9bjxpw7sa42 FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 T   ALTER TABLE ONLY public.rg_alimagricol DROP CONSTRAINT fkatxppl7q94v9ig9bjxpw7sa42;
       public       postgres    false    229    228    2946            �           2606    33917 %   rg_forest fkcvm532l5uo3ks7ttyy0gefsko    FK CONSTRAINT        ALTER TABLE ONLY public.rg_forest
    ADD CONSTRAINT fkcvm532l5uo3ks7ttyy0gefsko FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_forest DROP CONSTRAINT fkcvm532l5uo3ks7ttyy0gefsko;
       public       postgres    false    233    228    2946            �           2606    33922 6   possede_document_juridique fkeo675065yh8inj9bsd6nbavio    FK CONSTRAINT     �   ALTER TABLE ONLY public.possede_document_juridique
    ADD CONSTRAINT fkeo675065yh8inj9bsd6nbavio FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 `   ALTER TABLE ONLY public.possede_document_juridique DROP CONSTRAINT fkeo675065yh8inj9bsd6nbavio;
       public       postgres    false    2946    223    228            �           2606    33927 &   avoir_role fkg34ny0y2uno228qe5absx5658    FK CONSTRAINT     �   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT fkg34ny0y2uno228qe5absx5658 FOREIGN KEY (id_role) REFERENCES public.role(id);
 P   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT fkg34ny0y2uno228qe5absx5658;
       public       postgres    false    242    198    2950            �           2606    33932 %   rg_marine fkhknfkoyqwl9ackw7oxnyyu1r1    FK CONSTRAINT        ALTER TABLE ONLY public.rg_marine
    ADD CONSTRAINT fkhknfkoyqwl9ackw7oxnyyu1r1 FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_marine DROP CONSTRAINT fkhknfkoyqwl9ackw7oxnyyu1r1;
       public       postgres    false    228    236    2946            �           2606    33937 $   rg_faune fkijkgcjpol2c8dok2j2gbp8mai    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rg_faune
    ADD CONSTRAINT fkijkgcjpol2c8dok2j2gbp8mai FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 N   ALTER TABLE ONLY public.rg_faune DROP CONSTRAINT fkijkgcjpol2c8dok2j2gbp8mai;
       public       postgres    false    228    231    2946            �           2606    33942 (   rg_micro_org fkjsb2p36o3hjs0ypbganimesfe    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_micro_org
    ADD CONSTRAINT fkjsb2p36o3hjs0ypbganimesfe FOREIGN KEY (rg_id) REFERENCES public.rg(id);
 R   ALTER TABLE ONLY public.rg_micro_org DROP CONSTRAINT fkjsb2p36o3hjs0ypbganimesfe;
       public       postgres    false    238    228    2946            �           2606    33947 &   avoir_role fkn8m0aqw8f2oifm5qkiaoej6ex    FK CONSTRAINT     �   ALTER TABLE ONLY public.avoir_role
    ADD CONSTRAINT fkn8m0aqw8f2oifm5qkiaoej6ex FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);
 P   ALTER TABLE ONLY public.avoir_role DROP CONSTRAINT fkn8m0aqw8f2oifm5qkiaoej6ex;
       public       postgres    false    2956    246    198            �           2606    33952 1   institutions_domaines fkolilqhoafxflwiedt6vtu9yhi    FK CONSTRAINT     �   ALTER TABLE ONLY public.institutions_domaines
    ADD CONSTRAINT fkolilqhoafxflwiedt6vtu9yhi FOREIGN KEY (id_institution) REFERENCES public.institution(id);
 [   ALTER TABLE ONLY public.institutions_domaines DROP CONSTRAINT fkolilqhoafxflwiedt6vtu9yhi;
       public       postgres    false    216    2936    218            �           2606    33957 %   permis permis_id_demande_dossier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.permis
    ADD CONSTRAINT permis_id_demande_dossier_fkey FOREIGN KEY (id_demande_dossier) REFERENCES public.demande_dossier(id);
 O   ALTER TABLE ONLY public.permis DROP CONSTRAINT permis_id_demande_dossier_fkey;
       public       postgres    false    221    200    2920            �           2606    33972 ,   proctraditionnel proctraditionnel_id_rg_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proctraditionnel
    ADD CONSTRAINT proctraditionnel_id_rg_fkey FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 V   ALTER TABLE ONLY public.proctraditionnel DROP CONSTRAINT proctraditionnel_id_rg_fkey;
       public       postgres    false    224    2946    228            �           2606    33977    rg rg_id_classification_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_id_classification_fkey FOREIGN KEY (id_classification) REFERENCES public.classification(id);
 F   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_id_classification_fkey;
       public       postgres    false    228    2918    199            �           2606    33982    rg rg_id_dossier_usage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg
    ADD CONSTRAINT rg_id_dossier_usage_fkey FOREIGN KEY (id_dossier_usage) REFERENCES public.demande_dossier(id);
 E   ALTER TABLE ONLY public.rg DROP CONSTRAINT rg_id_dossier_usage_fkey;
       public       postgres    false    228    2920    200            �           2606    33987 %   rg_ressemblant rg_ressemblant_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_id_fkey FOREIGN KEY (id) REFERENCES public.rg(id);
 O   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_id_fkey;
       public       postgres    false    2946    228    240            �           2606    33992 4   rg_ressemblant rg_ressemblant_id_rg_ressemblant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rg_ressemblant
    ADD CONSTRAINT rg_ressemblant_id_rg_ressemblant_fkey FOREIGN KEY (id_rg_ressemblant) REFERENCES public.rg(id);
 ^   ALTER TABLE ONLY public.rg_ressemblant DROP CONSTRAINT rg_ressemblant_id_rg_ressemblant_fkey;
       public       postgres    false    228    2946    240            �           2606    33997 +   type_usage type_usage_id_dossier_usage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_usage
    ADD CONSTRAINT type_usage_id_dossier_usage_fkey FOREIGN KEY (id_dossier_usage) REFERENCES public.demande_dossier(id);
 U   ALTER TABLE ONLY public.type_usage DROP CONSTRAINT type_usage_id_dossier_usage_fkey;
       public       postgres    false    2920    200    244            �           2606    34002 )   utilise_dans utilise_dans_id_domaine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_id_domaine_fkey FOREIGN KEY (id_domaine) REFERENCES public.domaine(id);
 S   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_id_domaine_fkey;
       public       postgres    false    248    205    2928            �           2606    34007 $   utilise_dans utilise_dans_id_rg_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.utilise_dans
    ADD CONSTRAINT utilise_dans_id_rg_fkey FOREIGN KEY (id_rg) REFERENCES public.rg(id);
 N   ALTER TABLE ONLY public.utilise_dans DROP CONSTRAINT utilise_dans_id_rg_fkey;
       public       postgres    false    2946    248    228            $      x�32�4�22�4�\1z\\\ ��      %   3  x���Kr�8���)x�)���RQl�U��Te���0 �2s��z5����o �h�I��ݍ�ֈ-475��.dݔ��������z��ؾH�>�Z�ʫ��'�������U�֒}�x2f3�r�g����7�ͱ��Fqv�W	F=} }�^4�+H��tKi�[���{%����)����J����Iy���R�!�R�6s�aܭ�$[r��u<�m��8gl)
+�(@����Vvm[�Ț�U��k��u�en���C	���Z6�������1�8Pi*�3
�S�k��FPu���*��}��X���XK��9Is�{���V����֚� �ME��S��%�<D]�;޸�gƮ�V>C�w�P�S,�p�����蕪Ô�(̈A�Zs��ykKid���/&��\���F�>�1ҧB[�2�r4��+pM������Ȓ+O�|5C��T.�<6���I�N� 	��"lsՔ�I<�Ƌ�eθ1r�X�>rWq���������5^N2g#iQ�H�����c����f��r6z�\V�n����ep;�B�?,|u*r��G+j�q$[H�תkb	5��1.ؓ�d�]���Ru ��R-�)Hп��.ٝz&GB��Bum�����Zʐ	�n.���q���DAL�uaDC.i)t�ZW߱&wJu�ơ�i|�ȱ�4.����ߎ!���n�޾gו2d�,K���,`��5���cZ��5kL�z�v�W��9a���^ࣃu|�0jީݫ}$_��w0�8�B�B��R���~MZ@s"�?f�s��ZYOɎ"���{ц�M12�b\��2��P-�ɑ+�ƗCZ՘�<�N�*���x������F�-�OV<F��)~ٲ��@#)��Q��#l?%���Q�X��ZB��@��)4����?R	?��G��U�'�F]f�]�i�D���Q�_��߇c�N	?`'�_�M�ndSR�y󣳵����?��V�����Ƀ�����7ʕp��'焚�gBr׉w�x8F�ߢ��ɒ�鶑�ۗ0��S%���qWGH���'|g�8�U�������`����nC�<���W��3�T�B� �8P~ֻ�o$�����>t�o��Q<G<9�4��^ܝ��="o0�,�@"�:^1�ϑ�8��.�o�d:ޟ���J�7�����Lv�rj�l�;��g����س����L��6^ NU1e�́�z�s�	���'�!k��X�/(�V��>���� O
9"�3�J�Du��r��Slzf�NQ����-Q�?���ݢ��k���_�r��Ap�*��urr�KE	A      &      x������ � �      '      x������ � �      (      x������ � �      *      x������ � �      +   �   x�}��1Dϸ
W�į�\��7����$�#m�[�vB%8��r�ǚy#�6g.%7u\�/sZ�*�fb�ʥ��\Q9P��	jw���w͑~	3�e�I�`���Ɏޏ'���!r��ͫ�jS��*"�J��U��Gj��P���^1��3��O�*�i��)I�\� �jz�      /      x������ � �      1      x������ � �      "      x������ � �      3      x������ � �      6   r	  x��X�r��]�_ѻ�U C�zΎ�h���e��iM�5@7��+o�*�Ye7�)3�d��Y����%9� ARr*��,,K@?���s��qp!TaK3"^�L(6����J�z.Ep%���y��-X*XnD&�a�߬x!��)�����)��+fuiY�YQ"�Iɮ���X���_?�e���s%2��&e�^)J�D�Vpv�X8�%ə��!K�rfY��<�ș|�k׿��l��Vaa��f���8�^�TZg<Y���g~݊�m��)Y�^-E���[�q��$\�[:Eg[w�vdl�^��*�˕��奴�Kv��uC��g�F��A`�fJ����7����R9�X�tA>����W�����H0��ہ����B(.�ZK�W�V:#�-��Y��<�f[������`YoJ��w&'�N��Oa� nA���,�u��q0H%�*y��c].��J���-�������8��޽��fZt���qh�u�y��SrW��g'�0��܀AIg�r�*�o��
 ^��v���֎���,��A:G=�'o_8Ж�a���z��A�[-�ձ1��Qa����Y�is������u%c�YJ�7d�	`�2^VNt Uˀ[��-�z��� ��T0����Ҕ�X���Jf�|�^�,�s��*�`=\]}�~����>n�������eJ�BL>��I�B:ӕ�����1^�b]J���H�;Ϧe
����I�}�8#��S�ȍ�Km<� ���Y�����	�!�W�Dl4V��-j�[Y��]�eltU��, ��bQ?�;K�ϑFޙ��@t�yxr�I�P�f�[����_��GQ��z�-�Y�6�Nɭa�P�<d?�"aPA�\�T�
�-�^O"�a'W��z�P����G�sSSUpA�h��TG�ށ�ž�&;-�M�χ7���o����˭G�w�
;�t
���u�P�+Wu���Tj�!�z������9��Kg@pį� A��F��4�o��{�������ҁ��uu)]��sJ��PD,����r�}~�eu�k�*v����x���� ��ɎK�T�s��Y4�{�{VQ��DJ���� ���E�aī����q�+Y�`��:һrW`�L�̇��A�~נZ�H%䋪�x���H�T���J�V�w��ԫԣ�����L5,n�fJ�(ֺ�!��"�ԂS0B% �,/��Z�p	�|`�����Ԗ9���]U�&-Tw�p��se�&��S\DO�۶n�� y?��'Q�0��ٳM�L;���%�����;����ݺ�-`��qf�S"����j<���" ft��J�02F��	�4H.2�z��{kx��/����h<]��^^�7��ui*�YH/�:���N��j��I�C]�2�j�d-/�z�9��nt׆���)�"���]l�u����<"�z}���K�X����Q���7i��R�Z4Z*�=7�����u�:�D{JQ�,_|����U�V��խ�&q:I�զ�]�D�mye$�����Ԯ�֟+�N�d�ln)���
�3˩��p�/�.��
_?���P�n/���e���9�d �-^�׃�����߅��خbK+bK�]��অ��z�{��y9�Ĉ���ꦽV��ђ
�lp1����7P~��L�{�Lu��{�/VэdeM��lۇ[L�po�3�F�n��)��%7	��i�d �+CO�@)t��C��a���YĶ+��_E>*{ڣ�3+��y[vT��#Ek!��a��I����BH#UFF﫞�ADI���W^�o��Mq;ͪ������(�(/{g�#�� �#�����TJ�X<oHE⟮��y^�׉�
:v�=8KAq ��k�A걖�/��k����_�+��G{�Ó�a�!�Za��}�߼��4�?�w�1��Q�U=������������#��T>I���Ё'3.�\�/P?-�c}���^[�
�R�N��0�o2WT~�X��ʗ������»������L�/iZ*\�h˗������ӎ#yC�� d�
u�f��۹���G_S8������'����T���?� �w!���b9�\k�s'4?}�u���7�%��4�\>�t���O���(1�}�e�&4n@���C�cs�?h���AN������_��'?.t��!�D$�Mv�s�	��#�?J�Zb�$d����;���-x�A�O��=h�uAK}�����U֌؆�<���\�mMX�C���z0�w�����qTK܏v7�x��'�7뵖������*H�nh$��w.!S/�[�S		��Y|	����/N���V����lh�4�%���)G���_Z	���|N):D��\��R���ٳ�|z�      8      x�3�4����� �#      9      x������ � �      ;      x������ � �      =      x������ � �      >   ~  x��W��7�G_�r��{Sv p#A�m�jD�Cj�X�vA�"]��r�*M���|Iι��Zy���zf����sΥ�t�چrlT�QN��{�2)��5^������dT�&��u�ts�����]�WK�*�:���O�ЇiM�Q������
'�������ēcqb�ü���ܡ�d��c�9)�!^졝�8`������$~׃���5�BY'�G�]�'ҏ�Ѩ��&�lT_�s�g|��$'��WӼsڏ�`�Cp����7X�x
�^�v�}LZ�n�&�Ι{���2r�E���sNb�X��Q��d�� ʹ�6�b����
+���P�h�k���q&��ir0{?0�I�>�y7jgX�CFK�c}2}���:�g�x��CBp��}p���'`V=a��b�T A8��Q�P�^�`=�H�-؂D���c��޵�1�\g_��Q\���\�rwIY�}��f2��&N��(�_���}۲�I�lOh~��l�u�py/��@�}�D2"x��q��1�:i����JIxa��`p����=Y<�Ȩⶢ�u,8&jZ1Z�q4�F�O�|YG=��olJ@�Q��p�V�#-�o@��R��F��ϟ�Z���t�7<�p�@����ԡ���0�VP13�J� ���O��e�4�i���@f�A�� T-��P�R����T9��U��&�"����P�t����.�uoQ�l���_��n��D��P�=4,2-L�m�
�1��Y��2��
}��e�0�{�x�����ʒ�xL�ê��b��Th�2�%or��ZP �nl�\�m�U$���f.��g��׶�$���ZSu�e�|����U���C47��x��haE�:��	+��y��Y�;�q�,#�G�]9�6|�-�%�KO��\�����ҎFd���nyx^��`;�'��Qh���ua�IFc��Q]��`>X�y���c�nl/UO���ѯ�q�a&�-N6rq����>�mN��VC.%6"�_):d���
�����V��v�*���F�Q�e�b�{O�f��P0�>�BTNa`"�7�$4��u�f�G�@f[��D�!�}�7��}"@i$���D��RǺa��wV��Ϲ^6J��ꪰ����%Wm�@��5����WJ״� 6~�S-^Ŭq����MgwEt�K��9⺱�^.��P|m��L2W���	:g-j�f���P�)w̸�kR#J�[E�Iz�(�#��������
�!�Ӟ��^-^w�m�;��F�� �*@#�ӑ�%ZS
��aGX��I���:�[/M�H�&���@���Ib6PlRgR�	p%��)�[�������$�O��ۄU��R���䢇�\�q�[0.ί�Nv��;FQe�S��;���
��n�4���p�uU�G|e�����u�j��X��i�La\(�`zvK��|�c?��[#�ǩ��:��W�Ջ��~-��_��2~ �>8�3���jk-!R��w.i{�7:m�[#��P�M�LWRu����L*8Cˊ��{U,@e����^��i�h �Sr�ٹ��t�ǽ�;���X<��o:�gȭ��+�N���8iI"(�qe��1��T��Zd&�G�z�7Uo]�.�57�L}����L�jXv����b�8h+      @      x������ � �      B      x��}Ko$�u�:�+@
A���G{�b�Z5���U���2�2ݑ���!{��hk�f5�V]20�b�hVMh;?¿d���so�H��%k0� ��jff<��<�����6�y���oV�����ϊ�U�>뛡�\{��l��g�����ǣ����懾�]VV�˲��.�PV�[����ʕ�e]��ܯ�t��Av���P���n7;�{���kjyA����]���O+�ve׻��/E�\5��'�s��r��Z>dn�� ���%�5��ES�_.W����m�
/��e��.����g�\>f��O�ؾ�Kq�ڷ}&k��7��I˻�����N.ƃ����R�Z9�I���T�|�{yȮ����z}������r�����E3t]X���0�R岋������U�u��c=������ݜ�l
Wy,���b�	�j��0�1�r}�u����.�R�Թa��k����\�$>�ٻ�O���]�}�����E[~7��C��i�9v��b�k�V�������,ϯ����Us�g���L�-@������9��B2Lyy��c)�1� tpQ2�N��s�v���Af]��|������wC�=�r���w�J�l�pv��E���+l�Pr�ۅ���|�}������Q����l��UBQ����{~-���~ۖuQ��pe$+���_WCQ�e_��xY���h��y	VsU���wo�Fv���ȫr�?֯JY�O�Y	�/���O��'܆W<mp���(�e~r�6K|�����P������c���wKy6n���cv�����^��~��A���,��m�뮿�a�g�C�\�7���B<���W�s)��Ŝ�`�u�g"}j���K�R��F�lK�8�kwo�0��~͎׍��K����c��t��~�v�ne�]��͚���/٫ͭ�6�*������J?��?�������{<{S��q޷7?tY�~��37d}�ԅ<t�/����1(E�v"���1�V��y�!��v��Oa�������)�e��ڒa^������'�3DdImЕ"�*r%�mt�A0�R��(�1��y�̡���_��r&�/\QV�o���UqM�� B�Ft`��h�RHps�Z�j��P`��%W�L���z�e��fPu�J���L���&:۽ �gg�[]^WM���a�7E!������]��֋H]����.��_�����ʾ���v��r�����CVb��nh� �o|�eo�~^��۪���s�}��,�@Թlb�yMW\V���m�g·a� �@vY6sj���j�=�۵��H�ٱ�!�*VWv]	�"���E5r��x��x��z�������</��n���Ut�rk�5���м\���P��[:n�H)�3���V��Dlی^�&��Z�0Z�pe����q�,/��c;;أ$O'7{+ R�v->�ׁ\,��'ԥ�3~)#�B�����2aq`1��\�E��4��	������
�d���ykP�n�� ,���CP�@̴Q|���d���<�b�$�p�ln�,n~�)G� �d�ΰf�YeM�7w9���?��pIY\���]����E~�z����֓��;e��u�Ƣ��^�ΊJe#T��%?c�e����Q�_��yF?`;�AP��� �eӮ.��Y(��@/آ�$䜠L�I�p+b4?�D��j��!Z��=��&��4/"O�&�H���/ECU/��n��N�T��l���A�vg�J��}�`̞��!����+�/t�S�����j&6�̑�ֲ���V^�|Wbb%���h^^������%^B?�q�u�/EF��b����%~
?���&<QcHy�^��+�����MœmA�;��`�妿�1���ظr����徂�
y�3���`�惊�v��0���־�oB��{3l�l뛡�n D�m���B\������%ډ}
������C�8N�����Z�DTj T���0��#J��9����b.j��'�*;4�����˃���ߊ2�i��Ԙ�]�Eq��u"���9�~�����ڈ1�^����ܥH�q���5Ϟ�sj/���t
�`�hT':t
��Uj������nPq���zp���Gy���@�����#q��ė��*+�j�nu��Oܩ���>�@�#"��W$�UC~�������l�K���K�>Xө|mv����mh��	�)�9Ր,�%�c�|g}��A]��F�( ���T��p��QEo��h��� kv�Z���/@����LC7�IVC�sQ�(8���5"_h�%���ף�#v��\�T-d#��lz�,��\!R!���AD��S���Rv��.9�B;T�͊~�V�U���ǅ��2x"W�tDDz_���S�����e�	$�D������|`��
|N�)����Fa+�Qϧ��{!R�dհT��l4A��f��v�W� `�� �)��s���RfF��y��������;Y���
�v��s.��o+8��/WP���}XMw�ߡ	��0X@��ńTpB_�n0v���AR"�!<})/�I���d7�Hb�Y��D�>�n,��
[�y�(췡
̉�
a��0V�z.�W���Qk�Ϗ���mSΩ��Gٷ��P�{���@}�N8|4{�6K7i���lX���`�7��G�k|9<ò�{2����!��}���n�������׳���{a�p�Q��O�z�����۸vo�����&w���o�=�	� ��=��F�12z�Y}W=Ѡ3hp��������Pp8��-v���w�������z�tot�3�����3��e-B��B�؂��7�~Y�K���P@�*��\���ߎH���]P�� ���V�=�]����^vo���/(G�_Ø�LXL����s�ˬ9o��u�oa��"\W�dT�Mq]PC��&JLP�|�T�@�
�{?a0u��|��f��0�ݔ�e'��n~M)"��t�����@�K%�l�9I��<�c�p�>��8�n�ߧq��ZF���s]\nA-�ND��L� TY���w�Q��Pt�"�Z`�	@y<��X�t����r�8�H;$U��<���SN3�T	 �-I7s^�K�J�CB���(fw�u�(T���8�b��f��t��Se;�N%̱��T\��6��K5�k�.�U�pD-{";Ɔ"�ƍ9��o�U�ȋ<��;��lN׫!�I$�_�q����Z���w����8{N�o� ���+� A ��_
�a�*K��_���Š���X��Չ�����ʮv'zk(��e�y5�� ?�3g�!�>�]]^�����3+6����E~4�]��ĿGO�.�J���a���PO��F��a�ñy� M���FIdRv*�����F�}7�X�w�Q�
~|:�r!�$=���q���1�� ���o��>��=|J�t����}W�1�Y������T�E�w��*��'sj]!��׮�`g]�k� xz���A�qD�Δ��"��T
"��M�c�,��t�@tg�>�3�ȴɮ�
!|��!2kB�bFn,��4.����Pk��i��0��L�-B�tr�k�.¯�Rz�5=WN�/��,��M�s�ϒ�!�������=�1�j����B G���!ڿ�ohyB���`��$�0mg��yH	� �a��t2]�&��T�lx'L���4��aSS������Q��O��r]R���0zmamH2�=��'B�D?�7'l�S/��4�iUߒ2P��\$%«�V�\�c;+�#���[��A��S��`}�t�V���T�n��y���T�ђ��g�д�0�ҩ�rkQW#A�9Ӎē5�z�<�|8;=Y@2�i�* �ᇘ �!��mq�ef�u%�R��uM��[	�`�_
M��)�����Eͱ��j�Sh�s;kF�>T�`���`�����3 9w��0����+ѓd��wd������^�����l������1��&,|�� ��3ŅPs�&�����R��'��-	a�4�*�    � .�Z�KP8AP�^��JfTZ<JG9���ԇgn%��JK'#�1��L�p�oN�Zt��������  88�t��&M� �F]��a�H�0����#�W��E~�~T9���8�����i�Z�������梳���bBa�-)	90տ�!���5ט�$�ȴ���3��
��+�V�E���g�Ң��}���2VYZ`�7��J�eB2� a46�}K�L���I%��MA1�'�[	����G���7�P �����(�D9eÜ���Mh�4�̻2�,^�ڌIŵ���_�0�hW�y�ڌ�骨oo�4�(��'+[w��yɈ߂��ERfɶ��v���ۖ:ִM0(� H�:U	��5�H�����7�2q�WMRU��5Ad@��.�.��	��G6� ��6 �H:��v�
~�d���=	_��I7�c�I-��4�W0"L�ܩr�A��d����8����כm�7�*sdU�v˭�]r�=�;�pN����/�!��5$3���GY�gq���DP<�[�I~^@If�"�����İ�FgKzRkH)2�BG�m��vg6���Yf	��Q�⒒;O���*��IWU{�U`H�~LR~~��y����1{4$���ڣ`��U����^��c���@stze��x��v�;$�r̝�A��2кҡ�����!����1�ƻ���|�^�����;�2!fJJ<�.~�O��EՈ��k�+��K��F�&�牂�WP��R}�Cx���(�� �����D��Ǐ#�X`t��7%>{뮻�$Q��!{%���y/��o�d�҉����U���dj3D��Ҝe�G��NH��G�}��H�l>&Z�dR�]4�y���<�q�VB�JM��t���b�}~���Lk �T�5�R��6ټ\�xy�fzP�<TT�h�_�LAZ#��2��C
5 NE�3�_h" 4ѡ��2'�t|K���h���'pI���#��B=#urJ�N���!��5]�+�]�v1��bxjr��P.d�0�C�x�@��mI�������<�����U���7�BN39����u>oe7ʠٖV�m��ҍb.���1̀�wp�����ّy�M|���l3�:�H��k��Y�xQ!s���k��&�����lg��&L�oJ��Ԯb�L#v؏�y]u?�`�!(<����f��w=}�9�i�m('�M`�e;x�:F.ݹ풬!����&�$Iw�U8I�҅�6zBuG5f�go��6��!�U�C��$�|4���:n��օ��&�9rS/�+~��W2�P
!i<8����:��:���`T�/Y7׺�>q�疳W�r����C�e V���$h�@	�$�E��m�"���7C	�loov\��5ly�7�́d��׿�ؿi��T\:p%x�=!/Կ�a{�"	2�cͧ�D�^���`(H}�F���\���\:U��ZD�5a+��h[dE��J�C$ 5� �i׍b���r�/���+	�
��C8K��n��� �9D������u���$�f[,��Q,!�+�5�I�,%UW޿-ʁ`$B�ES+u�><�v1�M�p^��N��B��z��$~5(C�u����i�P��Sַ�jS�X�;��ͧ5�*��v�`E.c����;��p��ks�g[Pn�fA����ZxA�Ɣ�g�h��ZF���3tQ��L��6](�Rb��aï4�3�����B�����b� h�i��B��V���z�ܕ}��R�Y�""DR�}ߴ�'�b�-��%ÁH ~5A�����Г,�-I�2�,�H��5��`�R{k3��!�S���P�`>��:0qe���qE�J�o��(%�E?���4�;f��,�k��	M�usY�<~�g�<�m�j:��Y�\0�'�Z�yDZ�^��ζZׅ���.A��:�8���L��hD��	���"m�BH�4MT���u,��h.3)��$������I"�(��`I�A�n���IG2�_L6~�/g2�^�l��(����g����y}������/o~s:{�(>6��}<��h���406�i�b`��|�X�~&�"�ϸ?q�	�^�$��B�R2ti	瓣�b�Z�GZl�B�m���:JJ�`yݙ=[��2ޟC`�P[XT��䙏�L��-"�H����YR/�T1����З���@hsW�曉iQ�BO��7��'��`��ѷT��r�*4<��)f��+�|�C\k(
�x�hZ.��\�#w��Y"�B4k��@��|��	_��Ts}���J��kk�\��f���4���C���@�_�n_������m�P��������1�J*�<iu�>����
���$� +o��#2��+W�����.��Z�L��ƌ�ʴ��T�����E�B�޵b�[��Q���`��W�v���W-j������`+5e�h^~�ɷI�ATXp����!KH�J�>�.C��C�R�ld��%�� ��z�G_1u� 2�����O�LB�g0sB����Mh�؅���;UD��%S���ҶYD�nJ���dн&�)�����~�����Nӂ��H�7��1Sp%��(�'oRB�X��u|x(�+��Le�l킬0�g�$�0!��#�g�j�P*>wշ�>���D��z]-���0bc�4�P%�:�5�8f�M���E�QDC��_�Y0=���X�k�`I���2���\�8.}�����1�����N�
x����/Nߟ}^���N�c_��� �};�T�U�"����4+�@"���KCby��^o8<�C�*�?Ll%�ڛ6�:)�j�0˷�[r��P�'�+���Z�X�*���h�!�F.�8�4Xy`:��[
r��Uoʆ�D+�FF=Ub��[E���TC/�$�n~��`� R�1|���(�S��V״�
Z�	�
�P>B>�f�'�Q{�yv�ɪ��	�Trj���M��'������b�N��B�
UL�guøN�W/ʶ�?�!	�_oY2�y�-�6�4)�ਸ਼Y(2�
�҅�T�~�>�w�x���FC搎�87�����
:<�1��J�惡���K0yH7�FXj\�ə�oZ4��zgZ�7&����>��Y���%0E�BM)Kd
W�0s%�<a�o6�<4�h�������Z| P�('��s�
F��au���G�|�'�T�|��'|����70���7�^|x��:~u�����7��	�z8;�f�p��[*6&���:aVI�-
�ÍlU������3���{���p��km
M5���RZ��ס�˚�o�S���Nr��W����P@���;��
~ĉ�3�t�G��R�01���%2���Xɒ����1�XTSy����4-1QZ!)U5P��/����HPQ��Sf2������,7g��?�ބ�[V� )}ٸ{;������x@@��hT�mə[�R�1��?����(A$�����ٻ;:��t�,�:�e�r�K�K�i[i,Ȓ�'���J��ݭ�]�"%P&�D[��� ��l@Hm�*d����0�O�W�h�!�f��x�V�0�|՘���L��V�T5B�s$�t)~�'tJ��;*-B�Ř���"Φ���ZcR�T8<����F���o	����-n��ٮ�X�������Q�%/��壩ձ=SҌb`a� C��|�wg�ߜ��xG,������g��w^� �8{UV�'�p/W_�����:1�t�az�,>DX�YV�Z�[*��q-V#����^y!	��ǃ���½jF�5�
���.kݼ�EƋݚ^��C/k��)]����yh���eU�&�;Nlj�X	��Dڔ#�AV�
�B5I�6�J�j8i��� ?C�*.���6o�;ߢ�ޢ>aW0�gk�
����gA��k�ms���{�����e\��K[���S�g=�&����W�nma�%z��89��%������m��2�c:�R�:�� ���S��\>Շ���Å�����l,8��\�$���I��.<?d�Ûs; @�r    �.]3`F�5ߴX���&H�Bk�c�v[���{�50�?�9�R_u�M��$�Ȯ�,"aO�B��b]M�ۨw&�M�C��Ɋ2q][�h�*<U~���wM t@i�>$3�������_[1�qC�f�O�[$���4��?��0S
FA�H��YR���+�Һ"��Ԁ :Qg�g�lO���o�}8;�����g���/���l8{��t���f�Дh��vŵ �@�[�u�J�m���kJ����#._��9��K
�b�м�W埡(��q�-��6����#/����A@簼Y#-pc !k�Vܹu[�Lm��C��r�q�^6B�%0�����M �V��}o�lR�����>�i�3��7� ����% <�" _���<Ӹ�I����zb�>�騔��X9y��x�%��ӥ2�\yH�bf\�2.�c4^sKP�J�w�K�;�	��\A�N��n�*H6�ER�?֑%�JjSM��H ����tS&uI�;3�������xe�ѝ�,T�~4�R�}�t1�d�����7�yy�����4L����W"�\L\����ۉ�B��\!�<q�)$Bv�1ˌ?5��v�i7?̵���d抋A리,�s��a��GI���"�by
��Sg�oJVJm:��\#�r�6N�oxZc��=c��#�!�ݘ7����D(�sQ5}oθU���B\�~��HM�Ϡl w������K�!6͐h��!��aF-3�R$J���-}%���v�B�	��X/Ïm�t����L�)�	��tȯ$�`,u����vg^Z����]��5�9y0鱣'@���3oe�K�n1��m-س��� Z�ܓ��gI�5�r��ZLg�3��搁���:ȃ<����]��3�T�;?�JZ5{�M\�����9�n���j�S;y��^Whb][�)ti�@��	�U���D��*�3<!����p*H\����aZx�z˵$�e �?�����n'}�S��1�d��3C�~;�Q%M���HR1���T�%�n��i"gO_��O�>����*EƗ�F�H�X����]�J&+�,�Z�.�7`����tFʹcw��$:-O�|��b��N�{hv�W0qDl҈d���jе�3����	���~ �)���N{E/:���e#׹޼�H�&xE�)��,� ���o7I�3ʶ��(,�X_�nೠ؈WFI]]���_�cY��R�;����8�op;�]��u��p����.�|����|Xhk�JWl7�sͳ��m#�f���S��6��9�#�9zpw��������݈1'�rq��ƒ�ʐ�����dUC8(���,SC�),�#q`w�דY�"3�P�N�ǫ |������9rC�d�YL�pf�������)�ȶ�R̚�^����?��԰J���4j��a3T�d���"{;b%�mO��U��ږ�&�6Q�=��<{N~�`�\�a$qc	tIo�Vޏ��ghkrX[�lI���1s�͇wg/^g�߼xw��$h�k(l5Ro�<	֩�8V��6�*��N7Z�}āp�2d��|k���D��qL<E�]��9I9��C�뢕�[�Ѥ>��o$�=�ŕ����DeM4�G�:mL4ؽն�˼�5g?���^�����Kw~]����'�%�3�T����w4P��^ǆ�?���r�۪�bv�D�±��f��2ĤTs�6�}'��&�P�!vF`��&��{��Swk��c�ޘ˯��+mLb��HBݻ��i��{tG�6��>�y�NS���Ba8Y�L�5n9�^%tc�[؆�!��eˢi2�jr�:l�[ۜ?N�b��f���ɺ�}V��;���l��iǽ�ͮLr��VMrxi���Gޫ��g�������[ӊ����0�@寁rr����Xd�P$䘆���H�ו��fa)�>�O|�v1;V|����F���hIO�A@�.0އ�ݗ����dz�ӂ��z��3e#y���S�1�Zٱ�ɰ ˚B}w<rL�a�j%
ft��v����%�w�ԏ��pC2o	�GG��-Oګ�YD�@7�Vx�-��h{������Lwq(eP�+�kTk����i Ms�}�r��{��~m	eQ
P?�<ۊ�n�΃
�ߖ����RFx\[��\t>�wP��t"0ب-|c]���v�2$.���,���|�1׆l^�h�,��O\�.��p�$
�mgh�Q�� �������ZPQcp	ZO�~��@8��ت��B�8�i`�;U��6��c��1E�ں����Ѩ�{]Q4c
@�Vީ�9���7'v���Y��J�ob�Z�_sov�<FGY3-3ԩ@���F.H�To�i���f�N����?ZB_	l^5�e4��!�u�W׈�^(�8�!t��,;��2_�*`�`��
�<�Z�d���F{)j	������Z0_$��&�����x*`���~����?y�k��.��n#,��ppP9�!4Jχ�r�Ǌگ��~��;���:��<~}r�|0{F�̿��+���u{|Ŧ���OC%�܅z���\ϲ�F���R�̽/�q�2�����別�L�κ�L���&X(\~Sc�lg�-h�`�W�T[ey��~7h'^�H���6��:3N�e���.Q'�j��XSW�&C��`l�s�%��c2.���3�k�4��ڴSg����a|�T��E��v/I�����o�������#y�焤 2��u!k�u�u�u��^]쳞�ً�/O�g�٫�wB�/ޟ�r����h���h�fx*�t�m�Ģq����3��Ǧ?�L>65b�F�	)�xr�����QG�q�z($⢽hP��X|m��Γ�j�q��/��R4ۡ>T�i�U����W���byVeV=1�p��}�R�.4vV;*83I�F)l�_v��^���[]�3�&u��������R+��N�z�嘖��C����.v�o�:����֚GO��Ϝ�T�C����>i��A���k��w}�I��Y��;p��:=S�����ǶD.$�z7Ø1�{��.�Z���Qj$[Q5�cGꉴ��-�H��Ͳ�:��2jA��kJ.6��-ԈfW��@ppL�,��oU�A�J3��[����{��7	Gh��1��Nw�l�e+Ĉ��=�
���Q�[S=q�(� #�/wg��j5��z6�ka�-ؿ��-�Q���VGa�_��%���?���aS�6p��0gB�9t���Z������^wKÂ�\��\�A�"�X�e va,K-��r�^�ղ?�1�����I�<{��p�Ú:�)n1˰�y?ef6e���@�R��?�&A��nq~���7<�!1=����<�{�i��͇������ٙk߻�@�x�U��"�W�mu�w��HIo�6��AG����׊�.;�) s�̘��-�6�����?���FGÅK���UAJ���ؐ-(��[���5i�&��B� E�nH[V[�}(���[d��1�>�O�A>�ܵiѧ������k�5{S��N��r��F[�o��I8��V�E]�t;i��N��S�����
�,�8p�
���MӵxКoϙߵ% ���<$a���>}��2ۂ�����L����R�ݼ\��,�7wt��G���g����ѷ;��;�)�D�Z�'Cj�v�(X��@#m���0��w���WO�|�/�t0{��I�{w�N�YZ~~�����N�}���Y����N˗�m�w����M��Ib~�73�hO+����x{�7;p~:i��g~�Tb����S���]A�3��u�Y�o,�I���n��s����ͧ�iv>�f�\.4K5yszT�x��CDe�UQ�?�s��"6PՔ)Kñf֮E��E�̆�n�M����#/���(�Z�<z�'w��pZ����$+,Y���6蠺ނ��v��8Y��g�E"q6��Z	��,��s*��M� ��M�'�����u�pn�Ph�J^J;{g��<Fz�kɞ\�A-~l�[�9�K2v%�L3}��C+�����ӄ>> �  ����|� Wb����m��>ݨ>�Z1����z<pN����péu񨴴��]���t�&��i:.N���)U��6��9�W��E�Ȧ(�:�A�A}��Zg�\O�b*]��_Z��Qk�����F�C�0��C!����vE���c_��:;�0?M���D~dD~[��36��KO��8s��f����;���'Y�y���l�K"m�#�F���(�6�:-�.�5��Ou�z�?3E?�i19�_9����{�?�t-�C-��?�.���(��Of�~���o!���F:�k|�hK8�w��%�[4��y�?�9#Z�J���K�e�헕?� ��v�CzX��ɸ�5��Ä��Tr>���.Tc�_@��JV�٥~��#֗�j�B��EL2Lc�ZD�)�k���>�1�C��e"�PI�휼�SYtK79��-������<�V1%ű�,�����_�Gb�_q?����T/�}��۷�sU�2i��.,��!6��f�,��)�^ҽ`a��Rs<d���ʳg�5��t��`�s��R>{nHF5�9��L�#%��ث�9���_�����l"���yo�"+� Λ��`��D޻�z���40Dp8�;�[����T�ý�ӄ"u`e����$vk{?���ߡ�p]��ZDN��FR	?e~���9�w�����c������:+&�=?'	�8�v`[�J+R��<�Μ��//:xV �O�=���	�B%�5�����u<�\�U�y��뀰�k�b"��E �����+�>u��k]%T���\Ӑog��A�v>LE��Q!A��j�s�S�</��y�0�=[�y�ٛ��LW=k��N��}>�#=iK���~�?�%�k��<y���ǳ�Mfճ�q8+\�y�F�_Y�<���_]f[��� ::��4f�>���:?��dW�Y;�e�̹��E�����$����2��ܟ�j�����,�{������	U�	珕QnZk�ŕ����>�� ��>s��'�K/�s_`����>"}�D�$f��o�W��6���<_y�K��S.��D�4Է��d��k���\18b��N�?���v���<���`��׮��k�})Y��<�Y�}��dae����ɔ8�s~M�-辞�q#v�,�?��g_��6���a-o��xb�v��㑓�:n]�&����������#�0���������.�[�Y?���g?�?�Y��      C   (   x�3��CF\F���&���f����1z\\\ ��      E   p  x���KN�0���)|����D �A ��*7�����U�;���9".�I��S�)�=�o��ɂ��%�; ^���x%�J��k�Ã����g <�w�e%܆W�X��]DN*4g�>�g8G,}�����b$A�3똣��T�Y��||� �"k��|� ſc�$����Yct��("�P�P������4�-`."�� 3C�mʶ�8�C@����cO���+�
\f��r½<���l�Zj?f�^Z�D��e��7.f\T����<թ���@9�9�
r�r���}͇�Z�Kp��U��V`N((�ʆKD]�1��OW��� �UJ��X��uF}��s���
^�gd��$I~3�      G   �	  x�uXˎ�]�_�M�@Ih�f&=+�N8�1g��DI�a�e>�VV��Y�l���O�Kr�%U��	`��XE��s�=��^�ޛ���7i�v�?�zCY5>'��7�S���凞Q����LV}���9��1}���2��ls9<ʴW�ꊿ����7���c�UQI�����N�|�W��oz���;�u�:Ɛ�4�ôN��OO|0��-vT�+I��]:�Ƨ0ئt���{��|�&��?<F]꽞�7)�h�-�<]o�Щq�GөAo0/�p���[�ȥG�g���y�a|R�Ǒ������Wpu��������u�yB6�~��g3�L�G�1�8�[��f�o(&�31����h�1�&[�wK�I��5RE2���5��� �I-�o���lWX�������RHt\bYq.�E���\킍|�7�iƳ1k|_o�a�;�L�&q�Mw�Q%�1weu�[�Sp_y9������^�ޙb��,��9�PH�������j��m�oXl,�N�����{�a��H��gd����{�%xo��w7��
�����2��"���,�0�d�x��kuw�Lw���N�{��E�� ��g�s���b�������n�u��6������#���!�z*	�XY�九��w�������k <X��k��n�t�']<�"F�fnb�����>�AGʂ������ܩ�����{-�!�+��Il),4TD hm�+hO%f�.�ֽ�G�*?0�!���|ѩ�bSOTH��Fܾ����ד\~*��(��pXʦ�z��8��H��<���p�� ��F��A��`����q�^㖺��=���#MF*]p�
�Uu�����Ws>r$/z+2)����l�;$�Qk�`������\��4c���b�zY���ea��S��}��[�-�-ьvLw��		���o~ y[\c��;|f��m���NaeqpJ���k�nkA����Pzgz�]�tOMFGIF�e{�ͬ�i@A�9�:��e g��EWeYrz��ю�,�;;�xF}5�@
Y�B�֯�SиF��c����:�0�1��e (�����O��;w������ߺE�%�P�S,NMA�e���^��V�3�Kj^�H}p��x�>���P�k�-�6B~ �n�S��4�������h`q�e�7���>�GԨ��(�F�w�fRk)�HE�OuL#<�n娶�)"E@=;��zy��k�Y�\U���D�IJ/��{�CC����h�."X)��
��Ժ/^���>�~/�Aׄ	i��cf��Nưd�Z��X�\�*J0A�
����/��PoMy���F������J��]Ü�:��)Z��xh����]�ߣ�������њ:��'���J��x��U�R��^F�����&6�A��1���sҞ�ޚ���Ij�v(G�����,}�=r��3�V��~��?C���[�<�2��t)ߜ3�cS�(9�{�Nt����ޜ�c
���%�3���j�.��� �@/�=���e�v�.(�g�ֽ���8z4�&�x:=�[�l��F�M-���]Ϝ�t�7�ޭZ�����Nj����_?��DLO-��V��ǅMوd}+qqP�७J8#���z�/H�v;�\���R�"���l��N������.ߪs#ycV�W�iF�����e@�ǃD_����i4)_�Q�@�I�	��@�b�ִ�	<*Ɏ!�*!��x�G6��`���Ѵ��x5��,uw�;��i�5g�(� 5�'/u�w��A8m7I�yߊ���vҷ��_�RS��_'C��pma���	r�<n!��[B 1�FE�F�V��n���E��p}*\͉����M�<
׵%G��R���^�q�+8�%�ZOJh��0��3ݽȓ�'~i���}�����L*���d�e�x�����-e�I����>(vՄ&&��N�-.��!]5D����/���x�Z&~�՘v���j�&�y+��]��5���3�f(��f���E��5�	�~2�5��hl�����څ�=k:O@��é"����e(츖�nz�t�H��T�V!a߰߯�+m~���Ѡs�i����yL�bw��(�� �DmG�ނ'���+4��&�w���\;����̽�$ӭ�	�h=�[�VR`���{�8 ]���hp��u���Pmlu�H[mNE�~q��B�4��Sr��-���6o���+�RoB���B/Wa8}5I��6�a~:��p����m#Nz	�s���A@H�~ء]Ҏ�c�0�F�N튓�U���6�-��:��]t|RNÔ�4�4�JJ~��P�b�>N7}5�T��
�ch/�3~M?I�x.��e�_�t\S��ѥ&�4�mҒS�`���ٳg���      J   V   x�3���D\F؅���`6�.l�]���vaK�8�q���!gIQi*g	gIjq	g�0��͌���!	T�if����� ��Ni      L   0   x�3��CC\FXČ���`3�"f�E���1K,b�Xc���� y�-?      N      x������ � �      P   �   x�3�tu�qRr�w���M�+I�,J�2Cw�/J-.�2G��L.��/JO��,�M��t�����&e�rY���%�PE�-54D�����x˕����C�]��M`ns��]q�M\F\1z\\\ P�      R      x������ � �      T   �   x�U�1o�0���W�)�8�����C�%C$���l��d�J��ORPH�������%�ö�Com���2���(���l��,a�)yG��F�NZ
I��P�m��ka�U��T���ϬׄmV��~ڧ/a����S{��lz� ���uTX�8(�g�{�\������M�����ј�R���'I��8����a�X���(�.X4b3      V      x������ � �     