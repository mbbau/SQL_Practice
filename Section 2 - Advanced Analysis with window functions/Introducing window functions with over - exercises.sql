/* Exercise 1

Create a query with the following columns:

FirstName and LastName, from the Person.Person table**

JobTitle, from the HumanResources.Employee table**

Rate, from the HumanResources.EmployeePayHistory table**

A derived column called "AverageRate" that returns the average of all values in the "Rate" column, in each row

**All the above tables can be joined on BusinessEntityID

All the tables can be inner joined, and you do not need to apply any criteria.

*/

SELECT 
    B.FirstName,
    B.LastName,
    C.JobTitle,
    A.Rate,
    AverageRate = AVG(A.Rate) OVER()

FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS A
	JOIN AdventureWorks2019.Person.Person AS B
		ON A.BusinessEntityID = B.BusinessEntityID
	JOIN AdventureWorks2019.HumanResources.Employee AS C
		ON A.BusinessEntityID = C.BusinessEntityID

/* Exercise 2


Enhance your query from Exercise 1 by adding a derived column called

"MaximumRate" that returns the largest of all values in the "Rate" column, in each row
*/

SELECT 
    B.FirstName
    ,B.LastName
    ,C.JobTitle
    ,A.Rate
    ,AverageRate = AVG(A.Rate) OVER()
    ,MAximunRate = MAX(A.Rate) OVER()

FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS A
	JOIN AdventureWorks2019.Person.Person AS B
		ON A.BusinessEntityID = B.BusinessEntityID
	JOIN AdventureWorks2019.HumanResources.Employee AS C
		ON A.BusinessEntityID = C.BusinessEntityID

/* Exercise 3


Enhance your query from Exercise 2 by adding a derived column called

"DiffFromAvgRate" that returns the result of the following calculation:

An employees's pay rate, MINUS the average of all values in the "Rate" column.

*/

SELECT 
    B.FirstName
    ,B.LastName
    ,C.JobTitle
    ,A.Rate
    ,AverageRate = AVG(A.Rate) OVER()
    ,MAximunRate = MAX(A.Rate) OVER()
    ,DiffFromAvgRate = A.Rate - AVG(A.Rate) OVER()

FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS A
	JOIN AdventureWorks2019.Person.Person AS B
		ON A.BusinessEntityID = B.BusinessEntityID
	JOIN AdventureWorks2019.HumanResources.Employee AS C
		ON A.BusinessEntityID = C.BusinessEntityID

/* Exercise 4


Enhance your query from Exercise 3 by adding a derived column called

"PercentofMaxRate" that returns the result of the following calculation:

An employees's pay rate, DIVIDED BY the maximum of all values in the "Rate" column, times 100.

*/

SELECT 
    B.FirstName
    ,B.LastName
    ,C.JobTitle
    ,A.Rate
    ,AverageRate = AVG(A.Rate) OVER()
    ,MaximunRate = MAX(A.Rate) OVER()
    ,DiffFromAvgRate = A.Rate - AVG(A.Rate) OVER()
    ,PercentofMaxRate = A.Rate / MAX(A.Rate) OVER()

FROM AdventureWorks2019.HumanResources.EmployeePayHistory AS A
	JOIN AdventureWorks2019.Person.Person AS B
		ON A.BusinessEntityID = B.BusinessEntityID
	JOIN AdventureWorks2019.HumanResources.Employee AS C
		ON A.BusinessEntityID = C.BusinessEntityID