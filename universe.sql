--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: f; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.f (
    f_id integer NOT NULL,
    name character varying(50) NOT NULL,
    fill text
);


ALTER TABLE public.f OWNER TO freecodecamp;

--
-- Name: f_f_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.f_f_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.f_f_id_seq OWNER TO freecodecamp;

--
-- Name: f_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.f_f_id_seq OWNED BY public.f.f_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type text,
    description text,
    size_in_light_years numeric
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
    name character varying(50),
    planet_id integer NOT NULL,
    distance_from_planet integer,
    size integer
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
    name character varying(50),
    star_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean
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
    name character varying(50),
    star_size numeric,
    galaxy_id integer NOT NULL,
    description text
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
-- Name: f f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.f ALTER COLUMN f_id SET DEFAULT nextval('public.f_f_id_seq'::regclass);


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
-- Data for Name: f; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.f VALUES (1, 'a', 'A');
INSERT INTO public.f VALUES (2, 'b', 'B');
INSERT INTO public.f VALUES (3, 'c', 'C');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky_Way', 'Spiral', 'includes the Solar System', 87400);
INSERT INTO public.galaxy VALUES (2, 'Segue_1', 'shperodial', 'in the Leo constilation', 75000);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius_Dwarf_Spheroidal_Galaxy', 'shperodial', 'it has passed through the plane of the Milky Way several times in the past', 10000);
INSERT INTO public.galaxy VALUES (4, 'Segue_2', 'shperodial', 'Segue 2 is one of the smallest and faintest satellites of the Milky Way', 110);
INSERT INTO public.galaxy VALUES (5, 'Triangulmu_II', 'dwarf', 'one of the dimmest known galaxies.', 110);
INSERT INTO public.galaxy VALUES (6, 'Sculptor_Galaxy', 'spiral', 'one of the brightest galaxies in the sky', 120000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 30, 0);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 20, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 30, 0);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 30, 0);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 30, 0);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 30, 0);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, 30, 0);
INSERT INTO public.moon VALUES (8, 'Io', 5, 30, 0);
INSERT INTO public.moon VALUES (9, 'Europa', 5, 30, 0);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5, 30, 0);
INSERT INTO public.moon VALUES (11, 'Themisto', 5, 30, 0);
INSERT INTO public.moon VALUES (12, 'Leda', 5, 30, 0);
INSERT INTO public.moon VALUES (13, 'Ersa', 5, 30, 0);
INSERT INTO public.moon VALUES (14, 'Himalia', 5, 30, 0);
INSERT INTO public.moon VALUES (15, 'Pandia', 5, 30, 0);
INSERT INTO public.moon VALUES (16, 'Lysithea', 5, 30, 0);
INSERT INTO public.moon VALUES (17, 'Elara', 5, 30, 0);
INSERT INTO public.moon VALUES (18, 'Dia', 5, 30, 0);
INSERT INTO public.moon VALUES (19, 'Carpo', 5, 30, 0);
INSERT INTO public.moon VALUES (20, 'Valetudo', 5, 30, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, false, true);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, true);
INSERT INTO public.planet VALUES (10, 'Pluto', 1, false, true);
INSERT INTO public.planet VALUES (11, 'Ceres', 1, false, true);
INSERT INTO public.planet VALUES (12, 'Haumena', 1, false, true);
INSERT INTO public.planet VALUES (13, 'Makemake', 1, false, true);
INSERT INTO public.planet VALUES (14, 'Eris', 1, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 'The star the earth orbits');
INSERT INTO public.star VALUES (2, 'Proxima_Centauri', 0.14, 1, 'The closest star to the sun');
INSERT INTO public.star VALUES (3, 'Barnard_Star', 0.2, 1, 'A small red dwarf star in the constellation of Ophiuchus');
INSERT INTO public.star VALUES (4, 'Luhman_16', 0.08, 1, 'A binary brown-dwarf system in the southern constellation Vela');
INSERT INTO public.star VALUES (5, 'Wolf_359', 0.1, 1, 'A red dwarf star located in the constellation Leo');
INSERT INTO public.star VALUES (6, 'Sirius', 2, 1, 'The brightest star in the night sky');


--
-- Name: f_f_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.f_f_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: f f_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.f
    ADD CONSTRAINT f_name_key UNIQUE (name);


--
-- Name: f f_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.f
    ADD CONSTRAINT f_pkey PRIMARY KEY (f_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

