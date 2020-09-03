/*
 * Write 3 SQL queries that can be used to retrieve the second row of the table
 * shown in #1 and #2.
 */

SELECT *
FROM people
WHERE age = 26;

SELECT *
FROM people
LIMIT 1
OFFSET 1;
