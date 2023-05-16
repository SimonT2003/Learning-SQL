/*
Today's Topic: Updating/Deleting Data
*/

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

-- Let's try to update the rows that have NULL
UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012, Gender = 'Female', Age = 31
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 35
WHERE EmployeeID = 1013 -- much faster way by stating EmployeeID instead of FN and LN


-- Let's try to delete a row
DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005
-- You have to be careful when deleting something from a table as you can't reversed the process!!!

-- Here's a trick that can help accidentally deleting something
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1004
-- SELECT Statement can be a great safeguard from accidentally deleting something
