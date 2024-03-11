-- SELECT query 1: Ticket_ID via Passenger Name or Phone Number
--Description:
-- This SELECT query is for the scenario of a passenger who needs some information
-- about his/her booking, such as his/her ticket_ID required for cancellation. 
-- It would not be unexpected for foreign passengers to occasionally have 
--some difficulty with spelling their name in english character, or input 
--mistakes during the inital booking by staff.

--the ILIKE operator to narrow down possible names with partial character
--sequences of a name.
-- example for someone named Mirabel Jezard: 
-- p.name ILIKE '%mir%'; will narrow down possible names with mir in them.

-- DROP FUNCTION get_ticket_details_by_name(VARCHAR);

CREATE OR REPLACE FUNCTION get_ticket_details_by_name(partial_name VARCHAR)
RETURNS TABLE (
    ticket_id INTEGER,
    schedule_id INTEGER,
    route_id INTEGER, -- Added route_id to the return table structure
    passenger_id INTEGER,
    passenger_name VARCHAR,
    seatnum INTEGER,
    booking_status VARCHAR,
    departure_date DATE,
    departure_time VARCHAR
) AS $$
BEGIN
    RETURN QUERY 
    SELECT 
        t.ticket_id,
        t.schedule_id,
        s.route_id,
        p.passenger_id,
        p.name,
        t.seatnum,
        t.bookingstatus,
        s.departuredate,
        s.departuretime
    FROM 
        ticket t
    JOIN 
        passenger p ON t.passenger_id = p.passenger_id
    JOIN 
        schedule s ON t.schedule_id = s.schedule_id
    WHERE 
        p.name ILIKE '%' || partial_name || '%';
END;
$$ LANGUAGE plpgsql;

 
SELECT * FROM get_ticket_details_by_name('mir');

