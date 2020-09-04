/*
 * Write a query that returns the user id, email address, and number of events
 * for all customers that have purchased tickets to three events.
 */

SELECT c.id AS id, c.email AS email,
  COUNT(DISTINCT t.event_id)
  FROM customers AS c
  INNER JOIN tickets AS t
    ON c.id = t.customer_id
  GROUP BY c.id, c.email
  HAVING COUNT(DISTINCT t.event_id) = 3;
