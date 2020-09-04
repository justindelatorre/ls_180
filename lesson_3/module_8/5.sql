/*
 * Write a SQL statement that attempts to insert a duplicate number for a new
 * contact but fails.
 */

INSERT INTO contacts (id, first_name, last_name, number) VALUES
  (6, 'Repeated', 'ID Number', 9999999999);
