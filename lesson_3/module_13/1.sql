/*
 * Write a SQL statement that will return the following result:
 *  id |     author      |           categories
 * ----+-----------------+--------------------------------
 *   1 | Charles Dickens | Fiction, Classics
 *   2 | J. K. Rowling   | Fiction, Fantasy
 *   3 | Walter Isaacson | Nonfiction, Biography, Physics
 * (3 rows)
 */

SELECT b.id AS id, b.author AS author,
       STRING_AGG(c.name, ', ') AS categories
  FROM books AS b
  INNER JOIN books_categories AS bc
    ON bc.book_id = b.id
  INNER JOIN categories AS c
    ON c.id = bc.category_id
  GROUP BY b.id, b.author
  ORDER BY id;
