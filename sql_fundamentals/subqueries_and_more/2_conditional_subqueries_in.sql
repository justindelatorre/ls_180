-- https://launchschool.com/exercises/27c2fd91

SELECT name AS "Bid on Items"
  FROM items
  WHERE id IN (SELECT DISTINCT item_id
                 FROM bids); 
