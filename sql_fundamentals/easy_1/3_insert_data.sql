/*
 * Add five records to this database so that our data looks like:
 *  id |   name   | age | species
 * ----+----------+-----+---------
 *  1 | Charlie  |   3 | Finch
 *  2 | Allie    |   5 | Owl
 *  3 | Jennifer |   3 | Magpie
 *  4 | Jamie    |   4 | Owl
 *  5 | Roy      |   8 | Crow
 * (5 rows)
 */

INSERT INTO birds (id, name, age, species) VALUES
  (1, 'Charlie', 3, 'Finch'),
  (2, 'Allie', 5, 'Owl'),
  (3, 'Jennifer', 3, 'Magpie'),
  (4, 'Jamie', 4, 'Owl'),
  (5, 'Roy', 8, 'Crow')
;

