-- https://launchschool.com/exercises/315eca72

SELECT d.name, COUNT(p.id)
  FROM devices AS d
  INNER JOIN parts AS p
    ON p.device_id = d.id
  GROUP BY d.name
  ORDER BY COUNT(p.id) DESC;
