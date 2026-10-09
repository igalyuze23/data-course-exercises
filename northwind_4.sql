use Northwind

select * from Employees where
 City = 'London'

select * from Employees EmployeesData  where
 City != 'London'

select * from Orders where
 Freight > 700 or Freight < 12

select * from Suppliers where
 CompanyName like 'a%'

SELECT * FROM Customers WHERE 
Country = 'USA' and City like '[agrt]%'

SELECT * FROM [Order Details] 

WHERE ProductID IN (1, 11, 34)

select * from [order details] 
where UnitPrice > 125 and discount = 0 

select * from Orders where
 MONTH(OrderDate) between 7 and 10

 select * from Orders where
 MONTH(OrderDate) % 2 = 1

 select * from Orders where
 YEAR(OrderDate) = 1996 