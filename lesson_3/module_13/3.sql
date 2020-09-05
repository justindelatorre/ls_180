/*
 * Write a SQL statement to add a uniqueness constraint on the combination of
 * columns book_id and category_id of the books_categories table.
 */

ALTER TABLE books_categories ADD UNIQUE (book_id, category_id);
