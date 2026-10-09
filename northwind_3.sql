select FirstName as 'First Name', DATEDIFF(YEAR,BirthDATE,HireDate) as 'Worker Age At First Day Of Work'  from Employees

select FirstName as 'First Name', DATEPART(month,HireDate) as 'Hiring Month' from Employees

select FirstName as 'First Name' ,DATEADD(month,6,HireDate) as 'Hiring month + 6 Months' from Employees