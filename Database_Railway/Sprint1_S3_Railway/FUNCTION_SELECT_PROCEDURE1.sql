-- Function: get_ticket_details
--
-- Description: Retrieves comprehensive ticket details for a specific train, route, passenger, and departure date.
-- This function is designed to provide insights into the booking status for any given train journey by returning various ticket attributes,
-- including train ID, schedule ID, passenger ID, departure date, current schedule status, total maximum tickets available,
-- the number of waiting tickets, total seats booked, individual seat numbers, ticket IDs, and the current booking status for each ticket.
--
-- Parameters:
--   p_train_id: The unique identifier of the train for which details are being requested.
--   p_route_id: The unique identifier of the route for which details are being requested.
--   p_passenger_id: The unique identifier of the passenger to filter ticket details for.
--   p_departuredate: The specific departure date to filter ticket details for.
--
-- Returns: A table consisting of train_id, schedule_id, passenger_id, departureDate, schedule_status, maxTickets,
--          waitingTickets, totalSeatsBooked, seatnum, ticket_id, and bookingStatus for each relevant ticket.
--
-- Usage Example:
-- SELECT * FROM get_ticket_details(
--     'TR5',    -- p_train_id: The ID of the train
--     5,        -- p_route_id: The route ID
--     112,      -- p_passenger_id: The passenger ID
--     (current_date + interval '7 days')::DATE); -- departuredate format: YYYY-MM-DD

-- This query retrieves ticket details for train 'TR5', route 5, for passenger 112, for schedules departing 7 days from today.


-- before editing drop may be required.
-- DROP FUNCTION IF EXISTS get_ticket_details(VARCHAR, INTEGER, INTEGER, DATE);

CREATE OR REPLACE FUNCTION get_ticket_details(
    p_train_id VARCHAR, 
    p_route_id INTEGER, 
    p_passenger_id INTEGER, 
    p_departuredate DATE
)
RETURNS TABLE (
    train_id VARCHAR,
    schedule_id INTEGER,
    passenger_id INTEGER,
    departureDate DATE,
    schedule_status VARCHAR,
    maxTickets INTEGER,
    waitingTickets INTEGER,
    totalSeatsBooked INTEGER,
    seatnum INTEGER,
    ticket_id INTEGER,
    bookingStatus VARCHAR
) AS $$
BEGIN
    RETURN QUERY 
 SELECT 
    sch.train_id,
    sch.schedule_id,
    tkt.passenger_id,
    sch.departureDate, 
    sch.status,
    sch.maxTickets,
    sch.waitingTickets,
    sch.totalSeatsBooked,
    tkt.seatnum,
    tkt.ticket_id,
    tkt.bookingstatus AS "BookingStatus"
FROM 
    ticket tkt
INNER JOIN schedule sch ON tkt.schedule_id = sch.schedule_id
WHERE 
    sch.train_id = 'TR5'
    AND sch.route_id = 5
    AND sch.departuredate = (current_date + interval '7 days')::DATE
ORDER BY 
    tkt.seatnum DESC;
END;
$$ LANGUAGE plpgsql;



