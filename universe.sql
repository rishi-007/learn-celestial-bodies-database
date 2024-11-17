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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    g_diameter_in_light_years integer,
    g_radius_in_light_years integer,
    g_description text,
    g_age_in_billion_years numeric(4,2),
    g_has_life boolean,
    g_is_spherical boolean
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
    m_diameter_in_miles integer,
    m_radius_in_miles integer,
    m_description text,
    m_age_in_billion_years numeric(4,2),
    m_has_life boolean,
    m_is_spherical boolean,
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
    p_diameter_in_miles integer,
    p_radius_in_miles integer,
    p_description text,
    p_age_in_billion_years numeric(4,2),
    p_has_life boolean,
    p_is_spherical boolean,
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
    s_diameter_in_miles integer,
    s_radius_in_miles integer,
    s_description text,
    s_age_in_billion_years numeric(4,2),
    s_has_life boolean,
    s_is_spherical boolean,
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
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying(40) NOT NULL,
    sy_diameter_in_light_years integer,
    sy_radius_in_light_years integer,
    sy_description text,
    sy_age_in_billion_years numeric(4,2),
    sy_has_life boolean,
    sy_is_spherical boolean
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_system_id_seq OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.system_system_id_seq OWNED BY public.system.system_id;


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
-- Name: system system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system ALTER COLUMN system_id SET DEFAULT nextval('public.system_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 105700, 52850, 'A galaxy that looks like pure milk', 13.61, true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 105700, 52850, 'A galaxy nearest to the milky way', 10.01, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 30000, 'Third nearest galaxy in the local group', 10.00, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'sombrero', 50000, 25000, 'A galaxy rich with gobular clusters', 13.25, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 60000, 30000, 'A galaxy with super active nucleus', 0.40, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 120000, 60000, 'A elliptical galaxy in Virgo constellation', 13.24, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2160, 1080, 'Earths only natural satellite.', 4.50, false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 14, 7, 'One of Mars moons, known for its irregular shape.', 4.40, false, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 8, 4, 'The smaller moon of Mars, also irregularly shaped.', 4.40, false, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 2260, 1130, 'One of Jupiter moons, known for its volcanic activity.', 4.50, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1960, 980, 'Jupiters moon, believed to have a subsurface ocean.', 4.50, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3270, 1635, 'The largest moon in the Solar System, a moon of Jupiter.', 4.50, false, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 3000, 1500, 'One of Jupiters largest moons, heavily cratered.', 4.50, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 3180, 1590, 'Saturns largest moon, known for its thick atmosphere and lakes of liquid methane.', 4.50, false, true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 949, 475, 'A mid-sized moon of Saturn, characterized by its bright icy surface.', 4.50, false, true, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 313, 157, 'A small moon of Saturn, known for its geysers and potential subsurface ocean.', 4.50, false, true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 1700, 850, 'Neptunes largest moon, unique for its retrograde orbit.', 4.50, false, true, 8);
INSERT INTO public.moon VALUES (12, 'Miranda', 236, 118, 'A moon of Uranus, known for its dramatic surface features.', 4.50, false, true, 7);
INSERT INTO public.moon VALUES (13, 'Ariel', 720, 360, 'A moon of Uranus with a mix of ice and rock.', 4.50, false, true, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 555, 278, 'A dark moon of Uranus, known for its heavily cratered surface.', 4.50, false, true, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 761, 381, 'The outermost major moon of Uranus, featuring large craters.', 4.50, false, true, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 981, 491, 'Uranus largest moon, characterized by a diverse surface.', 4.50, false, true, 7);
INSERT INTO public.moon VALUES (17, 'Charon', 754, 377, 'The largest moon of Pluto, almost half its size.', 4.50, false, true, 9);
INSERT INTO public.moon VALUES (18, 'Haumea I', 1000, 500, 'One of the moons of the dwarf planet Haumea.', 4.50, false, true, 10);
INSERT INTO public.moon VALUES (19, 'Haumea II', 700, 350, 'Another moon of Haumea, smaller than the first.', 4.50, false, true, 10);
INSERT INTO public.moon VALUES (20, 'Makemake I', 170, 85, 'A moon of the dwarf planet Makemake.', 4.50, false, true, 11);
INSERT INTO public.moon VALUES (21, 'Makemake II', 100, 50, 'Another small moon of Makemake.', 4.50, false, true, 11);
INSERT INTO public.moon VALUES (22, 'Nix', 40, 20, 'A small moon of Pluto, irregularly shaped.', 4.50, false, true, 9);
INSERT INTO public.moon VALUES (23, 'Hydra', 30, 15, 'Another small moon of Pluto, discovered in 2006.', 4.50, false, true, 9);
INSERT INTO public.moon VALUES (24, 'Phoebe', 130, 65, 'An irregularly shaped moon of Saturn, believed to be a captured object.', 4.50, false, true, 6);
INSERT INTO public.moon VALUES (25, 'Janus', 111, 56, 'A small moon of Saturn, co-orbital with Epimetheus.', 4.50, false, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 3031, 1516, 'The smallest planet in the Solar System, closest to the Sun.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 7521, 3760, 'Earth twin, known for its thick, toxic atmosphere.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 7926, 3963, 'The only known planet to support life.', 4.50, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4212, 2106, 'The Red Planet, known for its potential for past life.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 86881, 43441, 'The largest planet in the Solar System, a gas giant.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 7490, 3745, 'Famous for its stunning ring system.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 3148, 1574, 'An ice giant with a unique tilt, rotates on its side.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 3046, 1523, 'The furthest planet from the Sun, known for its strong winds.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1476, 738, 'Dwarf planet in the Kuiper Belt, once considered the ninth planet.', 4.60, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', 1, 0, 'An exoplanet orbiting Proxima Centauri, in the habitable zone.', 4.80, true, true, 2);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 15, 8, 'An exoplanet in the habitable zone of its star.', 2.00, true, true, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 8, 4, 'An Earth-sized exoplanet in the TRAPPIST-1 system, potentially habitable.', 1.00, true, true, 4);
INSERT INTO public.planet VALUES (13, 'LHS 1140 b', 11, 5, 'A super-Earth exoplanet located in the habitable zone of its star.', 3.00, true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 865370, 432685, 'A massive star in solar system', 4.60, false, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 865000, 430000, 'The closest star to the Sun, part of a three-star system.', 5.00, false, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 650000000, 330000000, 'A red supergiant star in the Orion constellation.', 10.00, false, true, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 160000, 78000, 'The closest known star to the Sun, part of the Alpha Centauri system.', 4.85, false, true, 1);
INSERT INTO public.star VALUES (5, 'Sirius A', 1710000, 860000, 'The brightest star in the night sky, part of a binary system.', 0.20, false, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 1730000, 860000, 'A bright star in the Lyra constellation, known for its blue-white color.', 0.46, false, true, 1);
INSERT INTO public.star VALUES (8, 'M31-135', 800000, 400000, 'A red giant star in the Andromeda Galaxy, part of a star cluster.', 10.00, false, true, 2);
INSERT INTO public.star VALUES (7, 'M31-34', 1200000, 600000, 'A massive star in active star formation region', 5.00, false, true, 2);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'Solar System', 1, 1, 'Our solar system, containing the Sun and its planets.', 4.60, true, false);
INSERT INTO public.system VALUES (2, 'Alpha Centauri System', 5, 3, 'The closest star system to the Solar System, consisting of three stars.', 5.00, false, false);
INSERT INTO public.system VALUES (3, 'Proxima Centauri System', 5, 3, 'Contains Proxima Centauri, the closest known star to the Sun.', 4.85, false, false);
INSERT INTO public.system VALUES (4, 'TRAPPIST-1 System', 1, 1, 'A system with seven Earth-sized planets, located about 40 light-years away.', 1.00, true, false);
INSERT INTO public.system VALUES (5, 'Kepler-22 System', 1, 1, 'Home to the first discovered Earth-sized exoplanet in the habitable zone.', 2.00, true, false);
INSERT INTO public.system VALUES (6, 'LHS 1140 System', 1, 1, 'A nearby system with a super-Earth exoplanet that may have conditions for life.', 3.00, true, false);
INSERT INTO public.system VALUES (7, 'Barnard’s Star System', 6, 3, 'A nearby star system, known for its high proper motion.', 5.00, false, false);
INSERT INTO public.system VALUES (8, 'Sirius System', 9, 5, 'The brightest star system in the night sky, consisting of two stars.', 0.20, false, false);
INSERT INTO public.system VALUES (9, 'Gliese 581 System', 20, 10, 'Known for its potentially habitable exoplanets.', 7.00, true, false);
INSERT INTO public.system VALUES (10, 'NGC 3603 System', 20, 10, 'A star-forming region in the Milky Way, home to a rich cluster of stars.', 2.00, false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_system_id_seq', 10, true);


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
-- Name: system system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_name_key UNIQUE (name);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


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

