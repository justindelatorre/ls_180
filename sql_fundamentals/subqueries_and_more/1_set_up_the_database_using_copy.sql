-- https://launchschool.com/exercises/505113c2

DELETE FROM bids;
DELETE FROM items;
DELETE FROM bidders;

DROP TABLE IF EXISTS bids;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS bidders;

DROP DATABASE IF EXISTS auction;
CREATE DATABASE auction;

CREATE TABLE bidders (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  initial_price DECIMAL(6,2) NOT NULL CHECK(initial_price BETWEEN 0.01 AND 1000.00),
  sales_price DECIMAL(6,2) CHECK(sales_price BETWEEN 0.01 AND 1000.00)
);

CREATE TABLE bids (
  id SERIAL PRIMARY KEY,
  bidder_id integer NOT NULL REFERENCES bidders(id) ON DELETE CASCADE,
  item_id integer NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  amount DECIMAL(6,2) NOT NULL CHECK(amount BETWEEN 0.01 AND 1000.00)
);

CREATE INDEX ON bids (bidder_id, item_id);

\copy bidders FROM 'bidders.csv' WITH HEADER CSV;

\copy items FROM 'items.csv' WITH HEADER CSV;

\copy bids FROM 'bids.csv' WITH HEADER CSV;
