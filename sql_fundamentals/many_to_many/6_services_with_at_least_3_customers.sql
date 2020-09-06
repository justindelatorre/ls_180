-- https://launchschool.com/exercises/17df598b

SELECT s.description, COUNT(cs.customer_id)
  FROM services AS s
  INNER JOIN customers_services AS cs
    ON cs.service_id = s.id
  GROUP BY s.description
  HAVING COUNT(cs.customer_id) >= 3
  ORDER BY COUNT(cs.customer_id);
