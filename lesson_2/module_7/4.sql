/*
 * Write the SQL statements needed to add two additional columns to the films
 * table: director, which will hold a director's full name, and duration, which
 * will hold the length of the film in minutes.
 */

ALTER TABLE films
  ADD COLUMN director varchar(255);

ALTER TABLE films
  ADD COLUMN duration integer;
