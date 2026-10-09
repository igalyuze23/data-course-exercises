use Northwind

--Q1

SELECT * FROM orders

--Q2

select FirstName as 'First Name' ,LastName as 'Last Name' from Employees

--Q3

select * from [Order Details]

--Q4

select ProductName as 'Product Name' ,UnitPrice as 'Unit Price' from products

--Q5

select FirstName + ' ' + LastName as 'Full Name' ,BirthDate as 'Birth Date' from Employees

--Q6

select ProductID as 'Product ID' ,UnitPrice as 'Unit Price In USD' ,UnitPrice * 3.12 as 'Unit Price In ILS' from [Order Details]

--Q7

select FirstName + ' ' + LastNAME AS 'Full Name', DATEDIFF(YEAR,BirthDate,GETDATE()) as 'Age' from Employees

--Q8

select OrderDate as 'Order Date', DATEPART(MONTH,OrderDate) AS 'Order Month' , DATEPART(YEAR,OrderDate) as 'Order Year' , DATEPART(Quarter,OrderDate) as 'Order Quarter' from Orders

--Q9

select OrderID as 'Order ID' ,ProductID as 'Product ID' , UnitPrice * Quantity as 'Revenue' from [Order Details]

--Q10

select (UnitPrice * Quantity) * 0.9 as 'Revenue With 10% Discount' , (UnitPrice * Quantity) * 1.1 as 'Revenue With 10% Raise' from [Order Details]

--Q11

select OrderDate as 'Order Date' ,ShippedDate as 'Shipping Date' ,DATEADD(MONTH,3,ShippedDate) as 'Delayed Shipped Date' from Orders 

