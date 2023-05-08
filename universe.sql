--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(20) NOT NULL,
    alien_type text,
    better_than_humans boolean,
    rating numeric
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_aliens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_aliens_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_aliens_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_million_of_years integer,
    galaxy_type text,
    better_than_milky_way boolean,
    rating integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    moon_type text,
    better_than_themoon boolean,
    rating numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_type text,
    better_than_earth boolean,
    rating numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    star_type text,
    better_than_sun boolean,
    rating numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_aliens_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'saurions', 'evil', false, 1);
INSERT INTO public.aliens VALUES (2, 'mucks', 'chill', false, 7);
INSERT INTO public.aliens VALUES (3, 'longlegs', 'scary', false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', true, 300, 'elliptical', false, 7);
INSERT INTO public.galaxy VALUES (2, 'backward', false, 500, 'elliptical', false, 5);
INSERT INTO public.galaxy VALUES (3, 'blackeye', true, 800, 'backwards', false, 9);
INSERT INTO public.galaxy VALUES (4, 'cartwheel', true, 300, 'spherical', false, 6);
INSERT INTO public.galaxy VALUES (5, 'comet', false, 500, 'rocky', false, 3);
INSERT INTO public.galaxy VALUES (6, 'cigar', true, 440, 'smokey', false, 9);
INSERT INTO public.galaxy VALUES (7, 'eye_of_sauron', true, 980, 'evil', false, 1);
INSERT INTO public.galaxy VALUES (8, 'fireworks', true, 670, 'festive', false, 8);
INSERT INTO public.galaxy VALUES (9, 'milky_way', true, 400, 'awesome', true, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (2, 'one1', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (3, 'one2', true, 'rock', false, 3, 4);
INSERT INTO public.moon VALUES (4, 'two', true, 'rock', false, 3, 5);
INSERT INTO public.moon VALUES (5, 'two1', true, 'rock', false, 3, 5);
INSERT INTO public.moon VALUES (6, 'two2', true, 'rock', false, 3, 6);
INSERT INTO public.moon VALUES (7, 'three1', true, 'rock', false, 3, 7);
INSERT INTO public.moon VALUES (8, 'three2', true, 'rock', false, 3, 8);
INSERT INTO public.moon VALUES (9, 'three3', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (10, 'bu', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (11, 'olo', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (12, 'ogne', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (13, 'tone', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (14, 'pone', true, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (15, 'sne', true, 'rock', false, 3, 5);
INSERT INTO public.moon VALUES (16, 'sone', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (17, 'chone', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (18, 'onel', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (19, 'onle', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (20, 'obne', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (21, 'ocne', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (22, 'trone', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (23, 'ons', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (24, 'ons1', false, 'rock', false, 3, 3);
INSERT INTO public.moon VALUES (25, 'ont', false, 'rock', false, 3, 5);
INSERT INTO public.moon VALUES (26, 'plne', false, 'rock', false, 3, 9);
INSERT INTO public.moon VALUES (27, 'hone', false, 'rock', false, 3, 2);
INSERT INTO public.moon VALUES (28, 'hooney', false, 'rock', false, 3, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'andro', false, 'gasious', false, 4, 1);
INSERT INTO public.planet VALUES (2, 'win', false, 'radioactive', false, 3, 2);
INSERT INTO public.planet VALUES (3, 'redy', false, 'molten', false, 2, 3);
INSERT INTO public.planet VALUES (4, 'ghost', true, 'morphing', false, 6, 4);
INSERT INTO public.planet VALUES (5, 'ninja', true, 'iceous', false, 4, 5);
INSERT INTO public.planet VALUES (6, 'hefty', true, 'terrestial', false, 8, 6);
INSERT INTO public.planet VALUES (7, 'maxy', false, 'barren', false, 3, 6);
INSERT INTO public.planet VALUES (8, 'bacco', true, 'terrestial', false, 7, 7);
INSERT INTO public.planet VALUES (9, 'leaf', true, 'terrestial', false, 6, 7);
INSERT INTO public.planet VALUES (10, 'sauron', true, 'evil', false, 1, 8);
INSERT INTO public.planet VALUES (11, 'Dungenus', true, 'evil', false, 1, 8);
INSERT INTO public.planet VALUES (12, 'helvetica', true, 'evil', false, 2, 8);
INSERT INTO public.planet VALUES (13, 'tnt', true, 'explosive', false, 5, 9);
INSERT INTO public.planet VALUES (14, 'rocket', true, 'terrestial radioactive', false, 6, 9);
INSERT INTO public.planet VALUES (15, 'mars', false, 'terrestial', false, 9, 10);
INSERT INTO public.planet VALUES (16, 'venus', false, 'hotaf', false, 4, 10);
INSERT INTO public.planet VALUES (17, 'pluto', true, 'i mean its pretty big', false, 9, 10);
INSERT INTO public.planet VALUES (18, 'EARTH', true, 'DABEST', true, 10, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'meda', false, 'rgiant', false, 5, 1);
INSERT INTO public.star VALUES (2, 'chester', false, 'bgiant', false, 4, 1);
INSERT INTO public.star VALUES (3, 'bluey', false, 'bgiant', false, 6, 2);
INSERT INTO public.star VALUES (4, 'morphos', true, 'unknown', false, 8, 3);
INSERT INTO public.star VALUES (5, 'shuriken', false, 'supern', false, 5, 4);
INSERT INTO public.star VALUES (6, 'chunkers', true, 'giant', false, 6, 6);
INSERT INTO public.star VALUES (7, 'shop', true, 'giant', false, 9, 6);
INSERT INTO public.star VALUES (8, 'spire', true, 'evil', false, 1, 7);
INSERT INTO public.star VALUES (9, 'redapple', true, 'explosive', false, 6, 8);
INSERT INTO public.star VALUES (10, 'SUN', false, 'DOPE', true, 10, 9);


--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_aliens_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: aliens aliens_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxyid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxyid FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planetid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planetid FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_starid; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_starid FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

