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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(40) NOT NULL,
    extra_description text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    star_count integer,
    galaxy_description text,
    black_hole_present boolean,
    mass numeric(100,2)
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
    name character varying(40) NOT NULL,
    age integer,
    submoon_count integer,
    moon_description text,
    atmosphere_present boolean,
    mass numeric(100,2),
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
    name character varying(40) NOT NULL,
    age integer,
    moon_count integer,
    planet_description text,
    atmosphere_present boolean,
    mass numeric(100,2),
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
    name character varying(40) NOT NULL,
    age integer,
    planet_count integer,
    star_description text,
    binary_system boolean,
    mass numeric(100,2),
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'A1', 'super');
INSERT INTO public.extra VALUES (2, 'A2', 'good');
INSERT INTO public.extra VALUES (3, 'A3', 'Okay');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 22000000, 1923921, 'Spiral galaxy in the local group', false, 1500000000000000000000000000000000000000000.00);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 130000000, 2311222, 'Barred spiral galaxy containing the Solar System', false, 198900000000000000000000000000000000000000.00);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 650000000, 23233212, 'Elliptical galaxy with a submassive black hole', true, 65000000000000000000000000000000000000000000.00);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 400000000, 42333210, 'Spiral galaxy in the local group', false, 650000000000000000000000000000000000000000.00);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 120000000, 2982939, 'Barred spiral galaxy', false, 520000000000000000000000000000000000000000.00);
INSERT INTO public.galaxy VALUES (6, 'Large Magennalic Cloud', 200000000, 1234239, 'Irregular galaxy orbitting the milky way', false, 2500000000000000000000000000000000000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 460000000, 0, 'Earth''s only natural satellite', false, 73420000000000000000000.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 450000000, 0, 'Mars''s larger moon', false, 13420000000000000000000.00, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 450000000, 0, 'Mars''s smaller moon', false, 13420000000000000000000.00, 2);
INSERT INTO public.moon VALUES (4, 'Genymede', 450000000, 0, 'Largest moon of Jupiter', true, 13420000000000000000000.00, 3);
INSERT INTO public.moon VALUES (5, 'Callisto', 450000000, 0, '2nd Largest moon of Jupiter', true, 13420000000000000000000.00, 3);
INSERT INTO public.moon VALUES (6, 'Io', 450000000, 0, '3rd Largest moon of Jupiter', true, 13420000000000000000000.00, 3);
INSERT INTO public.moon VALUES (7, 'Europa', 450000000, 0, '4th Largest moon of Jupiter', true, 13420000000000000000000.00, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 450000000, 0, 'Largest moon of Saturn', true, 13420000000000000000000.00, 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 450000000, 0, '6th Largest moon of Saturn', true, 13420000000000000000000.00, 4);
INSERT INTO public.moon VALUES (10, 'Triton', 450000000, 0, 'Largest moon of Neptune', true, 13420000000000000000000.00, 6);
INSERT INTO public.moon VALUES (13, 'Charon', 450000000, 0, 'Largest moon of Pluto', false, 13420000000000000000000.00, 19);
INSERT INTO public.moon VALUES (14, 'MoonA', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (15, 'MoonB', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (16, 'MoonC', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (17, 'MoonD', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (18, 'MoonE', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (19, 'MoonF', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (20, 'MoonG', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (21, 'MoonH', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (22, 'MoonI', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);
INSERT INTO public.moon VALUES (23, 'MoonJ', 450000000, 0, 'Exomoon orbitting kepler-452b', false, 13420000000000000000000.00, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 46000000, 1, '3rd planet from sun', true, 5972000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 46000000, 2, '4th planet from sun', true, 641700000000000000000000.00, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4600000, 79, '5th planet from sun', true, 1898000000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 4600000, 83, '6th planet from sun', true, 568300000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 36000000, 0, '2nd planet from sun', true, 4867000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 46000000, 14, '8th planet from sn
', true, 102400000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (19, 'Mercury', 4600000, 0, 'Closest planet to Sun', true, 330000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (20, 'Uranus', 4600000, 27, 'Seventh planet from Sun', true, 86810000000000000000000000.00, 1);
INSERT INTO public.planet VALUES (21, 'Kepler-452b', 14600000, 0, 'Exoplanet orbiting Kepler-452', true, 34890000000000000000000000.00, 6);
INSERT INTO public.planet VALUES (22, 'HD 209458 b', 12200000, 0, 'Exoplanet known for its atmosphere', true, 227700000000000000000000000.00, 5);
INSERT INTO public.planet VALUES (23, 'Gliese 581 c', 10000000, 0, 'Exoplanet in th ehabitable zone of Gliese 581', true, 59760000000000000000000000.00, 4);
INSERT INTO public.planet VALUES (24, 'WASP-39b', 78000000, 0, 'Exoplanet with a short orbital period', true, 323000000000000000000000000.00, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000, 8, 'Main sequence G-type star', false, 1989000000000000000000000000000.00, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 3200000, 1, 'Closest star system to the solar system', true, 1100000000000000000000000000000.00, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 250000, 2, 'Brigtest star in night sky', false, 2020000000000000000000000000000.00, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 400000, 0, 'Red dwarf star in the alpha centauri system', false, 244700000000000000000000000000.00, 2);
INSERT INTO public.star VALUES (5, 'Betelgese', 800000, 0, 'Red supergiant star in the constellation Orion', false, 14000000000000000000000000000000.00, 1);
INSERT INTO public.star VALUES (6, 'Vega', 6500000, 1, 'Bright star in the contellation Lyra', false, 2650000000000000000000000000000.00, 3);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

