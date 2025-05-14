--CREATE DATABASE 

IF NOT EXISTS (SELECT * FROM SYS.DATABASES WHERE NAME = 'AREYENG_FLIGHTS')
	BEGIN
	PRINT ('CREATING DATABASE.........')
		CREATE DATABASE AREYENG_FLIGHTS
			ON PRIMARY(
				NAME =AREYENG_DATA,
				FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\data.mdf',
				SIZE=10MB,
				MAXSIZE=100MB,
				FILEGROWTH=5MB
				)

			LOG ON(
			NAME=AREYENG_LOG,
			FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\data_log.ldf',
			SIZE=5MB,
			MAXSIZE=50MB,
			FILEGROWTH=1MB

			)
		PRINT ('.........DATABASE CREATED')
		 
 
END
GO

USE AREYENG_FLIGHTS;
GO

--CREATE CUSTOMER TABLE 


IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE NAME = 'Customers')
	BEGIN
	PRINT ('CREATING CUSTOMER TABLE...... ')
		CREATE TABLE Customers (
		idNum VARCHAR(13) primary key check (len(idNum)=13),
		email VARCHAR (100) NOT NULL,
		phone VARCHAR (15) NOT NULL,
		fName VARCHAR (56) NOT NULL,
		lName VARCHAR (56) NOT NULL,
		postalAddress VARCHAR (255) NOT NULL,
		status VARCHAR(15) CHECK (status IN ('Registered', 'Not Registered')), 
		CONSTRAINT  CK_ValidEmail CHECK  (email LIKE '%@%.%'),
		age INT

		);
	PRINT('........CUSTOMER TABLE COMPLETE')


	PRINT('INSERTING CUSTOMER DATA')
