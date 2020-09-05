/*
 * Write a SQL statement that will return the following result:
 *       name        | book_count |                                 book_titles
 * ------------------+------------+-----------------------------------------------------------------------------
 * Biography         |          2 | Einstein: His Life and Universe, Sally Ride: America's First Woman in Space
 * Classics          |          2 | A Tale of Two Cities, Jane Eyre
 * Cookbook          |          1 | Vij's: Elegant and Inspired Indian Cuisine
 * Fantasy           |          1 | Harry Potter
 * Fiction           |          3 | Jane Eyre, Harry Potter, A Tale of Two Cities
 * Nonfiction        |          3 | Sally Ride: America's First Woman in Space, Einstein: His Life and Universe, Vij's: Elegant and Inspired Indian Cuisine
 * Physics           |          1 | Einstein: His Life and Universe
 * South Asia        |          1 | Vij's: Elegant and Inspired Indian Cuisine
 * Space Exploration |          1 | Sally Ride: America's First Woman in Space
 */

SELECT c.name, 
       COUNT(b.id) AS book_count,
       STRING_AGG(b.title, ', ') AS book_titles
  FROM categories AS c
  INNER JOIN books_categories AS bc
    ON bc.category_id = c.id
  INNER JOIN books AS b
    ON b.id = bc.book_id
  GROUP BY c.name
  ORDER BY c.name;
