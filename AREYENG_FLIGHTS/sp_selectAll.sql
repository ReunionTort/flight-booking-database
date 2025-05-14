CREATE PROCEDURE sp_selectAll
AS
BEGIN

	SELECT * FROM Reservations
	SELECT * FROM Flights
	SELECT * FROM Customers

END


--Example usage
sp_selectAll