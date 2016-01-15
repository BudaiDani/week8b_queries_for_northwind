SELECT 
    ProductName, UnitPrice
FROM
    northwind_cc.Products
WHERE
    UnitPrice > (SELECT 
            AVG(UnitPrice)
        FROM
            northwind_cc.Products)
ORDER BY UnitPrice;