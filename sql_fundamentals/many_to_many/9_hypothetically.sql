-- https://launchschool.com/exercises/07237f00

SELECT sum(price)
  FROM customers AS c
  INNER JOIN customers_services AS cs
    ON cs.customer_id = c.id
  INNER JOIN services AS s
    ON s.id = cs.service_d
  WHERE s.price >= 100.00;

SELECT sum(price)
  FROM customers
  CROSS JOIN services
  WHERE price > 100.00;
