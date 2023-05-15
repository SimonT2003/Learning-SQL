/*
Select Statment
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT * -- select everything
FROM EmployeeDemographics

SELECT FirstName
FROM EmployeeDemographics

SELECT FirstName, LastName
FROM EmployeeDemographics

SELECT TOP 5 *
FROM EmployeeDemographics

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount --'AS' names the column
FROM EmployeeDemographics



SELECT *
FROM EmployeeSalary

SELECT MAX(Salary) AS Max_Salary
FROM EmployeeSalary

SELECT MIN(Salary) AS Min_Salary
FROM EmployeeSalary

SELECT AVG(Salary) AS AVG_Salary
FROM EmployeeSalary



SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary -- this is a great way to access any table from a different database
