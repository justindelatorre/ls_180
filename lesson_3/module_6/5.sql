/*
 * Write a query that returns the name of each event and how many tickets were
 * sold for it, in order from most popular to least popular.
 */

SELECT e.name AS name,
  COUNT(t.event_id) AS popularity
  FROM events AS e
  INNER JOIN tickets AS t
    ON e.id = t.event_id
  GROUP BY name
  ORDER BY popularity DESC;
