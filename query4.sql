SELECT 
    OrderID,
    SUM(((UnitPrice * Quantity) * (1 - Discount) / 100) FROM Orderdetails)) AS OrderTotal
FROM
    northwind_cc.Orderdetails
GROUP BY OrderID
ORDER BY OrderID;