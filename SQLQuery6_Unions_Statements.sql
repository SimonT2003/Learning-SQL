/*
Today's Topic: Union, Union All
*/

-- Let's create a new table
CREATE TABLE WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50))

-- Insert values in it
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

-- After creating a new table, make sure to do ctrl, shift, r to get rid of the red lines
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID =
		WareHouseEmployeeDemographics.EmployeeID


-- Let's try Union
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT * FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics

-- Let's try Union All
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION All
SELECT * FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID


-- This is not what we want
SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID