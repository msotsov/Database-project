--Creating the tables
	--created
CREATE TABLE Client(
phoneNo BIGINT NOT NULL
, CONSTRAINT PK_Client PRIMARY KEY (phoneNo)
, CONSTRAINT CHK_Client_phoneLength CHECK(Client.phoneNo BETWEEN  100000000 AND 999999999999) 
)

CREATE TABLE Venue (
	venueId INTEGER NOT NULL,
	seats INTEGER NOT NULL, 
	name VARCHAR(20) NOT NULL,
	address VARCHAR(40) NOT NULL,

	CONSTRAINT PK_Venue PRIMARY KEY (venueId),
);

CREATE TABLE Special_Request (
	specialRequestId INTEGER NOT NULL,
	description VARCHAR(250) NOT NULL,

	CONSTRAINT PK_Special_Request PRIMARY KEY (specialRequestId)
);


CREATE TABLE BookingStatus (
	statusId INTEGER NOT NULL
	, description VARCHAR(20) NOT NULL
	, CONSTRAINT PK_BookingStatus PRIMARY KEY ( statusId)
	, CONSTRAINT CHK_BookingStatus_description CHECK (BookingStatus.description IN ('Paid','Reserverd', 'Cancelled', 'Refunded'))
	)

CREATE TABLE Artist(
	artistId INTEGER NOT NULL
	, email VARCHAR(50) NOT NULL
	, name VARCHAR(50) NOT NULL
	, phoneNo BIGINT NOT NULL
	, specialRequestId INTEGER
	, domestic CHAR(1) NOT NULL
	, CONSTRAINT PK_Artist PRIMARY KEY (artistId)
	, CONSTRAINT CHK_Artist_phoneLength CHECK(Artist.phoneNo BETWEEN  100000000 AND 999999999999)
	, CONSTRAINT CHK_Artist_foregnYN CHECK(Artist.domestic IN ('Y','N'))
	, CONSTRAINT FK_Artist_SpecialRequest FOREIGN KEY (specialRequestId) REFERENCES Special_Request(specialRequestId)
	)

CREATE TABLE Event (
	eventId INTEGER NOT NULL,
	eventType VARCHAR(20) NOT NULL,
	venueId INTEGER NOT NULL,
	price DECIMAL(5,2) NOT NULL,
	eventDate DATE NOT NULL,
	eventName VARCHAR(20) NOT NULL,

	CONSTRAINT PK_Event PRIMARY KEY (eventId),
	CONSTRAINT FK_Event_venue FOREIGN KEY (venueId) REFERENCES Venue (venueId),
)

CREATE TABLE Booking(
	bookingNo INTEGER NOT NULL
	, bookingDate DATE NOT NULL
	, eventId INTEGER NOT NULL
	, ammountTickets INTEGER NOT NULL
	, statusId INTEGER NOT NULL
	, phoneNo BIGINT NOT NULL
	, CONSTRAINT PK_Booking PRIMARY KEY (bookingNo)
	, CONSTRAINT FK_Booking_Event FOREIGN KEY (eventId) REFERENCES Event(eventId)
	, CONSTRAINT FK_Booking_BookingStatus FOREIGN KEY (statusId) REFERENCES BookingStatus(statusId)
	, CONSTRAINT FK_Booking_Client FOREIGN KEY (phoneNo) REFERENCES Client(phoneNo)
	)

CREATE TABLE Artist_Event (
	artistId INTEGER NOT NULL,
	eventId INTEGER NOT NULL,

	CONSTRAINT PK_Artist_Event PRIMARY KEY (artistId, eventId),
	CONSTRAINT FK_Artist_Event_artist FOREIGN KEY (artistId) REFERENCES Artist (artistId),
	CONSTRAINT FK_Artist_Event_event FOREIGN KEY (eventId) REFERENCES Event (eventId)
);

CREATE TABLE Artist_Special_Request (
	artistId INTEGER NOT NULL,
	specialRequestId INTEGER NOT NULL,

	CONSTRAINT PK_Artist_Special_Request PRIMARY KEY (artistId, specialRequestId),
	CONSTRAINT FK_Artist_Special_Request_artist FOREIGN KEY (artistId) REFERENCES Artist (artistId),
	CONSTRAINT FK_Artist_Special_Request_request FOREIGN KEY (specialRequestId) REFERENCES Special_Request (specialRequestId),
)

