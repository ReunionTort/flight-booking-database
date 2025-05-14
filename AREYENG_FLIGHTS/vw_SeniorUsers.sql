CREATE VIEW  vw_SeniorUsers
AS

SELECT idNum AS [ID Number], phone AS Phone, fName AS Name, lName AS Surname, age
FROM     dbo.Customers
WHERE  (age > 55)