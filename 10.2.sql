/*
10.2 Modify the previous example so that it only returns orders
of at least 100 items, and sort the results from largest order to
smallest.
*/
SELECT order_num, SUM(quantity)
FROM OrderItems
GROUP BY order_num
HAVING SUM(quantity) > 100
ORDER BY SUM(quantity) DESC;