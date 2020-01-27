
--Example tasks
--1 booking a ticket
SELECT * FROM Booking
INSERT INTO Client (phoneNo) VALUES (999999999)
INSERT INTO Booking(bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 4,5,2, 999999999)

INSERT INTO Client (phoneNo) VALUES (999999998)
INSERT INTO Booking(bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 4,5,2, 999999998)

	--constraint
		--Function constraint to check the ammount tickets left. Is not what we learned in class
			--Creates function
			CREATE FUNCTION ticketsLeft(@eventid int)
			RETURNS INT
			AS
			BEGIN
			RETURN((SELECT Venue.seats FROM Event LEFT OUTER JOIN Venue ON (Venue.venueId = Event.venueId) WHERE Event.eventId = @eventid)
			-
			( SELECT SUM(Booking.ammountTickets) FROM Booking WHERE Booking.eventId = Booking.eventId))
			END;
			-- Adds fucntion as cosntraint
			ALTER TABLE Booking ADD 
			CONSTRAINT CHK_Booking_CheckTicketsLeft 
			CHECK( Booking.ammountTickets < BIT_SWD03_34.ticketsLeft(Booking.eventId))

			--Check if function constraints works
			select sum(ammountTickets) from Booking where eventId = 2
			INSERT INTO Booking(bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 2,3400,2, 999999998)

			--Drops functions constraint because it sometimes gives error althouhg there are more than enough tickets left
			ALTER TABLE Booking DROP CONSTRAINT CHK_Booking_CheckTicketsLeft
			
--2 Cancelling a ticket booking
DELETE FROM Booking WHERE bookingNo = 4

--3 Changing the number of tickets in a booking

UPDATE Booking SET ammountTickets = 10 WHERE bookingNo= 16

UPDATE Booking SET ammountTickets = 4 WHERE bookingNo= 16

--4 changing the status of booking to sold when tickets are purchased
UPDATE Booking SET statusId = 2 WHERE bookingNo = 14

--5 Removing the unpurchased booking from the database after three days from booking

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES(99, '2019-11-01', 2, 4, 1 ,999999999)
SELECT * FROM Booking WHERE DATEDIFF(DAY, (bookingDate), GETDATE()) > 3
DELETE FROM Booking WHERE DATEDIFF(DAY, (bookingDate), GETDATE()) > 3 AND statusId = 2
SELECT * FROM Booking WHERE DATEDIFF(DAY, (bookingDate), GETDATE()) > 3

--6 Cancelling an event

UPDATE Booking SET statusId = 3 WHERE statusId = 1 AND eventId = 1
UPDATE Booking SET statusId = 5 WHERE statusId = 2 AND eventId = 1

	-- Adjusting constraint
	ALTER TABLE BookingStatus DROP CONSTRAINT CHK_BookingStatus_description
	ALTER TABLE BookingStatus ADD CONSTRAINT CHK_BookingStatus_description CHECK (BookingStatus.description IN ('Paid','Reserverd', 'Cancelled', 'Refunded', 'Cancelled, no refund', 'Cancelled, refund'))

	INSERT INTO BookingStatus (statusId, description) VALUES ( 5, 'Cancelled, no refund')
	UPDATE BookingStatus SET description = 'Cancelled, refund' where statusId = 3

	SELECT * from BookingStatus

--7 Refunding a client in case of a cancelled event

UPDATE Booking SET statusId = 4 WHERE statusId = 3 AND eventId = 1 AND bookingNo = 1
SELECT * from Booking

--Example query
--1 What is Ed Sheeran’s contact email?
INSERT INTO Artist (artistId, email, name, phoneNo, domestic) VALUES
(3, 'Edsheeran@hotmail.com', 'EdSheeran', 4568891153, 'N')

UPDATE Artist SET name = 'Ed Sheeran' WHERE artistId = 3

UPDATE Artist SET email = LOWER(email)

SELECT email FROM Artist WHERE name LIKE ('%sheeran')

--2. What dance performances are coming up next month?
INSERT INTO Event (eventId, eventType, venueId, price, eventDate, eventName) VALUES
(11, 'Dance', 1, 20, '2020-01-02', 'Old School dancing'),
(12, 'Theater', 2, 50, '2020-01-31', 'Dark nights'),
(13, 'Dance', 1, 15, '2020-01-28', 'Modern dance')

SELECT * FROM Event WHERE eventDate BETWEEN '2020-01-01' AND '2020-01-31' 
AND eventType = 'Dance'

--3. What concerts are coming up this month?
SELECT * FROM Event WHERE eventDate BETWEEN '2019-12-01' AND '2019-12-31' AND eventType='Concert' ORDER BY eventDate

--4. When will Saara Aalto perform in Cardiff and what are her special requests for catering?

INSERT INTO Artist (artistId, email, name, phoneNo, specialRequestId, domestic) VALUES
(9, 'saaraaalto@hotmail.com', 'Saara Aalto', 4045526969, 1, 'Y')

