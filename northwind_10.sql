use Northwind

--Q1

Select FirstName + ' ' + LastName as "FullName",
					OrderID from Employees
 Inner Join  Orders on Employees.EmployeeID = Orders.EmployeeID 

--Q2

select FirstName + ' ' + LastName as " FullName", 
 Year(OrderDate) as "Order Year" ,
 Month(OrderDate) AS "Order Month",
DATEPART(QUARTER,OrderDate) as "Order Quarter"
 FROM Employees
 Inner Join Orders
  On  Employees.EmployeeID = Orders.EmployeeID 
 where Employees.EmployeeID IN (1,2,7,9)

 --Q3

select  FirstName + ' ' + LastName as " FullName",
CompanyName as "Company Name " ,
ProductName  as "Product Name ",
[Order Details].UnitPrice * Quantity as "Revenue" 
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
inner join Orders on [Order Details].OrderID = Orders.OrderID
inner join  Employees on  Employees.EmployeeID = Orders.EmployeeID 
where ProductName LIKE 'c%' 
 AND [Order Details].UnitPrice * Quantity <  34
  OR [Order Details].UnitPrice *Quantity > 600 
 
 --Q4

 
select  FirstName + ' ' + LastName as " Full Name",
ProductName  as "Product Name ",
[Order Details].UnitPrice * Quantity as "Revenue" ,
 [Order Details].UnitPrice as "Unit Price" , 
Quantity  , Orders.OrderID as "Order ID"
FROM Employees
inner join Orders on Employees.EmployeeID = Orders.EmployeeID 
INNER JOIN  [Order Details] ON Orders.OrderID = [Order Details].OrderID
 inner join  Products ON [order details].ProductID = products.ProductID
where month(OrderDate) % 2 = 0 and 
Employees.City != 'London' and [Order Details].UnitPrice = Products.UnitPrice