-- Booking Parameters check
--Description:
--Since multiple parameters are required for the Booking procedure, it made sense to 
--create this SELECT query as a callable function to obtain all parameters needed for
--the inputs in the call of the booking procedure. It may even provide the ticket_id
--for cancellation procedure assuming a unique ticket_ID already exists.

--ticket_ID <= 250 are from the mock data and have been left alone as a means to show 
--the preexisting default status of "UNCONFIRMED" isn't affected on previous tickets by
--confirmation of new tickets.

--when choosing parameters for booking procedure train_id, route_id, and 
--departuredate must align but passenger_ID can be any number between 1 and 250

CREATE OR REPLACE FUNCTION Booking_Param_Check()
RETURNS TABLE (
    passenger_id INTEGER,
    train_id VARCHAR,
    route_id INTEGER,
    departuredate DATE
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.passenger_id,
        sch.train_id,
        sch.route_id,
        sch.departuredate
    FROM 
        public.ticket t
    INNER JOIN public.passenger p ON t.passenger_id = p.passenger_id
    INNER JOIN public.schedule sch ON t.schedule_id = sch.schedule_id
    ORDER BY sch.route_id ASC;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM Booking_Param_Check();
