-- SELECT query 1: Booking Reset Procedure

--Description:
-- This was coded so while we were developing the queries, and for the demonstration,
-- we would be able to place default values and ranges for easier testing purposes.
--For example being able to Delete Ticket_IDs >250 allowed for quick testings without always
--needing to search new passengers when a train exceeded allowable tickets (FULL). 
-- It is understood this would be destructive thing in a real business scenario
--Thus, IT'S USE IS ONLY FOR INITIAL DEVELOPING AND DEMONSTRATION PURPOSES WITH
--MOCK DATA ONLY.


CREATE OR REPLACE PROCEDURE reset_and_show_booking_status()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Resetting demonstration data
    UPDATE schedule
    SET maxtickets = 50, totalseatsbooked = 0, waitingtickets = 0,
        bookingopendate = current_date,
		bookingcloseddate = current_date + 7,
        departuredate = current_date + interval '7 days';
-- Allowing these to be updateable and consistent with todays date are again
--to simplify issues and expedite testing.

-- it is understood the dates would not be allowed to be set with such 
--formulaic consistency in real applications. If that were the case,
--real dates and times would have to be maintained in the DB throughout its use.
    
    DELETE  FROM ticket WHERE ticket_id > 250;
    
  UPDATE ticket
SET bookingstatus = 'UNCONFIRMED',
    bookingdate = current_date + interval '3 days',
	seatnum = 0;
    
    -- The notice to indicate procedure completion
    RAISE NOTICE 'Reset and display operation completed. Please run the SELECT query to view the updated booking status.';
END;
$$;

CALL reset_and_show_booking_status();

SELECT s.route_id, s.schedule_id, s.maxtickets AS "MaxTickets",
       s.totalseatsbooked, s.waitingtickets, t.ticket_id, t.seatnum,
       s.departuredate, t.bookingdate, t.bookingstatus AS "BookingStatus"
FROM schedule s
JOIN ticket t ON s.schedule_id = t.schedule_id
ORDER BY s.schedule_id ASC;
