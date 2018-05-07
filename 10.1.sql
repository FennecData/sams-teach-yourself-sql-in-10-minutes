/*
10.1 Table OrderItems contains the items within each order.
Write a SQL statement that return a list of order numbers
(order_num) and the total quantity of items for each order.
*/
SELECT order_num, SUM(quantity)
FROM OrderItems
GROUP BY order_num;