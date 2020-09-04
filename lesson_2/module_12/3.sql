/*
 * Write a SQL query that lists all genres for which there is a movie in the
 * films table.
 */

SELECT DISTINCT(genre)
FROM films
WHERE title IS NOT NULL;
