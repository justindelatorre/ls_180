/*
 * Write a SQL query that will return the following data:
 *    genre   | total_duration
 * -----------+----------------
 *  horror    |            113
 *  thriller  |            113
 *  action    |            132
 *  crime     |            175
 *  drama     |            198
 *  espionage |            245
 *  comedy    |            407
 *  scifi     |            632
 */

SELECT genre,
  sum(duration) AS total_duration
FROM films
GROUP BY genre
ORDER BY total_duration ASC, genre ASC;
