/*
Today's Topic: Case Statement
*/

-- Example 1
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

-- Example 2
SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Example 3
SELECT FirstName, LastName, Salary,
CASE
	WHEN Salary < 52200 THEN 'Low Income'
	WHEN Salary BETWEEN 52200 AND 156600 THEN 'Middle Income'
	ELSE 'High Income'
END AS AmericanEconClassSystem
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID



