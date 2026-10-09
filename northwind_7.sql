
		select  MAX(p.UnitPrice) as  'Max Price' ,

		Min(p.UnitPrice) as ' Min Price' ,

		Round(AVG(p.UnitPrice), 2) as 'Average Price' 

		 from products as p 
		 select count (p.UnitPrice) as 'Products With A Price Counter' 
		 from Products as p

		 select max(OD.UnitPrice * OD.QUANTITY)

		 as 'Max Revenue' from [Order Details] as OD

		 select c.Country ,count(c.customerid) as 'Countries With Customers'
		  From Customers as C 
		  group by c.Country 