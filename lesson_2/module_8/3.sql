/*
 * Write a SQL query to list the ten states with the most rows in the people
 * table in descending order.
 */

SELECT state, count(id) AS count_rows
FROM people
GROUP BY state
ORDER BY count_rows DESC
LIMIT 10;
