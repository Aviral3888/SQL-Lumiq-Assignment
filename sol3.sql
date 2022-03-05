SELECT Items.Product_id, Inventory.Quantity, 
SUM(Orders.Quantity) as qty_sold, Inventory.Inventory_City 
FROM Items 
INNER JOIN Inventory 
ON Items.Product_id = Inventory.Product_id 
INNER JOIN Orders 
ON Inventory.Product_id = Orders.Product_id 
WHERE Items.Category = "Phones" 
AND Inventory.Inventory_city IN ("Banglore", "Mumbai", "Delhi")
AND Inventory.Quantity > 0 
AND (DATE(Orders.Order_Day) >= DATEADD(week, -2, GETDATE())) 
GROUP BY Orders.Product_id 
HAVING qty_sold >= 3; 