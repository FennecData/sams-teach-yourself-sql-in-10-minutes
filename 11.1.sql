/* 11.1 Using a subquery, return a list of customers who bought
items priced 10 or more. You’ll want to use the OrderItems table
to find the matching order numbers (order_num), and then the
Orders table to retrieve the customer id (cust_id) for those
matched orders. */
SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
								 FROM OrderItems
								 WHERE item_price >= 10);