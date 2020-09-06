-- https://launchschool.com/exercises/6676e2ac

SELECT SUM(s.price) AS gross
  FROM customers AS c
  INNER JOIN customers_services AS cs
    ON cs.customer_id = c.id
  INNER JOIN services AS s
    ON s.id = cs.service_id;