INSERT INTO Customers 
VALUES 
('0516865999098', 'jbishop@gmail.com','7717962779', 'Julie', 'Carlson', '71843 Stephen Drive Apt. 346', 'Registered', 32),
('9657369796867', 'jackie27@green.com', '8548779597', 'Madison', 'Calderon', '1407 Williams Dam', 'Registered', 28),
('4460787830904', 'mcdanielashley@hardin.com', '8011107998', 'Kathryn', 'Carroll', '589 Price Run', 'Registered', 45),
('6784114208650', 'hendersonlisa@hensley-mccoy.info', '6903052520', 'Dennis', 'Green', '1626 Brian Village Apt. 726', 'Registered', 19),
('7380288047255', 'leelarry@hernandez.com', '7233660024', 'Ellen', 'Cooper', '37750 Burgess Cape Suite 438', 'Registered', 52),
('2912521713165', 'elliottstephanie@brown-lowery.com', '6713675294', 'James', 'Long', '1570 Christopher Divide', 'Registered', 37),
('2214824729802', 'ryancasey@edwards-key.info', '9498141336', 'Dawn', 'Martin', '31194 Joseph Branch Apt. 054', 'Registered', 41),
('7875983092830', 'xperez@reilly.biz', '1601057192', 'Mary', 'Reed', '69333 Perez Garden', 'Registered', 24),
('8609972786284', 'phyllis50@hotmail.com', '1014764984', 'Robert', 'Sheppard', '3754 Christopher Meadow Apt. 805', 'Registered', 58),
('3196717083901', 'juaningram@mejia.com', '6071943225', 'Nicholas', 'Lewis', '543 Foster Place', 'Registered', 22),
('5765354201497', 'dicksonsamantha@mills-baker.com', '9531364915', 'Brenda', 'Humphrey', '61825 Matthew Via', 'Registered', 33),
('6198896388759', 'smithkimberly@hernandez.info', '7013112801', 'Tammy', 'Long', '97381 Simon Mill Suite 953', 'Registered', 47),
('3748433426529', 'gpeters@yahoo.com', '8201247533', 'Beth', 'Wolfe', '540 Spears Plains Apt. 535', 'Registered', 29),
('6245325444295', 'zanderson@yahoo.com', '3115477459', 'Robert', 'Jones', '259 Cathy Greens Suite 024', 'Registered', 61),
('5835877405598', 'anne62@mcneil.net', '1134132704', 'Todd', 'Poole', '7570 Eric Brook Apt. 257', 'Registered', 18),
('5856839215385', 'keithemma@smith-bowen.com', '0753329850', 'William', 'Cervantes', '30323 Walters Fields Suite 203', 'Registered', 42),
('4364997202799', 'jlee@gray-wolf.com', '7547913960', 'Jenny', 'Stone', '3400 Eric Plains Suite 160', 'Registered', 27),
('2622878737694', 'curtisanthony@sanders.com', '9210969123', 'Colleen', 'Phelps', '809 Brennan Terrace Apt. 067', 'Registered', 38),
('2216244214073', 'brandon73@jones.com', '7523026753', 'Jeremy', 'Woods', '7768 Herman Via Apt. 431', 'Registered', 31),
('1719212484383', 'amanda72@wheeler-smith.com', '8176039797', 'Belinda', 'Sims', '1983 Howell Shoals', 'Registered', 53),
('5769874363963', 'walkerpeter@gmail.com', '4062604720', 'Justin', 'Smith', '69017 Rich Dale', 'Registered', 25),
('7675037187941', 'daniel28@yahoo.com', '3728867320', 'Jessica', 'Case', '76227 Karen Ranch', 'Registered', 44),
('0475670994482', 'collinsjuan@cordova.com', '0780427278', 'Kimberly', 'Heath', '21656 Daniel Glen', 'Registered', 36),
('3467685880139', 'jphillips@davis.com', '7497016599', 'Randy', 'Cook', '7583 Jose Underpass', 'Registered', 49),
('2908515817426', 'xrobertson@rodgers.info', '7973017855', 'Sarah', 'Odom', '9689 Jillian Camp Suite 079', 'Registered', 21),
('7900936133151', 'aaronguzman@gmail.com', '9601410043', 'Christopher', 'Blevins', '4916 Mark Union', 'Registered', 15),
('2596419695058', 'hhowell@steele.com', '1750367245', 'Christopher', 'Morgan', '5262 Patricia Groves Apt. 857', 'Registered', 50),
('3646152022727', 'daycrystal@gmail.com', '8905669415', 'Natalie', 'Coleman', '208 Farley Fort Apt. 322', 'Registered', 34),
('1971704552194', 'bradleybeverly@blanchard.com', '0878872591', 'Sara', 'Barker', '79343 Brooks Port', 'Registered', 40),
('2966381985603', 'mbenson@hotmail.com', '3412709723', 'Francis', 'Howe', '6101 Flynn Fields', 'Registered', 55),
('1027673090887', 'mcleansamantha@gmail.com', '6074133790', 'Sarah', 'Frank', '8568 Barnes Neck Suite 043', 'Registered', 23),
('6050071411441', 'csutton@hotmail.com', '0538437507', 'Ryan', 'Walter', '045 Smith Circles', 'Registered', 17),
('7758660975609', 'williambest@salazar-patrick.com', '0027428446', 'Christopher', 'Martin', '0227 Anderson Prairie', 'Registered', 48),
('5877566009620', 'robertothomas@perry.com', '3636214937', 'Melissa', 'Bishop', '5534 Hatfield Fords Apt. 012', 'Registered', 39),
('2141206145405', 'christopher58@fletcher.com', '3943071387', 'Brittany', 'Meyers', '1801 Nguyen Ramp Suite 461', 'Registered', 20),
('6762966950288', 'kirbychristopher@hotmail.com', '4732958191', 'Kevin', 'Lang', '5624 Robert Spurs', 'Registered', 51),
('9973610940473', 'analyons@miller.com', '6115252755', 'Krista', 'Fisher', '3897 Lawrence Isle Suite 597', 'Registered', 43),
('4428433110335', 'eclark@yahoo.com', '3390060634', 'Robert', 'Tucker', '564 Powell Point', 'Registered', 30),
('9653691042685', 'khayes@parker.com', '1265192517', 'Marvin', 'Vargas', '84693 Richard Extensions', 'Registered', 62),
('1938475628406', 'swansonjesus@boyer.com', '9282458960', 'Erin', 'Foster', '1211 Chase Vista Apt. 912', 'Registered', 26),
('2947385698204', 'dustinjackson@hotmail.com', '4627439270', 'Haley', 'Norton', '151 Latoya Dam Apt. 372', 'Registered', 35),
('3847263584703', 'gary41@yahoo.com', '6340303924', 'Michelle', 'Trujillo', '817 Anna Divide', 'Registered', 57),
('4430205697426', 'wendy26@yahoo.com', '2041490685', 'Destiny', 'Choi', '9281 Pham Manor', 'Registered', 16),
('3847593847508', 'leonardangela@clark.info', '1747898097', 'Stacy', 'Turner', '9270 William Springs', 'Registered', 46),
('4758293847510', 'floresscott@golden-davis.com', '8472987290', 'Ronald', 'Schmidt', '39745 Rivera Vista', 'Registered', 54),
('5374638463901', 'kfreeman@garza-davis.com', '4192191709', 'Brad', 'Anderson', '28365 Cathy Parkways Suite 404', 'Registered', 63),
('7485963746507', 'erik30@newton.info', '1836953521', 'Angela', 'George', '77170 Stacy Gardens Suite 017', 'Registered', 14),
('9274637493809', 'richardrussell@ballard.com', '8180178535', 'Brooke', 'Harris', '04567 Susan Inlet', 'Registered', 65),
('9372538564702', 'kristine81@burns.com', '2917232468', 'Kimberly', 'Olson', '921 Wendy Mews', 'Registered', 60),
('1938475628407', 'zholt@dalton.info', '9542284669', 'Patricia', 'Lopez', '3131 Costa Knolls', 'Registered', 59),
('2947385698205', 'jennifergill@nelson.biz', '7928849897', 'Linda', 'Black', '242 Love Row Apt. 459', 'Registered', 64),
('3847263584704', 'martinezvalerie@gmail.com', '5640011793', 'Michael', 'Howard', '77162 Louis Shore', 'Registered', 56),
('3847593847509', 'anthonymarshall@wallace-sanders.info', '7549844526', 'Stephen', 'Washington', '7130 Yates Ford', 'Registered', 13),
('4758293847511', 'elizabethperkins@hotmail.com', '2546047372', 'Heather', 'Martin', '78157 Arnold Spurs Apt. 931', 'Registered', 12),
('8463749364705','mathomes@gmail.com','374836483','Mathew','Homes','99 Candy Land Ave','Registered',66);
END
GO
--CREATE FLIGHTS TABLE 

IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE NAME = 'Flights')
		BEGIN
		PRINT ('CREATING FLIGHTS TABLE...... ')
			CREATE TABLE Flights (
			flight_ID INT IDENTITY(7,7) PRIMARY KEY,
			flight_num VARCHAR(10) ,
			flight_name varchar(50),
			capacity INT NOT NULL,
			class INT CHECK (class IN (1, 2, 3)),
			Availability INT CHECK (Availability >= 0),
			depart_date DATE NOT NULL,
			depart_time VARCHAR(10),
			arrival_time VARCHAR(10),
			depart_point VARCHAR(255) NOT NULL,
			destination VARCHAR(255) NOT NULL,
			price DECIMAL (10,2)

		);
	PRINT('........FLIGHTS TABLE COMPLETE')
	PRINT('INSERTING FLIGHTS DATA')


INSERT INTO Flights
VALUES
 
('ARY345', 'Areyeng Cape Town', 120, 3, 54, '2023-10-24', '07:30', '09:15', 'Gqeberha', 'Cape Town', 749.99),
('ARY783', 'Areyeng Johannesburg', 150, 2, 67, '2024-01-01', '06:00', '07:15', 'Cape Town', 'Johannesburg', 799.99),
('ARY767', 'Areyeng Cape Town', 180, 3, 81, '2023-12-01', '08:00', '10:30', 'Johannesburg', 'Cape Town', 819.50),
('ARY4758', 'Areyeng Upington', 200, 2, 90, '2023-12-10', '09:30', '12:45', 'Nelspruit', 'Upington', 850.00),
('ARY123', 'Areyeng Durban', 160, 2, 72, '2023-12-02', '10:15', '13:15', 'Cape Town', 'Durban', 779.99),
('ARY849', 'Areyeng Port Elizabeth', 140, 3, 63, '2023-12-03', '11:00', '13:45', 'Durban', 'Port Elizabeth', 760.75),
('ARY645', 'Areyeng Bloemfontein', 110, 1, 49, '2023-12-04', '12:30', '14:30', 'Port Elizabeth', 'Bloemfontein', 725.00),
('ARY378', 'Areyeng Pretoria', 190, 2, 85, '2023-12-05', '13:45', '17:15', 'Bloemfontein', 'Pretoria', 810.00),
('ARY345', 'Areyeng East London', 130, 3, 58, '2023-12-06', '14:15', '16:45', 'Pretoria', 'East London', 740.99),
('ARY374', 'Areyeng Kimberley', 170, 1, 76, '2023-12-07', '15:30', '18:30', 'East London', 'Kimberley', 820.00),
('ARY007', 'Areyeng Polokwane', 100, 2, 45, '2023-12-08', '16:00', '18:30', 'Kimberley', 'Polokwane', 710.00),
('ARY738', 'Areyeng Nelspruit', 150, 3, 67, '2023-12-09', '17:15', '19:45', 'Polokwane', 'Nelspruit', 795.00),
('ARY956', 'Areyeng Cape Town', 140, 1, 63, '2023-12-11', '05:45', '08:00', 'Johannesburg', 'Cape Town', 770.00),
('ARY112', 'Areyeng Johannesburg', 170, 3, 102, '2023-12-12', '14:20', '15:35', 'Durban', 'Johannesburg', 810.00),
('ARY404', 'Areyeng Upington', 110, 2, 55, '2023-12-13', '11:10', '14:25', 'Kimberley', 'Upington', 720.50),
('ARY555', 'Areyeng Durban', 190, 1, 85, '2023-12-14', '09:15', '12:15', 'Pretoria', 'Durban', 810.00),
('ARY721', 'Areyeng Port Elizabeth', 130, 2, 71, '2023-12-15', '16:30', '18:15', 'East London', 'Port Elizabeth', 740.00),
('ARY332', 'Areyeng Bloemfontein', 160, 3, 88, '2023-12-16', '07:00', '09:00', 'Polokwane', 'Bloemfontein', 760.00),
('ARY888', 'Areyeng Pretoria', 120, 1, 54, '2023-12-17', '12:45', '16:15', 'Nelspruit', 'Pretoria', 725.00),
('ARY246', 'Areyeng East London', 180, 2, 99, '2023-12-18', '10:30', '13:00', 'Cape Town', 'East London', 799.00),
('ARY579', 'Areyeng Kimberley', 150, 3, 82, '2023-12-19', '13:15', '16:15', 'Port Elizabeth', 'Kimberley', 795.00),
('ARY661', 'Areyeng Polokwane', 200, 1, 90, '2023-12-20', '08:45', '11:15', 'Johannesburg', 'Polokwane', 850.00),
('ARY777', 'Areyeng Nelspruit', 110, 3, 60, '2023-12-21', '17:00', '19:30', 'Durban', 'Nelspruit', 710.00),
('ARY919', 'Areyeng Cape Town', 170, 3, 93, '2023-12-22', '06:30', '08:45', 'Bloemfontein', 'Cape Town', 820.00)

