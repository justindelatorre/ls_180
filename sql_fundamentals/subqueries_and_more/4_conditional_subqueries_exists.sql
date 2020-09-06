-- https://launchschool.com/exercises/5693e86b

SELECT name
  FROM bidders
  WHERE EXISTS
    (SELECT 1
       FROM bids
       WHERE bids.bidder_id = bidders.id);
