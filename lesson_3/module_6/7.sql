/*
 * Write a query to print out a report of all tickets purchased by the customer
 * with the email address 'gennaro.rath@mcdermott.co'. The report should include
 * the event name and starts_at and the seat's section name, row, and seat
 * number.
 */

SELECT e.name AS event,
       e.starts_at,
       sec.name AS section,
       seats.row,
       seats.number AS seat
  FROM events AS e
  INNER JOIN tickets AS t
    ON e.id = t.event_id
  INNER JOIN customers AS c
    ON c.id = t.customer_id
  INNER JOIN seats
    ON seats.id = t.seat_id
  INNER JOIN sections AS sec
    ON sec.id = seats.section_id
  WHERE c.email = 'gennaro.rath@mcdermott.co';
