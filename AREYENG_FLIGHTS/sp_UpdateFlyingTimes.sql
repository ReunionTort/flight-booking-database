CREATE PROCEDURE sp_UpdateFlyingTimes
	@flight_ID INT=NULL,
	@depart_time VARCHAR(10)=NULL


	AS 
		BEGIN
			UPDATE DBO.Flights
			SET dbo.Flights.depart_time =@depart_time
			WHERE dbo.Flights.flight_ID=@flight_ID



	END




--Example Usage 
EXEC sp_UpdateFlyingTimes
@flight_ID=7,
@depart_time='08:00'

SELECT * FROM DBO.Flights where flight_ID =7