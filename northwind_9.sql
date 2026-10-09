--Q1

SELECT  ContactName as "Coustmer Name" , 
orders.*
 from Orders inner join Customers  on
 orders.CustomerID =Customers.CustomerID 

--Q2

select FirstName + ' ' + LastName as
 "Full Name" from employees where 
 City = 'London' and Region IS null 

 --Q3 
 
 select ContactName as 'Full Name' from   
 Customers AS C LEFT Join Orders as O on
  C.CustomerID = O.CustomerID
  WHERE
  O.OrderID IS NULL
   
--Q4

select DISTINCT CompanyName  AS 'Company Name'

from Suppliers

 inner join Products on Suppliers.supplierID = Products.SupplierID  

where country = 'Germany'

--Q5

select DISTINCT ProductName AS 'Product Name' from Products AS P
inner join [order details] as OD on P.productid = OD.productid 
 
--Q6


select distinct Region  as 'REGION ID' from 
	 Employees WHERE Region IS NOT NULL 

--Q7

SELECT  Distinct CompanyName as 
			'Company Name'
			from Customers
			inner join Orders as O
			on Customers.CustomerID =
			O.CustomerID 
			where Country = 'USA'
