-- Q1 
	SELECT CustomerID as 'Customer ID ' ,

	 COUNT(O.OrderID) as 'Order Count'
	 	,SUM(O.freight) as 'Total freight' ,
		Min(O.OrderDate) as 
				'First Order Date',
		Max(O.OrderDate) as 'Last Order Date'

				From Orders as O 
				group by CustomerID

-- Q2

select datepart(Quarter ,(O.OrderDate)) as 
				'Quarter' ,
		count(O.OrderID)  as 'Order Count'
				FROM Orders as O 
				group by DATEPART
				(quarter,O.OrderDate )


-- Unrelated , Question From Gemini

select DATEPART(month , O.OrderDate)  AS 
				'Order Month' , 
			count(O.OrderDate) as
					'Order Count'
			from Orders as O 
			group by datepart(MONTH,O.OrderDate)
-- Q3
		select DATEPART(YY , O.ORDERDATE)
		AS 'Order Year' ,
			DATEPART(Q , O.OrderDate)
			as 'Quarter' ,
		count(O.OrderDate)
		AS 'Order Count'
			from Orders as O 
			GROUP BY DATEPART(YY, O.OrderDate) ,
			DATEPART(Q , O.OrderDate)

-- Q4 

		select SupplierID as 
		'Supplier ID ' , COUNT(ProductID)
					as ' Products Counter' 

		 ,
			sum(UnitPrice * UnitsInStock ) 
				as 'Revenue'

		From Products AS P 
		GROUP BY SupplierID

/*
Unrelated Question From Gemini 
Twin Question , To Question 3 (Double Sort by Time)
*/

		select DATEPART(MM ,O.OrderDate)  as 
						'Order Month',
			   DATEPART(YY,O.OrderDate) as 
							'Order Year' ,
			   COUNT(O.OrderDate) as 
								'Order Count'
		from Orders AS O 
						Group by
						DATEPART(mm , O.OrderDate),
						DATEPART(yy ,O.OrderDate)

/*
Unrelated Question From Gemini 
Twin Question , To Question 4 (Calculation and counting
by group)
*/
				select CategoryID ,
				count(P.ProductID)
				as 'Products Counter' ,
				Sum(UnitPrice* UnitsInStock)
				as 'Revenue'

					From  Products as P
					group by CategoryID


/*
Unrelated Question From Gemini 
Twin Question , To Question 4 (Calculation and counting
by group)
*/

				select ProductID AS 
				'Category ID' ,
				count(P.ProductID)
				as 'Count' , 
				round(AVG(UnitPrice),2)
				as 'Price Average'
				from Products as P 
				group by ProductID