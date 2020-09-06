-- https://launchschool.com/exercises/7ee03247

SELECT c.name,
       STRING_AGG(s.description, ', ') AS services
  FROM customers AS c
  LEFT JOIN customers_services AS cs
    ON cs.customer_id = c.id
  LEFT JOIN services AS s
    ON s.id = cs.service_id
  GROUP BY c.name;
