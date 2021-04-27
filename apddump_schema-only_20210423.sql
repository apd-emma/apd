--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: plpgsql_call_handler(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.plpgsql_call_handler() RETURNS language_handler
    LANGUAGE c
    AS '$libdir/plpgsql', 'plpgsql_call_handler';


ALTER FUNCTION public.plpgsql_call_handler() OWNER TO postgres;

--
-- Name: plpgsql_validator(oid); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.plpgsql_validator(oid) RETURNS void
    LANGUAGE c
    AS '$libdir/plpgsql', 'plpgsql_validator';


ALTER FUNCTION public.plpgsql_validator(oid) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: biblio_supertitles; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.biblio_supertitles (
    id integer NOT NULL,
    author character varying(300),
    year character varying(50),
    title character varying(500),
    subtitle character varying(500),
    doctype character varying(50),
    edition character varying(50),
    place character varying(50),
    publisher character varying(200),
    journal character varying(200),
    volume character varying(100),
    number character varying(50),
    date character varying(10),
    pages character varying(100),
    abbrev_apd character varying(100),
    abbrev_apd_edition character varying(100),
    supertitle character varying(100),
    keywords character varying(300),
    insertedon timestamp(0) without time zone,
    insertedby character varying(20),
    changedon timestamp(0) without time zone,
    changedby character varying(20),
    summary character varying(10000),
    doceditors character varying(30),
    isbn character varying(20),
    doi character varying(50),
    acronym character varying(20),
    in_derislambiblio character varying(3),
    serial character varying(200),
    supertitleid integer,
    scan character varying(3),
    specialissue character varying(500),
    reviewtitleid character varying(10)
);


ALTER TABLE public.biblio_supertitles OWNER TO em;

--
-- Name: biblio_supertitles_id_seq; Type: SEQUENCE; Schema: public; Owner: em
--

CREATE SEQUENCE public.biblio_supertitles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.biblio_supertitles_id_seq OWNER TO em;

--
-- Name: biblio_supertitles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: em
--

ALTER SEQUENCE public.biblio_supertitles_id_seq OWNED BY public.biblio_supertitles.id;


--
-- Name: biblio_titles; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.biblio_titles (
    id integer NOT NULL,
    author character varying(300),
    year character varying(50),
    title character varying(500),
    subtitle character varying(500),
    doctype character varying(50),
    edition character varying(50),
    place character varying(50),
    publisher character varying(200),
    journal character varying(200),
    volume character varying(100),
    number character varying(50),
    date character varying(10),
    pages character varying(100),
    abbrev_apd character varying(100),
    abbrev_apd_edition character varying(100),
    supertitle character varying(100),
    keywords character varying(300),
    insertedon timestamp(0) without time zone,
    insertedby character varying(20),
    changedon timestamp(0) without time zone,
    changedby character varying(20),
    summary character varying(2500),
    doceditors character varying(30),
    isbn character varying(20),
    doi character varying(50),
    acronym character varying(20),
    in_derislambiblio character varying(3),
    serial character varying(200),
    supertitleid integer,
    scan character varying(3),
    specialissue character varying(500),
    reviewtitleid character varying(10)
);


ALTER TABLE public.biblio_titles OWNER TO em;

--
-- Name: biblio_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: em
--

CREATE SEQUENCE public.biblio_titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.biblio_titles_id_seq OWNER TO em;

--
-- Name: biblio_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: em
--

ALTER SEQUENCE public.biblio_titles_id_seq OWNED BY public.biblio_titles.id;


SET default_with_oids = true;

--
-- Name: checkpoints; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.checkpoints (
    id numeric(9,0) DEFAULT nextval(('s_checkpoints'::text)::regclass),
    name character varying(50),
    comments character varying(500),
    rights numeric(9,0)
);


ALTER TABLE public.checkpoints OWNER TO postgres;

--
-- Name: codescriptions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.codescriptions (
    id numeric(9,0) DEFAULT nextval(('s_codescritions'::text)::regclass),
    name character varying(100),
    comments character varying(1000)
);


ALTER TABLE public.codescriptions OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: collections; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.collections (
    id integer NOT NULL,
    siglum character varying(50),
    state character varying(30),
    place character varying(30),
    name character varying(150),
    tm_collid integer
);


ALTER TABLE public.collections OWNER TO em;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: em
--

CREATE SEQUENCE public.collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collections_id_seq OWNER TO em;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: em
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.comments (
    id numeric(9,0) DEFAULT nextval(('s_comments'::text)::regclass),
    lemmaid numeric(9,0),
    comment character varying(200)
);


ALTER TABLE public.comments OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: constituents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.constituents (
    id numeric(9,0) DEFAULT nextval(('s_constituents'::text)::regclass),
    typeid numeric(9,0),
    projectionid numeric(9,0),
    isterminal boolean
);


ALTER TABLE public.constituents OWNER TO postgres;

--
-- Name: constituenttypes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.constituenttypes (
    id numeric(9,0),
    name character varying(30)
);


ALTER TABLE public.constituenttypes OWNER TO postgres;

--
-- Name: crossrefs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.crossrefs (
    id numeric(9,0) DEFAULT nextval(('s_crossrefs'::text)::regclass),
    text character varying(2000),
    columnid numeric(9,0) DEFAULT 1001,
    ref1id numeric(9,0),
    ref2id numeric(9,0),
    ref3id numeric(9,0),
    ref4id numeric(9,0),
    ref5id numeric(9,0),
    ref1columnid numeric(9,0) DEFAULT 1001,
    ref2columnid numeric(9,0) DEFAULT 1001,
    ref3columnid numeric(9,0) DEFAULT 1001,
    ref4columnid numeric(9,0) DEFAULT 1001,
    ref5columnid numeric(9,0) DEFAULT 1001,
    comment character varying(5000),
    lang character varying(20)
);


ALTER TABLE public.crossrefs OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: dbname; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.dbname (
    name character varying(100)
);


ALTER TABLE public.dbname OWNER TO postgres;

--
-- Name: s_distincttrigrams; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_distincttrigrams
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_distincttrigrams OWNER TO postgres;

--
-- Name: distincttrigrams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.distincttrigrams (
    id numeric(9,0) DEFAULT nextval('public.s_distincttrigrams'::regclass),
    trigramstring character varying(1000),
    lemmaid numeric(9,0),
    formid numeric(9,0),
    frequency numeric(9,0),
    morphstring character varying(500),
    standardform character varying(500),
    standardformformid numeric(9,0)
);


ALTER TABLE public.distincttrigrams OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: editions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.editions (
    id numeric(9,0) DEFAULT nextval(('s_editions'::text)::regclass),
    name character varying(100),
    comments character varying(1000)
);


ALTER TABLE public.editions OWNER TO postgres;

--
-- Name: edunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.edunits (
    id numeric(9,0) DEFAULT nextval(('s_edunits'::text)::regclass),
    wordid numeric(9,0),
    editionid numeric(9,0),
    string character varying(100),
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    edunitrefs character varying(1000),
    layoutid numeric(12,0),
    textpos numeric(9,0)
);


ALTER TABLE public.edunits OWNER TO postgres;

--
-- Name: elements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.elements (
    id numeric(9,0) DEFAULT nextval(('s_elements'::text)::regclass),
    layoutid numeric(9,0),
    pos numeric(9,0)
);


ALTER TABLE public.elements OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: entries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.entries (
    id numeric(9,0) DEFAULT nextval(('s_entries'::text)::regclass),
    lemmaid numeric(9,0),
    entry character varying(200)
);


ALTER TABLE public.entries OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: forms; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.forms (
    id numeric(9,0) DEFAULT nextval(('s_forms'::text)::regclass),
    name character varying(100),
    partofspeechid numeric(9,0)
);


ALTER TABLE public.forms OWNER TO postgres;

--
-- Name: functionunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.functionunits (
    id numeric(9,0) DEFAULT nextval(('s_functionunits'::text)::regclass),
    phraseunitid numeric(9,0),
    codescritpionid numeric(9,0)
);


ALTER TABLE public.functionunits OWNER TO postgres;

--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.images (
    id numeric(9,0) DEFAULT nextval(('s_images'::text)::regclass),
    papid numeric(9,0),
    name character varying(200),
    available boolean,
    courtesy character varying(1000)
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: layouts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.layouts (
    id numeric(9,0) DEFAULT nextval(('s_layouts'::text)::regclass),
    imageid numeric(9,0),
    layouttype numeric(9,0),
    name character varying(50),
    shortname character varying(20)
);


ALTER TABLE public.layouts OWNER TO postgres;

--
-- Name: layouttype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.layouttype (
    id numeric(9,0) DEFAULT nextval(('s_layouttypes'::text)::regclass),
    cols numeric(9,0),
    lines numeric(9,0),
    super numeric(9,0),
    hpos numeric(9,0),
    vpos numeric(9,0)
);


ALTER TABLE public.layouttype OWNER TO postgres;

--
-- Name: s_lemmarelations; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_lemmarelations
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_lemmarelations OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: lemmarelations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.lemmarelations (
    id numeric(9,0) DEFAULT nextval('public.s_lemmarelations'::regclass),
    lemma1id numeric(9,0),
    lemma2id numeric(9,0),
    kind character varying(100)
);


ALTER TABLE public.lemmarelations OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: lemmata; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.lemmata (
    id numeric(9,0) DEFAULT nextval(('s_lemmata'::text)::regclass),
    root character varying(50),
    lemma character varying(100),
    translationid numeric(9,0),
    comment character varying(500),
    translation character varying(500),
    standardid numeric(9,0),
    standard character varying(100),
    stem character varying(10),
    lemmarefs character varying(1000),
    lemmasuppl character varying(50),
    lang character varying(20) DEFAULT 'Arabic'::character varying,
    wordcategory character varying(500),
    shape character varying(500),
    domain character varying(500),
    rootarab character varying(50),
    lemmaarab character varying(100),
    relatedlemma character varying(100),
    relatedlemmasuppl character varying(50)
);


ALTER TABLE public.lemmata OWNER TO postgres;

--
-- Name: lemmaunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.lemmaunits (
    id numeric(9,0) DEFAULT nextval(('s_lemmaunits'::text)::regclass),
    morphunitid numeric(9,0),
    lemmaid numeric(9,0),
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    string character varying(50),
    formid numeric(9,0),
    standardform character varying(50),
    standardformformid numeric(9,0),
    layoutid numeric(12,0),
    textpos numeric(9,0),
    pos numeric(9,0)
);


ALTER TABLE public.lemmaunits OWNER TO postgres;

--
-- Name: lines; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.lines (
    id numeric(9,0) DEFAULT nextval(('s_lines'::text)::regclass),
    layoutid numeric(9,0),
    pos numeric(9,0),
    text character varying(1000),
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    dotlesstext character varying(1000),
    linename character varying(100),
    linerefs character varying(1000)
);


ALTER TABLE public.lines OWNER TO postgres;

--
-- Name: linetranslations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.linetranslations (
    id numeric(9,0) DEFAULT nextval(('s_linetranslations'::text)::regclass),
    lineid numeric(9,0),
    text character varying(500),
    lang character varying(3),
    comment character varying(2000),
    linetranslationrefs character varying(1000)
);


ALTER TABLE public.linetranslations OWNER TO postgres;

--
-- Name: literals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.literals (
    id numeric(9,0) DEFAULT nextval(('s_literals'::text)::regclass),
    layoutid numeric(9,0),
    elementid numeric(9,0),
    pos numeric(9,0),
    literal character(1)
);


ALTER TABLE public.literals OWNER TO postgres;

--
-- Name: s_messages; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_messages
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_messages OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.messages (
    id numeric(9,0) DEFAULT nextval('public.s_messages'::regclass),
    text character varying(10000),
    status numeric(9,0)
);


ALTER TABLE public.messages OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: morphunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.morphunits (
    id numeric(9,0) DEFAULT nextval(('s_morphunits'::text)::regclass),
    phonunitid numeric(9,0),
    editionid numeric(9,0),
    string character varying(100),
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    pos numeric(9,0),
    morphunitrefs character varying(1000),
    layoutid numeric(12,0),
    textpos numeric(9,0)
);


ALTER TABLE public.morphunits OWNER TO postgres;

--
-- Name: s_morphwords; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_morphwords
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_morphwords OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: morphwords; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.morphwords (
    id numeric(9,0) DEFAULT nextval('public.s_morphwords'::regclass),
    wordstring character varying(1000),
    phonunitid numeric(9,0),
    textpos numeric(9,0),
    layoutid numeric(9,0)
);


ALTER TABLE public.morphwords OWNER TO postgres;

--
-- Name: s_origcountries; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_origcountries
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_origcountries OWNER TO postgres;

--
-- Name: origcountries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.origcountries (
    id numeric(12,0) DEFAULT nextval('public.s_origcountries'::regclass),
    name character varying(200),
    geoid numeric(12,0)
);


ALTER TABLE public.origcountries OWNER TO postgres;

--
-- Name: s_origplaces; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_origplaces
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_origplaces OWNER TO postgres;

--
-- Name: origplaces; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.origplaces (
    id numeric(12,0) DEFAULT nextval('public.s_origplaces'::regclass),
    name character varying(200),
    geoid numeric(12,0),
    origregionid numeric(12,0)
);


ALTER TABLE public.origplaces OWNER TO postgres;

--
-- Name: s_origregions; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_origregions
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_origregions OWNER TO postgres;

--
-- Name: origregions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.origregions (
    id numeric(12,0) DEFAULT nextval('public.s_origregions'::regclass),
    name character varying(200),
    geoid numeric(12,0),
    origcountryid numeric(12,0)
);


ALTER TABLE public.origregions OWNER TO postgres;

--
-- Name: paleo_documents; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.paleo_documents (
    id integer NOT NULL,
    name character varying(200),
    imglink character varying(200),
    alifbend character varying(10),
    alifunder character varying(10),
    anglehabagroups character varying(10),
    anglehabas character varying(10),
    anglehaline character varying(10),
    anglehalinegroups character varying(10),
    aynbig character varying(10),
    aynext character varying(10),
    baseline character varying(10),
    basmalalig character varying(10),
    basmalaobl character varying(10),
    comment character varying(100),
    dalhook character varying(10),
    diacrdots character varying(10),
    justification character varying(10),
    kafext character varying(10),
    lineori character varying(10),
    lineoriund character varying(10),
    linescurv character varying(10),
    mashq character varying(10),
    medha character varying(10),
    mylettersample character varying(10),
    pic character varying(10),
    preserv character varying(200),
    sadext character varying(10),
    scan character varying(10),
    scriptangle character varying(10),
    scriptcurs character varying(10),
    scriptdens character varying(10),
    scriptirreg character varying(10),
    scriptlig character varying(10),
    signcredo character varying(10),
    sinteeth character varying(10),
    slanting character varying(10),
    spacelema character varying(10),
    spacemargdiff character varying(10),
    spacerima character varying(10),
    textrima character varying(10),
    textrimarays character varying(10),
    wordspile character varying(10),
    ln1ed2vol character varying(500),
    ln3num character varying(10),
    furtherpub character varying(500),
    reve character varying(10),
    matchstat integer,
    lineori_ls numeric,
    slanting_ls numeric,
    hanging_ls character varying(100),
    baseline_ls numeric,
    anglehabagroups_ls numeric,
    anglehalinegroups_ls numeric,
    medialmimhorizontal_ls character varying(100),
    connectedalifdown_ls character varying(100),
    lineori_ls_cat character varying(10),
    slanting_ls_cat character varying(10),
    baseline_ls_cat character varying(10),
    anglehabagroups_ls_cat character varying(10),
    anglehalinegroups_ls_cat character varying(10)
);


ALTER TABLE public.paleo_documents OWNER TO em;

--
-- Name: paleo_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: em
--

CREATE SEQUENCE public.paleo_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paleo_documents_id_seq OWNER TO em;

--
-- Name: paleo_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: em
--

ALTER SEQUENCE public.paleo_documents_id_seq OWNED BY public.paleo_documents.id;


--
-- Name: paleo_searchimages; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.paleo_searchimages (
    paleodoccolumn character varying(20) NOT NULL,
    paleodocvalue integer NOT NULL,
    explication character varying(50),
    searchimage character varying(100)
);


ALTER TABLE public.paleo_searchimages OWNER TO em;

SET default_with_oids = true;

--
-- Name: papyri; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.papyri (
    id numeric(9,0) DEFAULT nextval(('s_papyri'::text)::regclass),
    name character varying(200),
    comment character varying(1000),
    invnumshort character varying(30),
    relinvnum character varying(300),
    material character varying(30),
    height numeric,
    width numeric,
    history character varying(1000),
    date character varying(400),
    kindshort character varying(10),
    languageshort character varying(10),
    content character varying(1000),
    editions character varying(1000),
    ligatures character varying(1000),
    remarks character varying(1000),
    longname character varying(1000),
    placeoforigin character varying(200),
    images character varying(1000),
    translations character varying(1000),
    furthernames character varying(100),
    literature character varying(1000),
    bday numeric(9,0),
    bmonth numeric(9,0),
    byear numeric(9,0),
    eday numeric(9,0),
    emonth numeric(9,0),
    eyear numeric(9,0),
    bhday numeric(9,0),
    bhmonth numeric(9,0),
    bhyear numeric(9,0),
    ehday numeric(9,0),
    ehmonth numeric(9,0),
    ehyear numeric(9,0),
    bcday numeric(9,0),
    bcmonth numeric(9,0),
    bcyear numeric(9,0),
    ecday numeric(9,0),
    ecmonth numeric(9,0),
    ecyear numeric(9,0),
    indiction numeric(9,0),
    wd character varying(2),
    invnumold character varying(500),
    language character varying(100),
    kind character varying(500),
    invnum character varying(500),
    scribes character varying(1000),
    longremark character varying(20000),
    tm numeric(15,0),
    bsday numeric(9,0),
    bsmonth numeric(9,0),
    bsyear numeric(9,0),
    esday numeric(9,0),
    esmonth numeric(9,0),
    esyear numeric(9,0),
    furtherliterature character varying(2500),
    geoinfo character varying(2000),
    timestampcreation timestamp without time zone,
    timestampmod timestamp without time zone,
    damnum numeric(9,0),
    ln1edition character varying(500),
    ln2volumerom character varying(20),
    ln2volumear numeric,
    ln3number numeric(9,0),
    ln4addition character varying(500),
    furtherpublications character varying(500),
    damtitle character varying(200),
    completeness1 character varying(30),
    completeness2 character varying(30),
    formsubtypeid integer,
    imglink character varying(400)
);


ALTER TABLE public.papyri OWNER TO postgres;

--
-- Name: papyritexts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.papyritexts (
    name character varying(50),
    text character varying(20000)
);


ALTER TABLE public.papyritexts OWNER TO postgres;

--
-- Name: s_papyrusorigins; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_papyrusorigins
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_papyrusorigins OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: papyrusorigins; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.papyrusorigins (
    id numeric(12,0) DEFAULT nextval('public.s_papyrusorigins'::regclass),
    origplaceid numeric(12,0),
    papyrusid numeric(12,0),
    comments character varying(5000)
);


ALTER TABLE public.papyrusorigins OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: partsofspeech; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.partsofspeech (
    id numeric(9,0) DEFAULT nextval(('s_partsofspeech'::text)::regclass),
    name character varying(30)
);


ALTER TABLE public.partsofspeech OWNER TO postgres;

--
-- Name: s_phontrigrams; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_phontrigrams
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_phontrigrams OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: phontrigrams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.phontrigrams (
    id numeric(12,0) DEFAULT nextval('public.s_phontrigrams'::regclass),
    phonunit1id numeric(12,0),
    phonunit2id numeric(12,0),
    phonunit3id numeric(12,0),
    string1 character varying(2000),
    string2 character varying(2000),
    string3 character varying(2000)
);


ALTER TABLE public.phontrigrams OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: phonunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.phonunits (
    id numeric(9,0) DEFAULT nextval(('s_phonunits'::text)::regclass),
    edunitid numeric(9,0),
    string character varying(100),
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    status numeric(9,0),
    phonunitrefs character varying(1000),
    layoutid numeric(12,0),
    textpos numeric(9,0)
);


ALTER TABLE public.phonunits OWNER TO postgres;

--
-- Name: phrases; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.phrases (
    id numeric(9,0) DEFAULT nextval(('s_phrases'::text)::regclass),
    name character varying(50),
    comments character varying(500)
);


ALTER TABLE public.phrases OWNER TO postgres;

--
-- Name: phraseunits; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.phraseunits (
    id numeric(9,0) DEFAULT nextval(('s_phraseunits'::text)::regclass),
    isterminal boolean,
    typeid numeric(9,0),
    firstlemmaid numeric(9,0),
    lastlemmaid numeric(9,0),
    istop boolean,
    mother numeric(9,0)
);


ALTER TABLE public.phraseunits OWNER TO postgres;

--
-- Name: projections; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.projections (
    id numeric(9,0) DEFAULT nextval(('s_constituents'::text)::regclass),
    motherid numeric(9,0),
    daughterid numeric(9,0)
);


ALTER TABLE public.projections OWNER TO postgres;

--
-- Name: proto_lines; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.proto_lines (
    kind character varying(10),
    id numeric(9,0) DEFAULT nextval(('s_proto_lines'::text)::regclass),
    layoutid numeric(9,0),
    old_pos numeric(9,0),
    new_pos numeric(9,0),
    old_text character varying(500),
    new_text character varying(500),
    old_dotlesstext character varying(500),
    new_dotlesstext character varying(500),
    old_linename character varying(100),
    new_linename character varying(100),
    old_linerefs character varying(1000),
    new_linerefs character varying(1000),
    lineid numeric(9,0),
    changed timestamp with time zone DEFAULT now(),
    changetime character varying(50) DEFAULT timeofday()
);


ALTER TABLE public.proto_lines OWNER TO postgres;

--
-- Name: proto_words; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.proto_words (
    id numeric(9,0) DEFAULT nextval(('s_proto_words'::text)::regclass),
    wordid numeric(9,0),
    lineid numeric(9,0),
    old_linebreack boolean,
    new_linebreack boolean,
    old_string character varying(100),
    new_string character varying(100),
    old_pos numeric(9,0),
    new_pos numeric(9,0),
    kind character varying(10),
    changed timestamp with time zone DEFAULT now(),
    changetime character varying(50) DEFAULT timeofday(),
    old_linebreak boolean,
    new_linebreak boolean
);


ALTER TABLE public.proto_words OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: refs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.refs (
    id numeric(9,0) DEFAULT nextval(('s_refs'::text)::regclass),
    entryid numeric(9,0),
    ref character varying(50)
);


ALTER TABLE public.refs OWNER TO postgres;

--
-- Name: roots; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.roots (
    id numeric(9,0) DEFAULT nextval(('s_roots'::text)::regclass),
    lemmaid numeric(9,0),
    root character varying(50)
);


ALTER TABLE public.roots OWNER TO postgres;

--
-- Name: s_checkpoints; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_checkpoints
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_checkpoints OWNER TO postgres;

--
-- Name: s_codescriptions; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_codescriptions
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_codescriptions OWNER TO postgres;

--
-- Name: s_comments; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_comments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_comments OWNER TO postgres;

--
-- Name: s_constituents; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_constituents
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_constituents OWNER TO postgres;

--
-- Name: s_constituenttypes; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_constituenttypes
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_constituenttypes OWNER TO postgres;

--
-- Name: s_crossrefs; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_crossrefs
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_crossrefs OWNER TO postgres;

--
-- Name: s_editions; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_editions
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_editions OWNER TO postgres;

--
-- Name: s_edunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_edunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_edunits OWNER TO postgres;

--
-- Name: s_elements; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_elements
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_elements OWNER TO postgres;

--
-- Name: s_entries; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_entries
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_entries OWNER TO postgres;

--
-- Name: s_forms; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_forms
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_forms OWNER TO postgres;

--
-- Name: s_functionunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_functionunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_functionunits OWNER TO postgres;

--
-- Name: s_images; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_images
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_images OWNER TO postgres;

--
-- Name: s_layouts; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_layouts
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_layouts OWNER TO postgres;

--
-- Name: s_layouttypes; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_layouttypes
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_layouttypes OWNER TO postgres;

--
-- Name: s_lemmas; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_lemmas
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_lemmas OWNER TO postgres;

--
-- Name: s_lemmata; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_lemmata
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_lemmata OWNER TO postgres;

--
-- Name: s_lemmaunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_lemmaunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_lemmaunits OWNER TO postgres;

--
-- Name: s_lines; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_lines
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_lines OWNER TO postgres;

--
-- Name: s_linetranslations; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_linetranslations
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_linetranslations OWNER TO postgres;

--
-- Name: s_literals; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_literals
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_literals OWNER TO postgres;

--
-- Name: s_morphunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_morphunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_morphunits OWNER TO postgres;

--
-- Name: s_papyri; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_papyri
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_papyri OWNER TO postgres;

--
-- Name: s_partsofspeech; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_partsofspeech
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_partsofspeech OWNER TO postgres;

--
-- Name: s_phonunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_phonunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_phonunits OWNER TO postgres;

--
-- Name: s_phrases; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_phrases
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_phrases OWNER TO postgres;

--
-- Name: s_phraseunits; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_phraseunits
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_phraseunits OWNER TO postgres;

--
-- Name: s_projections; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_projections
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_projections OWNER TO postgres;

--
-- Name: s_proto_lines; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_proto_lines
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_proto_lines OWNER TO postgres;

--
-- Name: s_proto_words; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_proto_words
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_proto_words OWNER TO postgres;

--
-- Name: s_refs; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_refs
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_refs OWNER TO postgres;

--
-- Name: s_roots; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_roots
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_roots OWNER TO postgres;

--
-- Name: s_searchelements; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_searchelements
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_searchelements OWNER TO postgres;

--
-- Name: s_textwords; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_textwords
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_textwords OWNER TO postgres;

--
-- Name: s_translations; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_translations
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_translations OWNER TO postgres;

--
-- Name: s_trigrams; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_trigrams
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_trigrams OWNER TO postgres;

--
-- Name: s_unpunctforms; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_unpunctforms
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_unpunctforms OWNER TO postgres;

--
-- Name: s_words; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s_words
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_words OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: searchelements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.searchelements (
    id numeric(12,0) DEFAULT nextval(('s_searchelements'::text)::regclass),
    papid numeric(9,0),
    imageid numeric(9,0),
    layoutid numeric(9,0),
    lineid numeric(9,0),
    wordid numeric(9,0),
    edunitid numeric(9,0),
    phonunitid numeric(9,0),
    morphunitid numeric(9,0),
    lemmaunitid numeric(9,0),
    lemmaid numeric(9,0),
    formid numeric(9,0),
    linepos numeric(9,0),
    wordpos numeric(9,0),
    morphpos numeric(9,0),
    tableid numeric(9,0),
    columnid numeric(9,0),
    filterid numeric(9,0),
    text character varying(2000),
    crossrefid numeric(9,0),
    iscrossref boolean DEFAULT false
);


ALTER TABLE public.searchelements OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: textlayoutview; Type: TABLE; Schema: public; Owner: em; Tablespace: 
--

CREATE TABLE public.textlayoutview (
    apd_papid numeric,
    apd_layoutid integer,
    apd_longname character varying(1000),
    rectoverso text,
    tfid integer,
    tfname character varying(100),
    stgfid integer,
    stgfname character varying(100),
    stfid integer,
    stfname character varying(100),
    stfdesc text,
    tlname character varying,
    stlname character varying,
    editor character varying,
    constellation text,
    phraselist text
);


ALTER TABLE public.textlayoutview OWNER TO em;

--
-- Name: textwords; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.textwords (
    id numeric(12,0) DEFAULT nextval('public.s_textwords'::regclass),
    wordid numeric(12,0),
    layoutid numeric(12,0),
    pos numeric(9,0),
    string character varying(2000)
);


ALTER TABLE public.textwords OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: translations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.translations (
    id numeric(9,0) DEFAULT nextval(('s_translations'::text)::regclass),
    text character varying(200),
    comment character varying(1000),
    lang character varying(10)
);


ALTER TABLE public.translations OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: trigrams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.trigrams (
    id numeric(9,0) DEFAULT nextval('public.s_trigrams'::regclass),
    trigramstring character varying(1000),
    lemmaid numeric(9,0),
    formid numeric(9,0),
    frequency numeric(9,0),
    morphstring character varying(500),
    standardform character varying(500),
    standardformformid numeric(9,0)
);


ALTER TABLE public.trigrams OWNER TO postgres;

--
-- Name: typo_textparts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_textparts (
    id integer NOT NULL,
    name character varying(200),
    occurrence character varying(20),
    editor character varying(20),
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone,
    textblockid integer
);


ALTER TABLE public.typo_textparts OWNER TO postgres;

--
-- Name: typo_docparts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_docparts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_docparts_id_seq OWNER TO postgres;

--
-- Name: typo_docparts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_docparts_id_seq OWNED BY public.typo_textparts.id;


--
-- Name: typo_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_documents (
    apd_papid integer NOT NULL,
    apd_longname character varying(1000),
    apd_layoutid integer,
    apd_kind character varying(500),
    apd_content character varying(1000),
    apd_placeoforigin character varying(200),
    apd_byear numeric(9,0),
    apd_eyear numeric(9,0),
    formtypeid integer,
    formsubtypeid integer,
    layouttypeid_r integer,
    editor character varying(20) NOT NULL,
    insertedon timestamp(0) without time zone,
    layoutsubtypeid_r integer,
    layouttypeid_v integer,
    layoutsubtypeid_v integer,
    apd_completeness1 character varying(30),
    apd_completeness2 character varying(30)
);


ALTER TABLE public.typo_documents OWNER TO postgres;

--
-- Name: typo_etiunitsarab; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_etiunitsarab (
    apd_edunitid integer NOT NULL,
    apd_edunitstring character varying(100),
    apd_layoutid integer,
    apd_lineid integer,
    apd_linepos integer,
    apd_linename character varying(100),
    apd_textpos integer,
    apd_wordid integer,
    layouttypeid integer,
    layoutfieldname character varying(10),
    layoutmarkerid character varying(150),
    editor character varying(20) NOT NULL,
    insertedon timestamp(0) without time zone,
    changedon timestamp(0) without time zone
);


ALTER TABLE public.typo_etiunitsarab OWNER TO postgres;

--
-- Name: typo_etiunitstranslit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_etiunitstranslit (
    apd_morphunitid integer NOT NULL,
    apd_morphunitstring character varying(100),
    apd_layoutid integer,
    apd_lineid integer,
    apd_linepos integer,
    apd_linename character varying(100),
    apd_textpos integer,
    apd_morphunitpos integer,
    textpartid integer,
    phraseid integer,
    editor character varying(20) NOT NULL,
    insertedon timestamp(0) without time zone,
    changedon timestamp(0) without time zone,
    apd_wordid integer
);


ALTER TABLE public.typo_etiunitstranslit OWNER TO postgres;

--
-- Name: typo_layoutfields; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_layoutfields (
    layouttypeid integer NOT NULL,
    fieldname character varying(10) NOT NULL
);


ALTER TABLE public.typo_layoutfields OWNER TO postgres;

--
-- Name: typo_layoutmarkers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_layoutmarkers (
    id integer NOT NULL,
    name character varying(100),
    "position" character varying(20)
);


ALTER TABLE public.typo_layoutmarkers OWNER TO postgres;

--
-- Name: typo_layoutmarkers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_layoutmarkers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_layoutmarkers_id_seq OWNER TO postgres;

--
-- Name: typo_layoutmarkers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_layoutmarkers_id_seq OWNED BY public.typo_layoutmarkers.id;


--
-- Name: typo_typeslayout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_typeslayout (
    id integer NOT NULL,
    name character varying(100),
    layouthtml character varying(5000),
    editor character varying(20),
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone,
    layouthtmlbasic character varying(5000)
);


ALTER TABLE public.typo_typeslayout OWNER TO postgres;

--
-- Name: typo_layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_layouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_layouts_id_seq OWNER TO postgres;

--
-- Name: typo_layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_layouts_id_seq OWNED BY public.typo_typeslayout.id;


--
-- Name: typo_phrases; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_phrases (
    id integer NOT NULL,
    name character varying(250),
    kind character varying(20),
    textpartid integer,
    editor character varying(20),
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone
);


ALTER TABLE public.typo_phrases OWNER TO postgres;

--
-- Name: typo_phrases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_phrases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_phrases_id_seq OWNER TO postgres;

--
-- Name: typo_phrases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_phrases_id_seq OWNED BY public.typo_phrases.id;


--
-- Name: typo_subtypegroupsformal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_subtypegroupsformal (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    formtypeid integer NOT NULL,
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone,
    subtypegroupdesc text
);


ALTER TABLE public.typo_subtypegroupsformal OWNER TO postgres;

--
-- Name: typo_subtypegroupsformal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_subtypegroupsformal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_subtypegroupsformal_id_seq OWNER TO postgres;

--
-- Name: typo_subtypegroupsformal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_subtypegroupsformal_id_seq OWNED BY public.typo_subtypegroupsformal.id;


--
-- Name: typo_subtypesformal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_subtypesformal (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    formtypeid integer,
    editor character varying(20) NOT NULL,
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone,
    subtypegroupid integer DEFAULT 0,
    subtypedesc text,
    subtypedesc_long text
);


ALTER TABLE public.typo_subtypesformal OWNER TO postgres;

--
-- Name: typo_subtypesformal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_subtypesformal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_subtypesformal_id_seq OWNER TO postgres;

--
-- Name: typo_subtypesformal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_subtypesformal_id_seq OWNED BY public.typo_subtypesformal.id;


--
-- Name: typo_subtypeslayout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_subtypeslayout (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    layouttypename character varying(100),
    editor character varying(20),
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone
);


ALTER TABLE public.typo_subtypeslayout OWNER TO postgres;

--
-- Name: typo_subtypeslayout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_subtypeslayout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_subtypeslayout_id_seq OWNER TO postgres;

--
-- Name: typo_subtypeslayout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_subtypeslayout_id_seq OWNED BY public.typo_subtypeslayout.id;


--
-- Name: typo_textblocks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_textblocks (
    id integer NOT NULL,
    name character varying(100),
    occurrence character varying(20),
    formsubtypeid integer,
    editor character varying(20),
    createdon timestamp(0) without time zone,
    changedon timestamp(0) without time zone
);


ALTER TABLE public.typo_textblocks OWNER TO postgres;

--
-- Name: typo_textblocks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_textblocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_textblocks_id_seq OWNER TO postgres;

--
-- Name: typo_textblocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_textblocks_id_seq OWNED BY public.typo_textblocks.id;


--
-- Name: typo_typesformal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.typo_typesformal (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE public.typo_typesformal OWNER TO postgres;

--
-- Name: typo_typesformal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.typo_typesformal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typo_typesformal_id_seq OWNER TO postgres;

--
-- Name: typo_typesformal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.typo_typesformal_id_seq OWNED BY public.typo_typesformal.id;


--
-- Name: unpunctforms; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.unpunctforms (
    id numeric(9,0) DEFAULT nextval(('s_unpunctforms'::text)::regclass),
    lemmaid numeric(9,0),
    rootid numeric(9,0),
    wordid numeric(9,0),
    formid numeric(9,0),
    unpunctform character varying(50)
);


ALTER TABLE public.unpunctforms OWNER TO postgres;

SET default_with_oids = true;

--
-- Name: words; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.words (
    id numeric(9,0) DEFAULT nextval(('s_words'::text)::regclass),
    lineid numeric(9,0),
    firstpos numeric(9,0),
    lastpos numeric(9,0),
    linebreak boolean,
    checkpoint numeric(9,0),
    checked timestamp without time zone,
    string character varying(100),
    pos numeric(9,0),
    wordrefs character varying(1000),
    layoutid numeric(12,0),
    textpos numeric(9,0)
);


ALTER TABLE public.words OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: em
--

ALTER TABLE ONLY public.biblio_supertitles ALTER COLUMN id SET DEFAULT nextval('public.biblio_supertitles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: em
--

ALTER TABLE ONLY public.biblio_titles ALTER COLUMN id SET DEFAULT nextval('public.biblio_titles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: em
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: em
--

ALTER TABLE ONLY public.paleo_documents ALTER COLUMN id SET DEFAULT nextval('public.paleo_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_layoutmarkers ALTER COLUMN id SET DEFAULT nextval('public.typo_layoutmarkers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_phrases ALTER COLUMN id SET DEFAULT nextval('public.typo_phrases_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_subtypegroupsformal ALTER COLUMN id SET DEFAULT nextval('public.typo_subtypegroupsformal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_subtypesformal ALTER COLUMN id SET DEFAULT nextval('public.typo_subtypesformal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_subtypeslayout ALTER COLUMN id SET DEFAULT nextval('public.typo_subtypeslayout_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_textblocks ALTER COLUMN id SET DEFAULT nextval('public.typo_textblocks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_textparts ALTER COLUMN id SET DEFAULT nextval('public.typo_docparts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_typesformal ALTER COLUMN id SET DEFAULT nextval('public.typo_typesformal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typo_typeslayout ALTER COLUMN id SET DEFAULT nextval('public.typo_layouts_id_seq'::regclass);


--
-- Name: biblio_supertitles_pkey; Type: CONSTRAINT; Schema: public; Owner: em; Tablespace: 
--

ALTER TABLE ONLY public.biblio_supertitles
    ADD CONSTRAINT biblio_supertitles_pkey PRIMARY KEY (id);


--
-- Name: biblio_titles_pkey; Type: CONSTRAINT; Schema: public; Owner: em; Tablespace: 
--

ALTER TABLE ONLY public.biblio_titles
    ADD CONSTRAINT biblio_titles_pkey PRIMARY KEY (id);


--
-- Name: collections_pkey; Type: CONSTRAINT; Schema: public; Owner: em; Tablespace: 
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: paleo_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: em; Tablespace: 
--

ALTER TABLE ONLY public.paleo_documents
    ADD CONSTRAINT paleo_documents_pkey PRIMARY KEY (id);


--
-- Name: paleo_searchimages_pkey; Type: CONSTRAINT; Schema: public; Owner: em; Tablespace: 
--

ALTER TABLE ONLY public.paleo_searchimages
    ADD CONSTRAINT paleo_searchimages_pkey PRIMARY KEY (paleodoccolumn, paleodocvalue);


--
-- Name: papyri_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.papyri
    ADD CONSTRAINT papyri_name_key UNIQUE (name);


--
-- Name: typo_docparts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_textparts
    ADD CONSTRAINT typo_docparts_pkey PRIMARY KEY (id);


--
-- Name: typo_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_documents
    ADD CONSTRAINT typo_documents_pkey PRIMARY KEY (apd_papid, editor);


--
-- Name: typo_etiunitsarab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_etiunitsarab
    ADD CONSTRAINT typo_etiunitsarab_pkey PRIMARY KEY (apd_edunitid, editor);


--
-- Name: typo_etiunitstranslit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_etiunitstranslit
    ADD CONSTRAINT typo_etiunitstranslit_pkey PRIMARY KEY (apd_morphunitid, editor);


--
-- Name: typo_layoutfields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_layoutfields
    ADD CONSTRAINT typo_layoutfields_pkey PRIMARY KEY (layouttypeid, fieldname);


--
-- Name: typo_layoutmarkers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_layoutmarkers
    ADD CONSTRAINT typo_layoutmarkers_pkey PRIMARY KEY (id);


--
-- Name: typo_layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_typeslayout
    ADD CONSTRAINT typo_layouts_pkey PRIMARY KEY (id);


--
-- Name: typo_phrases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_phrases
    ADD CONSTRAINT typo_phrases_pkey PRIMARY KEY (id);


--
-- Name: typo_subtypegroupsformal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_subtypegroupsformal
    ADD CONSTRAINT typo_subtypegroupsformal_pkey PRIMARY KEY (name, formtypeid);


--
-- Name: typo_subtypesformal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_subtypesformal
    ADD CONSTRAINT typo_subtypesformal_pkey PRIMARY KEY (name, editor);


--
-- Name: typo_subtypeslayout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_subtypeslayout
    ADD CONSTRAINT typo_subtypeslayout_pkey PRIMARY KEY (name);


--
-- Name: typo_textblocks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_textblocks
    ADD CONSTRAINT typo_textblocks_pkey PRIMARY KEY (id);


--
-- Name: typo_typesformal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.typo_typesformal
    ADD CONSTRAINT typo_typesformal_pkey PRIMARY KEY (id);


--
-- Name: columnid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX columnid_searchelements_idx ON public.searchelements USING btree (columnid);


--
-- Name: edunitid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX edunitid_searchelements_idx ON public.searchelements USING btree (edunitid);


--
-- Name: edunits_wordid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX edunits_wordid ON public.edunits USING btree (wordid);


--
-- Name: formidid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX formidid_searchelements_idx ON public.searchelements USING btree (formid);


--
-- Name: id_forms_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX id_forms_idx ON public.forms USING btree (id);


--
-- Name: id_papyri_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX id_papyri_idx ON public.papyri USING btree (id);


--
-- Name: id_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX id_searchelements_idx ON public.searchelements USING btree (id);


--
-- Name: images_papid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX images_papid ON public.images USING btree (papid);


--
-- Name: layoutid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX layoutid_searchelements_idx ON public.searchelements USING btree (layoutid);


--
-- Name: layouts_imageid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX layouts_imageid ON public.layouts USING btree (imageid);


--
-- Name: lemmaid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lemmaid_searchelements_idx ON public.searchelements USING btree (lemmaid);


--
-- Name: lemmaunitid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lemmaunitid_searchelements_idx ON public.searchelements USING btree (lemmaunitid);


--
-- Name: lemmaunits_formid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lemmaunits_formid ON public.lemmaunits USING btree (formid);


--
-- Name: lemmaunits_lemmaid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lemmaunits_lemmaid ON public.lemmaunits USING btree (lemmaid);


--
-- Name: lemmaunits_morphunitid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lemmaunits_morphunitid ON public.lemmaunits USING btree (morphunitid);


--
-- Name: lineid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lineid_searchelements_idx ON public.searchelements USING btree (lineid);


--
-- Name: lines_layoutid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lines_layoutid ON public.lines USING btree (layoutid);


--
-- Name: lines_pos; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX lines_pos ON public.lines USING btree (pos);


--
-- Name: morphunitid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX morphunitid_searchelements_idx ON public.searchelements USING btree (morphunitid);


--
-- Name: morphunits_phonunitid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX morphunits_phonunitid ON public.morphunits USING btree (phonunitid);


--
-- Name: name_forms_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX name_forms_idx ON public.forms USING btree (name);


--
-- Name: nn_edunits; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_edunits ON public.edunits USING btree (id);


--
-- Name: nn_lemmaunits; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_lemmaunits ON public.lemmaunits USING btree (id);


--
-- Name: nn_lines; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_lines ON public.lines USING btree (id);


--
-- Name: nn_morphunits; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_morphunits ON public.morphunits USING btree (id);


--
-- Name: nn_phonunits; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_phonunits ON public.phonunits USING btree (id);


--
-- Name: nn_words; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX nn_words ON public.words USING btree (id);


--
-- Name: papid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX papid_searchelements_idx ON public.searchelements USING btree (papid);


--
-- Name: phonunitid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX phonunitid_searchelements_idx ON public.searchelements USING btree (phonunitid);


--
-- Name: phonunits_edunitid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX phonunits_edunitid ON public.phonunits USING btree (edunitid);


--
-- Name: text_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX text_searchelements_idx ON public.searchelements USING btree (text);


--
-- Name: wordid_searchelements_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX wordid_searchelements_idx ON public.searchelements USING btree (wordid);


--
-- Name: words_lineid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX words_lineid ON public.words USING btree (lineid);


--
-- Name: words_pos; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX words_pos ON public.words USING btree (pos);


--
-- Name: textlayoutview _RETURN; Type: RULE; Schema: public; Owner: em
--

CREATE RULE "_RETURN" AS
    ON SELECT TO public.textlayoutview DO INSTEAD  SELECT DISTINCT d.apd_papid,
    d.apd_layoutid,
    d.apd_longname,
    replace(replace(((((d.layouttypeid_r = tl.id) AND (d.layoutsubtypeid_r = stl.id)))::text || (((d.layouttypeid_v = tl.id) AND (d.layoutsubtypeid_v = stl.id)))::text), 'truefalse'::text, 'recto'::text), 'falsetrue'::text, 'verso'::text) AS rectoverso,
    tf.id AS tfid,
    tf.name AS tfname,
    stgf.id AS stgfid,
    stgf.name AS stgfname,
    stf.id AS stfid,
    stf.name AS stfname,
    replace(stf.subtypedesc, (('<b>Subtype: '::text || (stf.name)::text) || '</b>'::text), (((('<b>Subtype: <a href=&quot;stgrpdesc.jsp?formalsubtype='::text || stf.id) || '&quot; title=&quot;view long subtype description&quot;>'::text) || (stf.name)::text) || '</a></b>'::text)) AS stfdesc,
    tl.name AS tlname,
    stl.name AS stlname,
    d.editor,
    c.constellation,
    phr.phraselist
   FROM (((((((public.typo_documents d
     LEFT JOIN public.typo_typesformal tf ON ((d.formtypeid = tf.id)))
     LEFT JOIN public.typo_subtypesformal stf ON ((d.formsubtypeid = stf.id)))
     LEFT JOIN public.typo_subtypegroupsformal stgf ON ((stf.subtypegroupid = stgf.id)))
     LEFT JOIN public.typo_typeslayout tl ON (((d.layouttypeid_r = tl.id) OR (d.layouttypeid_v = tl.id))))
     LEFT JOIN public.typo_subtypeslayout stl ON ((((d.layoutsubtypeid_r = stl.id) AND (d.layouttypeid_r = tl.id)) OR ((d.layoutsubtypeid_v = stl.id) AND (d.layouttypeid_v = tl.id)))))
     LEFT JOIN ( SELECT q.apd_layoutid,
            (('<ul style="border:1px solid black"><li>'::text || string_agg(((q.tbname)::text || q.tplist), '</li><li>'::text ORDER BY q.tbname)) || '</li></ul>'::text) AS constellation
           FROM ( SELECT e.apd_layoutid,
                    tb.name AS tbname,
                    (('<ul><li>'::text || string_agg(DISTINCT (tp.name)::text, '</li><li>'::text ORDER BY (tp.name)::text)) || '</li></ul>'::text) AS tplist
                   FROM ((public.typo_etiunitstranslit e
                     JOIN public.typo_textparts tp ON ((e.textpartid = tp.id)))
                     JOIN public.typo_textblocks tb ON ((tp.textblockid = tb.id)))
                  GROUP BY e.apd_layoutid, tb.name) q
          GROUP BY q.apd_layoutid) c ON ((d.apd_layoutid = c.apd_layoutid)))
     LEFT JOIN ( SELECT ph1.layoutid,
            (((('<input name="phr_'::text || ph1.layoutid) || '" type="button" value="'::text) || string_agg((((((ph1.nameshort)::text || '" title="'::text) || (ph1.name)::text) || '" onclick="location.href=''phraseresults.jsp?phrid='::text) || ph1.id), (('''"> <input name="phr_'::text || ph1.layoutid) || '" type="button" value="'::text) ORDER BY ph1.textposmin, ph1.morphposmin)) || '''">'::text) AS phraselist
           FROM ( SELECT e.apd_layoutid AS layoutid,
                    min(e.apd_textpos) AS textposmin,
                    min(e.apd_morphunitid) AS morphposmin,
                    ph.id,
                    ph.name,
                        CASE
                            WHEN (length((ph.name)::text) > 50) THEN ((substr((ph.name)::text, 1, 50) || '...'::text))::character varying
                            ELSE ph.name
                        END AS nameshort
                   FROM (public.typo_etiunitstranslit e
                     JOIN public.typo_phrases ph ON ((ph.id = e.phraseid)))
                  WHERE (e.phraseid IS NOT NULL)
                  GROUP BY e.apd_layoutid, ph.id
                  ORDER BY min(e.apd_textpos), min(e.apd_morphunitpos)) ph1
          GROUP BY ph1.layoutid) phr ON ((phr.layoutid = d.apd_layoutid)))
UNION
 SELECT DISTINCT p.id AS apd_papid,
    NULL::integer AS apd_layoutid,
    p.longname AS apd_longname,
    NULL::text AS rectoverso,
    tf.id AS tfid,
    tf.name AS tfname,
    stgf.id AS stgfid,
    stgf.name AS stgfname,
    stf.id AS stfid,
    stf.name AS stfname,
    replace(stf.subtypedesc, (('<b>Subtype: '::text || (stf.name)::text) || '</b>'::text), (((('<b>Subtype: <a href=&quot;stgrpdesc.jsp?formalsubtype='::text || stf.id) || '&quot; title=&quot;view long subtype description&quot;>'::text) || (stf.name)::text) || '</a></b>'::text)) AS stfdesc,
    NULL::text AS tlname,
    NULL::text AS stlname,
    NULL::text AS editor,
    NULL::text AS constellation,
    NULL::text AS phraselist
   FROM ((((public.papyri p
     LEFT JOIN public.typo_documents d ON ((p.id = (d.apd_papid)::numeric)))
     JOIN public.typo_subtypesformal stf ON ((stf.id = p.formsubtypeid)))
     JOIN public.typo_typesformal tf ON ((tf.id = stf.formtypeid)))
     JOIN public.typo_subtypegroupsformal stgf ON ((stgf.id = stf.subtypegroupid)))
  WHERE ((p.formsubtypeid IS NOT NULL) AND (d.apd_papid IS NULL));


--
-- Name: lines update_lines; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE update_lines AS
    ON UPDATE TO public.lines DO  INSERT INTO public.proto_lines (kind, lineid, layoutid, old_pos, new_pos, old_text, new_text, old_dotlesstext, new_dotlesstext, old_linename, new_linename, old_linerefs, new_linerefs)
  VALUES ('update'::character varying, old.id, old.layoutid, old.pos, new.pos, old.text, new.text, old.dotlesstext, new.dotlesstext, old.linename, new.linename, old.linerefs, new.linerefs);


--
-- Name: words update_words; Type: RULE; Schema: public; Owner: postgres
--

CREATE RULE update_words AS
    ON UPDATE TO public.words DO  INSERT INTO public.proto_words (kind, wordid, lineid, old_linebreak, new_linebreak, old_string, new_string, old_pos, new_pos)
  VALUES ('update'::character varying, new.id, new.lineid, old.linebreak, new.linebreak, old.string, new.string, old.pos, new.pos);


--
-- Name: fk_edunits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.edunits
    ADD CONSTRAINT fk_edunits FOREIGN KEY (wordid) REFERENCES public.words(id) ON DELETE CASCADE;


--
-- Name: fk_morphunits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.morphunits
    ADD CONSTRAINT fk_morphunits FOREIGN KEY (phonunitid) REFERENCES public.phonunits(id) ON DELETE CASCADE;


--
-- Name: fk_phonunits; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phonunits
    ADD CONSTRAINT fk_phonunits FOREIGN KEY (edunitid) REFERENCES public.edunits(id) ON DELETE CASCADE;


--
-- Name: fk_words; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.words
    ADD CONSTRAINT fk_words FOREIGN KEY (lineid) REFERENCES public.lines(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE paleo_documents; Type: ACL; Schema: public; Owner: em
--

REVOKE ALL ON TABLE public.paleo_documents FROM PUBLIC;
REVOKE ALL ON TABLE public.paleo_documents FROM em;
GRANT ALL ON TABLE public.paleo_documents TO em;
GRANT SELECT ON TABLE public.paleo_documents TO ls;


--
-- Name: TABLE paleo_searchimages; Type: ACL; Schema: public; Owner: em
--

REVOKE ALL ON TABLE public.paleo_searchimages FROM PUBLIC;
REVOKE ALL ON TABLE public.paleo_searchimages FROM em;
GRANT ALL ON TABLE public.paleo_searchimages TO em;
GRANT SELECT ON TABLE public.paleo_searchimages TO ls;


--
-- PostgreSQL database dump complete
--

