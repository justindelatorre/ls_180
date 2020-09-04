-- https://launchschool.com/exercises/d6c0b76d

SELECT d.name, COUNT(p.id) AS parts_count
  FROM devices AS d
  INNER JOIN parts AS p
    ON p.device_id = d.id
  GROUP BY name;
