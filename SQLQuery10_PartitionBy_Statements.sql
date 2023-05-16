/*
Today's Topic: Partition By
*/

-- We'll see the difference between Partition By and Group By
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial]..EmployeeDemographics
JOIN [SQL Tutorial]..EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT Gender, COUNT(Gender) 
FROM [SQL Tutorial]..EmployeeDemographics
JOIN [SQL Tutorial]..EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY Gender

SELECT Gender, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial]..EmployeeDemographics
JOIN [SQL Tutorial]..EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
GROUP BY normally reduces the number of rows returned by rolling them up and calculating averages or sums for each row.
PARTITION BY does not affect the number of rows returned, but it changes how a window function's result is calculated.
*/
