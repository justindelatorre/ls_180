/*
 * Use SQL to determine the average, minimum, and maximum wingspan for the birds
 * shown in the table.
 */

SELECT
  round(avg(wingspan), 1) AS "Average Wingspan",
  min(wingspan) AS "Minimum Wingspan",
  max(wingspan) AS "Maximum Wingspan"
FROM birds;
