-- https://launchschool.com/exercises/10291026

SELECT s.description
  FROM customers_services AS cs
  RIGHT JOIN services AS s
    ON s.id = cs.service_id
  WHERE cs.customer_id IS NULL;

