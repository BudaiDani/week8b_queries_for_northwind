SELECT 
    City, CompanyName, ContactName AS Relationship
FROM
    northwind_cc.Suppliers 
UNION SELECT 
    City, CompanyName, ContactName AS Relationship
FROM
    northwind_cc.Customers
ORDER BY City, ContactName;