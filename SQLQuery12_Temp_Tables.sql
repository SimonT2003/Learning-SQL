/*
Today's Topic: Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTtitle varchar(100),
Salary int)

SELECT * FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', 45000)

-- You can also insert the values from another table into the temp table
INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial]..EmployeeSalary


-- This is how I'll use temp table
DROP TABLE IF EXISTS #temp_Employee2 -- great way to re-run again and again
CREATE TABLE #temp_Employee2 (
JobTitle varchar(50), EmployeesPerJob int,
AvgAge int, AvgSalary int)

INSERT INTO #temp_Employee2 
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT * FROM #temp_Employee2