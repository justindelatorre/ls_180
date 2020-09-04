/*
 * Write a SQL statement to retrieve the call times, duration, and first name
 * for all calls not made to William Swift.
 */

SELECT "when", duration, first_name
  FROM calls
  INNER JOIN contacts
    ON calls.contact_id = contacts.id
  WHERE contacts.id <> 6;
