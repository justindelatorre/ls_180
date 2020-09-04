/*
 * Use psql to insert the data shown in the following table into the database:
 */

INSERT INTO products (name) VALUES
  ('small bolt'),
  ('large bolt');

SELECT *
 FROM products;

INSERT INTO orders (product_id, quantity) VALUES
  (1, 10),
  (1, 25),
  (2, 15);
