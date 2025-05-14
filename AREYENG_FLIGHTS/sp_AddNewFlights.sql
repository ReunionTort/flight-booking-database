CREATE PROCEDURE sp_AddNewFlights
	@flight_num VARCHAR(10)=NULL,
	@flight_name varchar(50)=NULL,
	@capacity INT =NULL,
	@class INT = NULL,
	@Availability INT =NULL,
	@depart_date DATE=NULL,
	@depart_time VARCHAR(10)=NULL,
	@arrival_time VARCHAR(10)=NULL,
	@depart_point VARCHAR(255)=NULL,
	@destination VARCHAR(255)=NULL,
	@price DECIMAL(10,2)=NULL
	AS 
		BEGIN
			INSERT INTO dbo.Flights
			VALUES
			(
			@flight_num,
			@flight_name,
			@capacity,
			@class,
			@Availability,
			@depart_date,
			@depart_time,
			@arrival_time,
			@depart_point,
			@destination,
			@price
			)

		END

	
--EXAMPLE USAGE

EXEC sp_AddNewFlights

			@flight_num	='ARY345',
			@flight_name='Areyeng Botswana',
			@capacity=150,
			@class=1,
			@Availability=50,
			@depart_date='2025-05-27',
			@depart_time='14:00',
			@arrival_time='16:54',
			@depart_point='Johannesburg',
			@destination='Botswana',
			@price=768.99

 

EXEC sp_AddNewFlights
    @flight_num = 'ARY999',
    @flight_name = 'Areyeng Johannesburg',
    @capacity = 180,
    @class = 3,
    @Availability = 15,
    @depart_date = '2023-12-25',
    @depart_time = '08:00',
    @arrival_time = '10:30',
    @depart_point = 'Cape Town',
    @destination = 'Johannesburg',
    @price = 899.99;

	select * from Flights where flight_num ='ARY345'
	select * from Flights where flight_num ='ARY999'