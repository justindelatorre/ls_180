-- https://launchschool.com/exercises/afb1aadd

CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);

-- ANSWER: The statement above is an example of DDL.
