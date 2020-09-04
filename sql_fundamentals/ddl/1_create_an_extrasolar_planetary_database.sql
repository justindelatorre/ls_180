-- https://launchschool.com/exercises/b0efff09

DROP DATABASE IF EXISTS extrasolar;
CREATE DATABASE extrasolar;

DROP TABLE IF EXISTS stars;
CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0)
);

DROP TABLE IF EXISTS planets;
CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1),
  mass integer
);
