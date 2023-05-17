/*
Today's Topic: String Functions
- TRIM, LTRIM, RTRIM, Substring, Upper, Lower
*/

-- We will deal with some typo errors in our table
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors


-- Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

-- Using Replace
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

-- Using Substring
SELECT SUBSTRING(FirstName, 1, 3) -- first three letters of the name
FROM EmployeeErrors

SELECT SUBSTRING(FirstName, 3, 3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName, 3, 3)
FROM EmployeeErrors

-- Using UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, SUBSTRING(FirstName, 1, 1) + LOWER(SUBSTRING(FirstName, 2, 1)) + SUBSTRING(FirstName, 3, 50)
FROM EmployeeErrors


