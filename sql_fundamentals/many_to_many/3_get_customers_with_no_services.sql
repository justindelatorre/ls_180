-- https://launchschool.com/exercises/caa6a947

SELECT c.*
  FROM customers AS c
  LEFT JOIN customers_services AS cs
    ON cs.customer_id = c.id
  WHERE cs.customer_id IS NULL;
