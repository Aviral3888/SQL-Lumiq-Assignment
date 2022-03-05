SELECT COUNT(DISTINCT Orders.Customer_Name), 
SUM(Orders.Quantity) as quant
FROM Orders 
INNER JOIN Items ON Orders.Product_id = Items.Product_id
WHERE Items.Category = "Book" AND Month(Orders.Order_Day) <= 3
AND YEAR(Orders.Order_Day) = 2021
GROUP BY Orders.Customer_id
HAVING quant > 1;
