-- https://launchschool.com/exercises/b543bbc5

SELECT p.part_number, p.device_id
  FROM parts AS p
  LEFT JOIN devices AS d
    ON d.id = p.device_id
  WHERE p.device_id IS NOT NULL;

SELECT p.part_number, p.device_id
  FROM parts AS p
  LEFT JOIN devices AS d
    ON d.id = p.device_id
  WHERE p.device_id IS NULL;
