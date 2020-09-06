-- https://launchschool.com/exercises/cdb829c9

INSERT INTO customers (name, payment_token)
VALUES
  ('John Doe', 'EYODHLCN');

INSERT INTO customers_services (customer_id)
VALUES
  (7, 1),
  (7, 2),
  (7, 3);
