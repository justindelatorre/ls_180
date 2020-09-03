CREATE TABLE tools (
  id serial PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  cost decimal(7,2) NOT NULL,
  price decimal(7,2) NOT NULL,
  stock integer NOT NULL,
  discount decimal(7,2) DEFAULT 0,
  comments text
);
