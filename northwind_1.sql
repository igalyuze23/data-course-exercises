use Northwind
-- <-- ככה עושים הערה בת שורה אחת
/* <-- ככה עושים הערה בת יותר משורה אחת
בלה בלה בלה --> */

-- query 1 
select FirstName as 'First Name',
		LastName as 'Last Name',
		BirthDate as 'Birth Date',
		FirstName + ' ' + LastName as 'Full Name', 
		getdate () as 'today',
		datepart (YEAR,BirthDate) as  'Birth Year',
		datepart (month,BirthDate) as 'Birth Month', 
		DATEPART(day,BirthDate) as 'birth day',
		datepart(quarter,BirthDate) as 'Birth Quarter',
		DATEADD(month,2,BirthDate) as 'Birth date + 2 months',
		DATEADD(year ,2,birthdate) as 'birth date + 2 years',
		DATEDIFF(YEAR,BirthDate,GETDATE()) as 'age' -- פה ,צריך למלא בפונקציה ,על מנת לקבל את הגילאים - קודם את  התאריך הקטן יותר ,ואז את הגדול אחריו ,כדי לקבל גיל 
from Employees 




-- query 2
select *
 from Employees