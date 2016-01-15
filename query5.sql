SELECT 
    YEAR(ShippedDate) AS YearOfIncome,
    CategoryName,
    ProductName,
    UnitsOnOrder AS ProductSales
FROM
    northwind_cc.Orders,
    northwind_cc.Categories,
    northwind_cc.Products
WHERE
    Orders.ShippedDate != 0
ORDER BY ProductName AND ShippedDate; 