INSERT INTO Artist_Event (artistId, eventId) VALUES
(9, 10)

SELECT eventDate, eventType, eventName, Artist.name, Special_Request.description FROM Event
JOIN Artist_Event ON (Artist_Event.eventId = Event.eventId)
JOIN Artist ON (Artist.artistId = Artist_Event.artistId)
JOIN Special_Request ON (Special_Request.specialRequestId = Artist.specialRequestId)
WHERE Artist.name LIKE 'Saara%' AND Artist.name LIKE '%Aalto'

--5. How many tickets have been sold to Riverdance's dance performance ''Riverdance 2020" that takes place on 10.7.2020?

INSERT INTO Event ( eventId, eventType, venueId, price, eventDate, eventName) VALUES
(14, 'Dance', 1, 13.50, '2020-07-10', 'Riverdance 2020')

	--Inserting new clients and new bookings foir the event
		INSERT INTO Client(phoneNo) VALUES
		(10000000001),
		(10000000002),
		(10000000003),
		(10000000004),
		(10000000005),
		(10000000006),
		(10000000007),
		(10000000008),
		(10000000009)

		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,5,2, 10000000001)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,1,2, 10000000002)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,8,2, 10000000003)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,2,2, 10000000004)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,4,2, 10000000005)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,9,2, 10000000006)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,2,2, 10000000007)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,3,2, 10000000008)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 14,4,2, 10000000009)

		select * from booking

SELECT sum(ammountTickets) AS 'Tickets sold' FROM Booking WHERE eventId = 14


--6. How many tickets are there left for ZZ Top's4 concert on 22.1.2020?
INSERT INTO Event ( eventId, eventType, venueId, price, eventDate, eventName) VALUES
(15, 'Concert', 1, 13.50, '2020-01-22', ' ZZ Top''s 4 ')

		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,5,2, 10000000001)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,1,2, 10000000002)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,8,2, 10000000003)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,2,2, 10000000004)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,4,2, 10000000005)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,9,2, 10000000006)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,2,2, 10000000007)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,3,2, 10000000008)
		INSERT INTO Booking( bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES
		((SELECT MAX(bookingNo) FROM Booking) + 1, GETDATE(), 15,4,2, 10000000009)




SELECT   Venue.seats - sum(Booking.ammountTickets) AS 'Tickets left' from Event 
JOIN Venue on (Venue.venueId = Event.venueId)
JOIN Booking on (Booking.eventId = Event.eventId)
WHERE Event.eventId = 15
GROUP BY Venue.seats


--7. How much money has the Cardiff Festival Association got from sold tickets this year?
SELECT sum(Booking.ammountTickets * Event.price)  as 'Money made this year'  from Booking 
JOIN Event ON (Event.eventId = Booking.eventId) 
where statusId = 2 AND YEAR(Booking.bookingDate) = 2019

SELECT YEAR(Booking.bookingDate), Booking.ammountTickets, Event.price from Booking 
JOIN Event ON (Event.eventId = Booking.eventId) 
where statusId = 2 AND YEAR(Booking.bookingDate) = 2019


--8. Which artist has sold the highest number of tickets this year. Please notice that the artist can have performed several times this year. All the artist's performances count here.
SELECT YEAR(Booking.bookingDate), Booking.ammountTickets, Event.price, from Booking 
JOIN Event ON (Event.eventId = Booking.eventId) 
where statusId = 2 AND YEAR(Booking.bookingDate) = 2019

SELECT Artist

	--Currently works and shows all of the sales from all of the artists
		SELECT Artist.name, sum(Booking.ammountTickets * Event.price) AS MoneyMade  from Artist_Event
		 JOIN Booking ON (Booking.eventId = Artist_Event.eventId)
		 JOIN Event ON (Event.eventId = Artist_Event.eventId)
		 JOIN Artist ON (Artist.artistId = Artist_Event.artistId)
		 where statusId = 2 AND YEAR(Booking.bookingDate) = 2019
		 group by Artist.name

  and Artist.artistId IN (SELECT sum(Booking.ammountTickets * Event.price) AS 'Money made'  from Artist_Event
 JOIN Booking ON (Booking.eventId = Artist_Event.eventId)
 JOIN Event ON (Event.eventId = Artist_Event.eventId)
 JOIN Artist ON (Artist.artistId = Artist_Event.artistId))

group by Artist.name


 AND Artist.artistId IN 




SELECT name, MAX(MoneyMade) AS 'Max salary' FROM (
SELECT artist.name, sum(Booking.ammountTickets * Event.price) AS MoneyMade  from Artist_Event
 JOIN Booking ON (Booking.eventId = Artist_Event.eventId)
 JOIN Event ON (Event.eventId = Artist_Event.eventId)
 JOIN Artist ON (Artist.artistId = Artist_Event.artistId)
 GROUP BY Artist.name
 ) AS TempTable
 GROUP BY TempTable.name



 group by Artist.name