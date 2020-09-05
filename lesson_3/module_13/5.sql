/*
 * Write a SQL statement that will return the following result:
 *            title           |         name
 * ---------------------------+----------------------
 * 12 Angry Men              | Sidney Lumet
 * 1984                      | Michael Anderson
 * Casablanca                | Michael Curtiz
 * Die Hard                  | John McTiernan
 * Let the Right One In      | Michael Anderson
 * The Birdcage              | Mike Nichols
 * The Conversation          | Francis Ford Coppola
 * The Godfather             | Francis Ford Coppola
 * Tinker Tailor Soldier Spy | Tomas Alfredson
 * Wayne's World             | Penelope Spheeris
 * (10 rows)
 */

SELECT title, name
  FROM films AS f
  INNER JOIN films_directors AS fd
    ON fd.film_id = f.id
  INNER JOIN directors AS d
    ON d.id = fd.director_id
  ORDER BY title;
