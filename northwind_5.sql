use Northwind

select * 

from Customers

where ContactName like '%ab'

select * from Customers

where  ContactName not like '%ab'

 select * 
 from Customers
 where contactName Like '[ab]%'
 
 select * from Customers
 where Country In ('Germany','France')

 select* from Customers
 where Country not in ('Germany' ,'France')

 select * from [Order Details]

 where Quantity = 1 
 
 select * from [Order Details]
 
 where Quantity > 1
 
select * from [Order Details]

where Quantity !=1

select * from [Order Details]

where Quantity  between 1 and 3

select * from [Order Details]

where Quantity %2 = 0

select * from [Order Details]

where Quantity %2 != 0 

select * from Orders 

where OrderDate ='1996-07-04' 

select* from orders 

where OrderDate > '1996-07-04'

SELECT * FROM Orders

WHERE OrderDate > '1996-07-04' AND OrderDate < '1997-07-04'

SELECT * FROM Orders 

WHERE OrderDate >'1996-07-04'  AND OrderDate <'1997-07-04' 

ORDER  BY OrderDate asc

SELECT * FROM Orders 

WHERE OrderDate >'1996-07-04'  AND OrderDate <'1997-07-04' 

ORDER  BY OrderDate DESC

