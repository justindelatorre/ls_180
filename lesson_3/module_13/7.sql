/*
 * Write a SQL statement that determines how many films each director in the
 * database has directed. Sort the results by number of films (greatest first)
 * and then name (in alphabetical order).
 */

SELECT d.name,
       COUNT(fd.film_id)
  FROM directors AS d
  INNER JOIN films_directors AS fd
    ON fd.director_id = d.id
  GROUP BY d.name
  ORDER BY COUNT(fd.film_id);
