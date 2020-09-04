-- https://launchschool.com/exercises/f3a523f5

DROP TABLE IF EXISTS parts;
DROP TABLE IF EXISTS devices;

CREATE TABLE devices (
  id serial PRIMARY KEY,
  name text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE parts (
  id serial PRIMARY KEY,
  part_number integer UNIQUE NOT NULL,
  device_id integer REFERENCES devices (id)
);
