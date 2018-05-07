/*
11.2
Using a subquery, list all product names (prod_name) from the
Products table, along with a derived field named quant_sold
containing the total number of this item sold (retrieved by using a
subquery on the OrderItems table).
*/
SELECT prod_name,
			(SELECT SUM(quantity)
			FROM OrderItems
			WHERE OrderItems.prod_id = Products.prod_id) AS quant_sold
FROM Products;