/*
 * Write a SQL query that determines the average duration for each genre in the
 * films table, rounded to the nearest minute. 
 */

SELECT genre, 
  round(avg(duration)) AS "Average Duration"
FROM films
GROUP BY genre;
