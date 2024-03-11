CREATE OR REPLACE FUNCTION cancel_ticket_details()
RETURNS TABLE (
    ticket_id INTEGER,
    schedule_id INTEGER,
    booking_status VARCHAR,
    seatnum INTEGER,
    departure_date DATE,
    departure_time VARCHAR,
    total_seats_booked INTEGER,
    waiting_tickets INTEGER,
    train_id VARCHAR,
    train_name VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        t.ticket_id,
        t.schedule_id,
        t.bookingstatus AS "Booking Status",
        t.seatnum,
        s.departuredate AS "Departure Date",
        s.departuretime AS "Departure Time",
        s.totalseatsbooked AS "Total Seats Booked",
        s.waitingtickets AS "Waiting Tickets",
        tr.train_id,
        tr.trainname
    FROM
        public.ticket t
    JOIN
        public.schedule s ON t.schedule_id = s.schedule_id
    JOIN
        public.train tr ON s.train_id = tr.train_id
    ORDER BY
        t.ticket_id ASC;
END;
$$ LANGUAGE plpgsql;