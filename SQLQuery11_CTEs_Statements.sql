/*
Today's Topic: CTEs (Common Table Expression)
*/

-- "Sub-query"
WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID  = sal.EmployeeID
WHERE Salary > '45000')

SELECT * FROM CTE_Employee

-- CTE does the heavy lifting for us
/*
It is a temporary named result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. 
CTEs are particularly useful when you need to perform complex queries or perform recursive operations.
*/

-- NOTE: You have to put the SELECT Statement after the CTE!!!
