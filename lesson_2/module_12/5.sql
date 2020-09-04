/*
 * Write a SQL query that determines the average duration across all the movies
 * in the films table, rounded to the nearest minute.
 */

SELECT round(avg(duration)) AS "Average Duration"
FROM films;
