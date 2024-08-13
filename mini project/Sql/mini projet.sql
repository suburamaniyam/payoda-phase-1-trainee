use SENTHILKUMAR;

CREATE TABLE Guests (
    guest_id INT  PRIMARY KEY,
    guest_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(255) UNIQUE,
    nationality VARCHAR(50),
    date_of_birth DATE
);
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Bookings';


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Users';;




SELECT booking_id,total_amount
FROM Bookings
WHERE total_amount > 100;




INSERT INTO Bookings (total_amount)
VALUES (400);

insert into bookings(transaction_id)
values(100);

ALTER TABLE Bookings
ADD transaction_id INT;


SELECT 
    t.transaction_id,
    t.transaction_date,
    t.amount,
    t.payment_method
FROM 
    Transactions t
WHERE 
    t.booking_id =3 ; 

	select * from Transactions;
	SELECT * FROM Bookings WHERE booking_id = 103;
	

ALTER TABLE Bookings
ADD total_amount DECIMAL(10, 2);  


SELECT * FROM Bookings WHERE booking_id = 103;

UPDATE Bookings
SET guest_id = 1,
    room_number = 101,
    check_in_date = '2024-08-01',
    check_out_date = '2024-08-05',
    total_amount = 500
WHERE booking_id = 104;

SET IDENTITY_INSERT Bookings ON;

INSERT INTO Bookings (booking_id, guest_id, room_number, check_in_date, check_out_date, total_amount)
VALUES ( 2, 101, '2024-08-01', '2024-08-05', 500.00);

	insert into bookings (guest_id,room_number,check_in_date, check_out_date)
	values(3,103,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP)
	
	
	update bookings
	set guest_id=2, room_number = 102, check_in_date = CURRENT_TIMESTAMP, check_out_date = CURRENT_TIMESTAMP
	where booking_id=3;

		update bookings
	set guest_id=2, room_number = 103, check_in_date = CURRENT_TIMESTAMP, check_out_date = CURRENT_TIMESTAMP
	where booking_id=4;

	update bookings
	set guest_id=2, room_number = 103, check_in_date = CURRENT_TIMESTAMP, check_out_date = CURRENT_TIMESTAMP
	where booking_id=4;

update bookings
	set guest_id=2, room_number = 103, check_in_date = CURRENT_TIMESTAMP, check_out_date = CURRENT_TIMESTAMP
	where booking_id=3;

	update bookings
	set guest_id=2, room_number = 103, check_in_date = CURRENT_TIMESTAMP, check_out_date = CURRENT_TIMESTAMP
	where booking_id=5;

	select * from bookings;


select * from Guests;

insert into guests(guest_id,guest_name,address,phone_number,email,nationality,date_of_birth)
values(103,'keerthi','coimbatore',235790123,'jon@gmail.com','india','2000-08-12');

update Guests
set address='coimbatore',phone_number=2568910 ,email= 'shibi@gamil.com',nationality ='indin',date_of_birth ='2000_02_23', guest_email='shibi@gamil.com'
where guest_id=5;


select * from Rooms;

insert into rooms(room_number,room_type, rate_per_night)
values (103,'std',500)

insert into rooms(room_number,room_type, rate_per_night)
values (2,'std',500)

INSERT INTO Guests (guest_id, guest_name, address, phone_number, email, nationality, date_of_birth)
VALUES ( 1,'John Doe', 'Coimbatore', '3589543255', 'jone@gmail.com', 'Indian', '2003-08-12');

INSERT INTO Guests (guest_id, guest_name, address, phone_number, email, nationality, date_of_birth)
VALUES (2, 'Jane Smith', 'Coimbatore', '3589543256', 'jane@gmail.com', 'Indian', '1990-12-05');

INSERT INTO Guests (guest_id, guest_name, address, phone_number, email, nationality, date_of_birth)
VALUES (3, 'Emily Davis', 'Coimbatore', '3589543257', 'emily.davis@example.com', 'Indian', '1995-06-15');

INSERT INTO Guests (guest_id, guest_name, address, phone_number, email, nationality, date_of_birth)
VALUES (5, 'Michael Johnson', 'Coimbatore', '3589543258', 'michael.johnson@example.com', 'Indian', '1988-09-25');