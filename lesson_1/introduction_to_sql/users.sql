CREATE TABLE users (
  id serial PRIMARY KEY,
  full_name varchar(100),
  enabled boolean DEFAULT true,
  last_login date DEFAULT now()
);

INSERT INTO users (id, full_name, enabled) VALUES
  (1, 'John Smith', false),
  (2, 'Alice Walker', true),
  (3, 'Harry Potter', true),
  (4, 'Jane Smith', true);
