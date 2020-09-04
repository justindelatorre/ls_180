-- https://launchschool.com/exercises/b5ee301a

DELETE FROM devices;
DELETE FROM parts;

INSERT INTO devices (name) VALUES
  ('Accelerometer'),
  ('Gyroscope');

INSERT INTO parts (part_number, device_id) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 2);

INSERT INTO parts (part_number) VALUES
  (9),
  (10),
  (11);
