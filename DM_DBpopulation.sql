
---CreateClient data
insert into Client (phoneNo) values (3688449294) ;

insert into Client (phoneNo) values (2664742731) ;
insert into Client (phoneNo) values (9154442916) ;
insert into Client (phoneNo) values (743157676) ;
insert into Client (phoneNo) values (6635937464) ;
insert into Client (phoneNo) values (4998699498) ;
insert into Client (phoneNo) values (5888114379) ;
insert into Client (phoneNo) values (3839268746) ;
insert into Client (phoneNo) values (3825197934) ;
insert into Client (phoneNo) values (6942131982) ;
insert into Client (phoneNo) values (2588418599) ;
insert into Client (phoneNo) values (952661271) ;
insert into Client (phoneNo) values (934499498) ;
insert into Client (phoneNo) values (564385235) ;
insert into Client (phoneNo) values (5612544859) ;
insert into Client (phoneNo) values (3684614496) ;
insert into Client (phoneNo) values (5262844883) ;
insert into Client (phoneNo) values (423453358) ;
insert into Client (phoneNo) values (5765666693) ;
insert into Client (phoneNo) values (2141226382) ;
insert into Client (phoneNo) values (344947331) ;
insert into Client (phoneNo) values (5972574923) ;
insert into Client (phoneNo) values (3771739672) ;
insert into Client (phoneNo) values (433763235) ;
insert into Client (phoneNo) values (164275688) ;
insert into Client (phoneNo) values (6654128792) ;
insert into Client (phoneNo) values (87351641) ;
insert into Client (phoneNo) values (232861626) ;
insert into Client (phoneNo) values (2921755549) ;
insert into Client (phoneNo) values (973657368) ;
insert into Client (phoneNo) values (6686832957) ;
insert into Client (phoneNo) values (5735922219) ;
insert into Client (phoneNo) values (3688454998) ;
insert into Client (phoneNo) values (9725622283) ;
insert into Client (phoneNo) values (811193332) ;
insert into Client (phoneNo) values (995676623) ;
insert into Client (phoneNo) values (734917321) ;
insert into Client (phoneNo) values (498244834) ;
insert into Client (phoneNo) values (47356685) ;
insert into Client (phoneNo) values (1353825567) ;
insert into Client (phoneNo) values (715672956) ;
insert into Client (phoneNo) values (561576842) ;
insert into Client (phoneNo) values (3546743336) ;
insert into Client (phoneNo) values (3588876974) ;
insert into Client (phoneNo) values (8276463845) ;
insert into Client (phoneNo) values (5181252) ;
insert into Client (phoneNo) values (679215889) ;
insert into Client (phoneNo) values (547217697) ;
insert into Client (phoneNo) values (4427371272) ;
insert into Client (phoneNo) values (2332617195) ;

--Venue
insert into Venue(venueId, seats, name, address) values(1,25, 'small hall', 'ratapihantie 13')


insert into Venue(venueId, seats, name, address) values(2,35, 'large hall', 'bighallstreet 5')

--Special_Request

insert into Special_Request (specialRequestId, description) values(1,'Towels after show')

insert into Special_Request (specialRequestId, description) values(2,'no red candy')

insert into Special_Request (specialRequestId, description) values(3,'bottled water available')

insert into Special_Request (specialRequestId, description) values(4,'green walls in the dressingroom')

insert into Special_Request (specialRequestId, description) values(5,'hamburgers without pickels')


--BookingStatus
insert into BookingStatus (statusId, description) values(1,'Paid')

insert into BookingStatus (statusId, description) values(2,'Reserverd')

insert into BookingStatus (statusId, description) values(3,'Cancelled')

insert into BookingStatus (statusId, description) values(4,'Refunded')

--Artist

insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (1, 'Eléa', 'Eléa@hotmail.com', 1554955472, 1, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (2, 'Françoise', 'Françoise@hotmail.com', 294578246, 5, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (3, 'Yóu', 'Yóu@hotmail.com', 35172396, 1, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (4, 'Loïs', 'Loïs@hotmail.com', 9725699128, 3, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (5, 'Mélia', 'Mélia@hotmail.com', 7212754863, 3, 'N');
insert into Artist (artistId, name, email, phoneNo, domestic) values (6, 'Lóng', 'Lóng@hotmail.com', 213131626, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (7, 'Bécassine', 'Bécassine@hotmail.com', 889993456, 5, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (8, 'Chloé', 'Chloé@hotmail.com', 3529225851, 5, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (9, 'Maëlla', 'Maëlla@hotmail.com', 2583612, 4, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (10, 'Mahélie', 'Mahélie@hotmail.com', 84228966, 1, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (11, 'Béatrice', 'Béatrice@hotmail.com', 2817594736, 3, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (12, 'Audréanne', 'Audréanne@hotmail.com', 2654787624, 3, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (13, 'Lorène', 'Lorène@hotmail.com', 539223955, 5, 'N');
insert into Artist (artistId, name, email, phoneNo,  domestic) values (14, 'Méthode', 'Méthode@hotmail.com', 7963583845, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (15, 'Maëlyss', 'Maëlyss@hotmail.com', 9551879558, 2, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (16, 'Renée', 'Renée@hotmail.com', 5892713777, 2, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (17, 'Mélinda', 'Mélinda@hotmail.com', 2581896876, 5, 'Y');
insert into Artist (artistId, name, email, phoneNo, domestic) values (18, 'Annotés', 'Annotés@hotmail.com', 455225892, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (19, 'Noémie', 'Noémie@hotmail.com', 73633885, 4, 'Y');
insert into Artist (artistId, name, email, phoneNo, domestic) values (20, 'Hélène', 'Hélène@hotmail.com', 116836933, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (21, 'Laïla', 'Laïla@hotmail.com', 688777825, 3, 'N');
insert into Artist (artistId, name, email, phoneNo, domestic) values (22, 'Bécassine', 'Bécassine@hotmail.com', 6553727663,'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (23, 'Thérèse', 'Thérèse@hotmail.com', 53534714, 4, 'N');
insert into Artist (artistId, name, email, phoneNo, domestic) values (24, 'Pénélope', 'Pénélope@hotmail.com', 399992599,  'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (25, 'Görel', 'Görel@hotmail.com', 849513322, 4, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (26, 'Laurélie', 'Laurélie@hotmail.com', 26175232, 2, 'Y');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (27, 'Andrée', 'Andrée@hotmail.com', 696922678, 4, 'N');
insert into Artist (artistId, name, email, phoneNo,  domestic) values (28, 'Renée', 'Renée@hotmail.com', 1665414246, 'N');
insert into Artist (artistId, name, email, phoneNo, specialRequestId, domestic) values (29, 'Mahélie', 'Mahélie@hotmail.com', 443752914, 3, 'N');


select * from artist

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (1, 'movie', 'Disney movie night', 1, 20, '2019-12-21')


insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (2, 'Concert', 'Old Rock classics', 2, 50, '2020-01-21')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (3, 'Dance', 'Arabian dances', 1, 15, '2019-12-28')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (4, 'movie', 'Pixar movie night', 1, 14, '2019-12-23')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (5, 'Concert', '90 throwback', 2, 40, '2019-12-27')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (6, 'Theater', 'Jungle book', 1, 35, '2020-04-10')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (7, 'Dance', 'Dutch dances', 1, 26, '2020-02-18')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (8, 'movie', 'Horror movie night', 1, 10, '2020-02-01')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (9, 'Concert', 'top 2000', 2, 45, '2019-12-30')

insert into Event (eventId, eventType, eventName, venueId, price, eventDate) values (10, 'Concert', 'New years party', 2, 40, '2019-12-31')


INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(1, 1)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(4, 2)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(8, 3)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(6, 5)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(16, 5)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(18, 5)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(21, 1)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(22, 2)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(25, 3)

INSERT INTO Artist_Special_Request (artistId, specialRequestId) VALUES
(29, 4)



INSERT INTO Artist_Event (artistId, eventId) values (1,1)

INSERT INTO Artist_Event (artistId, eventId) values (2,2)

INSERT INTO Artist_Event (artistId, eventId) values (6,2)

INSERT INTO Artist_Event (artistId, eventId) values (4,2)

INSERT INTO Artist_Event (artistId, eventId) values (11,4)

INSERT INTO Artist_Event (artistId, eventId) values (12,7)

INSERT INTO Artist_Event (artistId, eventId) values (15,9)

INSERT INTO Artist_Event (artistId, eventId) values (18,9)

INSERT INTO Artist_Event (artistId, eventId) values (20,1)

INSERT INTO Artist_Event (artistId, eventId) values (21,4)

INSERT INTO Artist_Event (artistId, eventId) values (22,5)

--not done

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (1,'2019-12-03', 1, 5, 1, 1353825567)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (2,'2019-12-02',2,10, 2, 1642705688)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (3,'2019-12-03', 1, 1,2, 2141226382)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (4,'2019-12-03', 3, 3, 3, 2328601626)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (5, '2019-12-03', 4, 5, 4, 2332617195)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (6,'2019-12-03', 5, 1, 1, 2588418599)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (7, '2019-12-03', 6, 2, 2, 2664742731)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (8, '2019-12-03', 7, 1, 2, 2921755549)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (9, '2019-12-03', 8, 2, 1, 3449470331)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (10, '2019-12-03', 9, 5, 2, 3546743336)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (11, '2019-12-03', 10, 6, 1, 3588876974)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (12, '2019-12-03', 1, 2, 2, 3684614496)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (13, '2019-12-03', 2, 4, 3, 3688449294)

INSERT INTO Booking (bookingNo, bookingDate, eventId, ammountTickets, statusId, phoneNo) VALUES (14, '2019-12-03', 3, 4, 1, 3688454998)
