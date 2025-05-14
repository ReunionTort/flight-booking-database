CREATE VIEW  vw_AffordableFlight
AS

SELECT TOP (3) flight_ID AS [Flight ID], flight_num AS [Flight Number], flight_name AS [Flight Name], price AS Price
FROM     dbo.Flights