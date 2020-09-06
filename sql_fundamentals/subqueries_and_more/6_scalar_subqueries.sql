-- https://launchschool.com/exercises/c0cbdaab

SELECT name,
  (SELECT COUNT(item_id)
     FROM bids
    WHERE item_id = items.id)
 FROM items;
