SELECT 
    CategoryName,
    (SELECT 
            ProductName
        FROM
            Products
        WHERE
            (Categories.CategoryID = Products.CategoryID)
        ORDER BY Products.UnitPrice
        LIMIT 1) AS CheapestProduct,
    MIN(UnitPrice) AS MinCategoryPrice
FROM
    (northwind_cc.Products
    JOIN northwind_cc.Categories ON (Categories.CategoryID = Products.CategoryID))
GROUP BY CategoryName
ORDER BY CategoryName;