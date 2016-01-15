SELECT 
    OrderDetails.OrderID,
    Products.ProductName,
    OrderDetails.ProductID,
    OrderDetails.UnitPrice,
    OrderDetails.Quantity,
    OrderDetails.Discount,
    (SELECT (OrderDetails.UnitPrice * OrderDetails.Quantity * (1 - OrderDetails.Discount)/100)*100) AS Total
FROM
    northwind_cc.OrderDetails 
        INNER JOIN
    northwind_cc.ProductsON OrderDetails.ProductID = Products.ProductID
ORDER BY OrderDetails.OrderID AND OrderDetails.ProductID;