END
GO

-- Create Reservations table
IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE NAME = 'Reservations')
BEGIN
PRINT('CREATING RESERVATIONS TABLE...... ')
    CREATE TABLE Reservations (
        resID INT IDENTITY(16,16) PRIMARY KEY,
        custID VARCHAR(13) FOREIGN KEY REFERENCES Customers(idNum),
        flightNum VARCHAR(10),
        resDate VARCHAR(10) NOT NULL,
        discountType VARCHAR(15) CHECK (discountType IN ('Senior', 'Minor', 'None')),
        paymentOption VARCHAR(255) NOT NULL
		
    );
	PRINT('........RESERVATIONS TABLE COMPLETE')
	PRINT('INSERTING RESERVATIONS DATA')

INSERT INTO Reservations
VALUES
('1938475628406', 'ARY345', '2023-10-24', 'Senior', 'Card'),
('2947385698204', 'ARY783', '2024-01-01', 'Minor', 'Card'),
('3847263584703', 'ARY767', '2023-12-01', 'Minor', 'Cash'),
('3847593847508', 'ARY4758', '2023-12-10', 'Minor', 'Card'),
('4758293847510', 'ARY123', '2023-12-02', 'Minor', 'Card'),
('5374638463901', 'ARY849', '2023-12-03', 'Senior', 'Cash'),
('7485963746507', 'ARY645', '2023-12-04', 'None', 'Card'),
('8463749364705', 'ARY378', '2023-12-05', 'Senior', 'Card'),
('9274637493809', 'ARY345', '2023-12-06', 'Senior', 'Card'),
('9372538564702', 'ARY374', '2023-12-07', 'Senior', 'Cash'),
('1938475628407', 'ARY007', '2023-12-08', 'Senior', 'Card'),
('2947385698205', 'ARY738', '2023-12-09', 'Senior', 'Cash'),
('3847263584704', 'ARY956', '2023-12-11', 'None', 'Card'),
('3847593847509', 'ARY112', '2023-12-12', 'Minor', 'Card'),
('4758293847511', 'ARY404', '2023-12-13', 'Minor', 'Cash'),
('0516865999098', 'ARY345', '2023-10-24', 'None', 'Card'),
('9657369796867', 'ARY783', '2024-01-01', 'Senior', 'Cash'),
('4460787830904', 'ARY767', '2023-12-01', 'Minor', 'Card'),
('6784114208650', 'ARY4758', '2023-12-10', 'None', 'Card'),
('7380288047255', 'ARY123', '2023-12-02', 'Senior', 'Cash'),
('2912521713165', 'ARY849', '2023-12-03', 'None', 'Card'),
('2214824729802', 'ARY645', '2023-12-04', 'Senior', 'Card'),
('7875983092830', 'ARY378', '2023-12-05', 'None', 'Cash'),
('8609972786284', 'ARY345', '2023-12-06', 'Senior', 'Card'),
('3196717083901', 'ARY374', '2023-12-07', 'None', 'Cash')
END
GO
