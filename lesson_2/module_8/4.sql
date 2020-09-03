/*
 * Write a SQL query that lists each domain used in an email address in the
 * people table and how many people in the database have an email address
 * containing that domain. Domains should be listed with the most popular
 * first.
 */

SELECT
  substr(email, strpos(email, '@')) AS domain,
  count(id) AS count_domain_users
FROM people
GROUP BY domain
ORDER BY count_domain_users DESC;
