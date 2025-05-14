CREATE PROCEDURE sp_DeleteTicket
@resID int=NULL
AS 
BEGIN

DELETE FROM DBO.Reservations WHERE DBO.Reservations.resID =@resID

END 


SELECT * FROM Reservations 


--Example usage
EXEC sp_DeleteTicket
@resID=16