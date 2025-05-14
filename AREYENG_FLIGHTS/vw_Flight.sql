CREATE VIEW  vw_Flight
AS


SELECT flight_ID AS [Flight ID], flight_name AS [Flight Name], Availability, depart_date AS [Departure Date], depart_time AS [Departure Time], price
FROM     dbo.Flights