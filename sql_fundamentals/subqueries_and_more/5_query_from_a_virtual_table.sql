-- https://launchschool.com/exercises/70e83085

SELECT MAX(b.bid_count)
  FROM
    (SELECT bidder_id,
       COUNT(item_id) AS bid_count
      FROM bids
      GROUP BY bidder_id) AS b;
