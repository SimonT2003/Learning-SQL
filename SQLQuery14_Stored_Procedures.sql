/*
Today's Topic: Stored Procedures
*/

-- Basic Stored Procedure
CREATE PROCEDURE TEST
AS
SELECT * FROM EmployeeDemographics

EXEC TEST

-- Complex Stored Procedure
CREATE PROCEDURE Temp_Employee
AS 
CREATE TABLE #temp_employee (
JobTitle varchar(100), EmployeesPerJob int,
AvgAge int, AvgSalary int)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT * FROM #temp_employee

EXEC Temp_Employee
