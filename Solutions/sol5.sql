SELECT Orders.Order_id, Orders.Order_Day
FROM Orders 
INNER JOIN Items 
ON Orders.Product_id = Items.Product_id 
WHERE Items.Category = "Book" 
AND YEAR(Orders.Order_Day) = 2021 
AND MONTH(Orders.Order_Day) = 6
GROUP BY Orders,.Order_id
HAVING SUM(Orders.Quantity * Items.Price) < 500 
AND SUM(Orders.quantity) >= 2