DROP TABLE products;

CREATE TABLE products (
  id serial PRIMARY KEY,
  product_name varchar(100) NOT NULL,
  supplier_name varchar(100),
  cost decimal(6,2) NOT NULL DEFAULT 0,
  price decimal(6,2) NOT NULL DEFAULT 0,
  stock integer NOT NULL DEFAULT 0
);
