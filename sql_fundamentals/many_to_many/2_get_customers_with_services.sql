-- https://launchschool.com/exercises/82f5c8cb

SELECT DISTINCT c.*
  FROM customers AS c
  INNER JOIN customers_services AS cs
    ON cs.customer_id = c.id;
