SELECT 
    ShipName,
    ShipAddress,
    ShipCity,
    ShipRegion,
    ShipPostalCode
    ShipCountry,
    customers.CustomerID,
    CompanyName As CustomerName,
    Address,
    City,
    Region,
    PostalCode,
    Country,
    concat((Select FirstName, LastName from employees)) AS Salesperson,
    OrderID,
    OrderDate,
    RequiredDate,
    ShippedDate,
    ShipperName,
    ProductID,
    ProductName,
    UnitPrice,
    Quantity,
    Discount,
    (SELECT Orderdetails.UnitPrice * Orderdetails.Quantity * (1 - Orderdetails.Discount) as Total,
    Freight
    from orders, customers, employees, shippers products, orderdetails orders.OrderID = orderdetails.OrderID
	inner join products on orderdetails.ProductID = products.ProductID;