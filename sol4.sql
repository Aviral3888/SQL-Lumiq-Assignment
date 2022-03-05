SELECT Orders.Product_id, Orders.Order_Day,
Orders.Quantity AS qty, Items.Product_Name
FROM Orders
INNER JOIN Items 
ON Orders.Product_id = Items.Product_id 
WHERE (Orders.Quantity * Items.Price) > 500 
AND YEAR(Orders.Order_Day) = 2020 
ORDER BY qty DESC 
LIMIT 10