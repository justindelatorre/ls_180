CREATE TABLE books (
  id serial,
  title varchar(100) NOT NULL,
  author varchar(100) NOT NULL,
  published_date timestamp NOT NULL,
  isbn char(12),
  PRIMARY KEY (id),
  UNIQUE (isbn)
);

INSERT INTO books (id, title, author, published_date, isbn) VALUES
  (1, 'My First SQL Book', 'Mary Parker', '2012-02-22 12:08:17.320053-03', '981483029127'),
  (2, 'My Second SQL Book', 'John Mayer', '1972-07-03 09:22:45.050088-07', '857300923713'),
  (3, 'My First SQL Book', 'Cary Flint', '2015-10-18 14:05:44.547516-07', '523120967812');
