SELECT (
    SELECT (
        1 - (
                SELECT COUNT(Orders.Product_id) 
                FROM Items 
                INNER JOIN Orders ON Items.Product_id = Orders.Product_id
                WHERE Category = "Book" and YEAR(Orders.Order_Day) = 2021
                and MONTH(Orders.Order_Day) = 6
            )
    )
) / (
    SELECT COUNT(Product_id) 
    FROM Items 
    WHERE Category = "Books"
) * 100 AS percentage;