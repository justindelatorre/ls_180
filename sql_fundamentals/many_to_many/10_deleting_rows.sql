-- https://launchschool.com/exercises/d0d95d39

DELETE FROM customers_services
       WHERE service_id = 7;

DELETE FROM services
       WHERE description = 'Bulk Email';

DELETE FROM customers
       WHERE name = 'Chen Ke-Hua';
