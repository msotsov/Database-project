--Creating Indexes
CREATE NONCLUSTERED INDEX ix_Venue_Address ON Venue(address)

CREATE NONCLUSTERED INDEX ix_FK_specialrequestId ON Artist(specialRequestId)

CREATE NONCLUSTERED INDEX ix_phoneNo ON Artist(phoneNo)

CREATE NONCLUSTERED INDEX ix_Booking_event ON Booking (eventId);

CREATE NONCLUSTERED INDEX ix_Bookig_status ON Booking (statusId);

CREATE NONCLUSTERED INDEX ix_Bookig_phone ON Booking (phoneNo);

CREATE NONCLUSTERED INDEX ix_Event_venue ON Event (venueId);