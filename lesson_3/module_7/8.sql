/*
 * Create a new table called reviews to store the data shown below. This table
 * should include a primary key and a reference to the products table.
 */

CREATE TABLE reviews (
  id serial PRIMARY KEY,
  product_id integer REFERENCES products (id),
  product varchar(255),
  review text
);
