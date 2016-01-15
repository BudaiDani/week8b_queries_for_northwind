SELECT 
    CategoryName, ProductName, QuantityPerUnit, UnitsInStock
FROM
    (northwind_cc.Categories join
    northwind_cc.Products on Categories.CategoryID = Products.CategoryID)
WHERE
    Discontinued != 0
ORDER BY CategoryName, ProductName;