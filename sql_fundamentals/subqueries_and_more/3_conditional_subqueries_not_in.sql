-- https://launchschool.com/exercises/0f4f7dac

SELECT name AS "Not Bid On"
  FROM items
  WHERE id NOT IN (SELECT DISTINCT item_id
                 FROM bids); 
