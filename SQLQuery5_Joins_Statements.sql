/*
Inner Joins, Full/Left/Right Outer Joins
*/

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary


--Let's add some more values into EmployeeDemographics and EmployeeSalary
Insert into [SQL Tutorial].dbo.EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly','Flax',NULL,'Male'),
(1013, 'Darryl', 'Philbin', Null, 'Male')

Insert into [SQL Tutorial].dbo.EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)


--Let's build our query to join these two tables together
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--Let's select a specific column
SELECT EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
-- This will give us an error b/c we didn't specify which EmployeeID we want since both tables have it

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
-- Both ways work!


-- Let's find out who has the highest salary besides Michael
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC


-- Let's calculate the average salary for Salesman
SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

-- Let's calculate the average salary for all available positions
SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AverageSalary DESC
