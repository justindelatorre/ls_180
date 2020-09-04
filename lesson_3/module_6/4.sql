/*
 * Write a query that determines what percentage of the customers in the
 * database have purchased a ticket to one or more of the events.
 */

SELECT COUNT(DISTINCT t.customer_id)
       / COUNT(DISTINCT c.id)::float * 100
       AS percent
  FROM customers AS c
  LEFT JOIN tickets AS t
    ON t.customer_id = c.id;
