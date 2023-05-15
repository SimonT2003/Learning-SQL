/*
Where statement
=, <>, <, >, And, Or, Like, NUll, Not Null, In
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'  -- '<>' means not equal

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM EmployeeDemographics
WHERE Age < 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 And Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 Or Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'  -- '%' is a wildcard; this is asking for every last name starting with the letter 's'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'  -- this asking for every last name that has the letter 's'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'  -- this asking for every last name starting with the letter 's' and has 'o' in it

SELECT *
FROM EmployeeDemographics
WHERE FirstName is Null

SELECT *
FROM EmployeeDemographics
WHERE FirstName is Not Null

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')