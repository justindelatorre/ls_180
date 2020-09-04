/*
 * Write a SQL statement that returns a result like this:
 *  quantity |    name
 * ----------+------------
 *        10 | small bolt
 *        25 | small bolt
 *        15 | large bolt
 * (3 rows)
 */

SELECT o.quantity, p.name
  FROM orders AS o
  INNER JOIN products AS p
    ON p.id = o.product_id;
