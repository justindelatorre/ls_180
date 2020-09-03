/*
 * Write a SQL query to determine how profitable each item on the menu is based
 * on the amount of time it takes to prepare. Assume that whoever is preparing
 * the food is being paid $13 an hour. List the most profitable items first.
 * Keep in mind that prep_time is represented in minutes and ingredient_cost and
 * menu_price are in dollars and cents):
 */

SELECT
  item, menu_price, ingredient_cost,
  round(prep_time/60.00 * 13.0, 2) AS labor,
  menu_price - ingredient_cost - round(prep_time/60.0 * 13.0, 2) AS profit
FROM menu_items
ORDER BY profit DESC;
