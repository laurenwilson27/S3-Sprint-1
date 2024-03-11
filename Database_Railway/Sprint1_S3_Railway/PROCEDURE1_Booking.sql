-- Procedure 1: Ticket Booking

-- Description:
--The insert_new_tkt procedure facilitates efficient ticket booking by 
--validating availability for a given train, route, and departure date, 
--within a week's booking window. Upon confirmation of availability, 
--it dynamically assigns the next available seat and updates the 
--ticket status based on current bookings. This procedure ensures 
--tickets are allocated fairly, managing both confirmed and waiting 
--statuses, and promptly communicates the booking details, including 
--the ticket ID and seat number, to the passenger. In case the train 
--is fully booked, it clearly notifies the inability to book further 
--tickets.

CREATE OR REPLACE PROCEDURE insert_new_tkt(
    p_train_id VARCHAR, 
    p_route_id INTEGER, 
    p_passenger_id INTEGER, 
    p_departuredate DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_schedule_id INTEGER;
    v_totalseatsbooked INT;
    v_waitingtickets INT;
    v_ticket_id INT;
    v_seatnum INT; -- Added to store the next available seat number
    v_status VARCHAR;
BEGIN
    -- Validate the train number and booking date
    SELECT schedule_id, totalseatsbooked, waitingtickets INTO v_schedule_id, v_totalseatsbooked, v_waitingtickets
    FROM schedule
    WHERE train_id = p_train_id 
      AND route_id = p_route_id 
      AND departuredate = p_departuredate
      AND departuredate BETWEEN current_date AND current_date + interval '7 days';

    IF NOT FOUND THEN
        RAISE EXCEPTION 'No schedule found for this train and date within the permitted booking window.';
    END IF;
    
    SELECT COALESCE(MAX(seatnum), 0) + 1 INTO v_seatnum
    FROM ticket
    WHERE schedule_id = v_schedule_id;
    
    IF v_totalseatsbooked < 56 THEN
        -- Update the schedule: increment TotalSeatsBooked
        UPDATE schedule
        SET totalseatsbooked = totalseatsbooked + 1,
            waitingtickets = CASE
                                WHEN totalseatsbooked >= 50 AND totalseatsbooked < 55 THEN totalseatsbooked - 49
                                ELSE 0
                             END,
            status = CASE
                        WHEN totalseatsbooked >= 49 AND totalseatsbooked < 55 THEN 'FULL'
                        ELSE 'ON TIME'
                     END
        WHERE schedule_id = v_schedule_id
        RETURNING totalseatsbooked INTO v_totalseatsbooked;
        
        -- Determine the booking status based on the updated total seats booked
        IF v_totalseatsbooked <= 50 THEN
            v_status := 'CONFIRMED';
        ELSIF v_totalseatsbooked BETWEEN 51 AND 55 THEN
            v_status := 'WAITING';
        ELSE
            v_status := 'FULL';
        END IF;
        
        -- Calculate the ticket_id for the new ticket
        v_ticket_id := (p_route_id * 100000) + (p_passenger_id * 100) + v_totalseatsbooked;
        
        -- Insert the new ticket with the determined seat number and status
        INSERT INTO ticket(ticket_id, schedule_id, passenger_id, seatnum, bookingstatus, bookingdate)
        VALUES (v_ticket_id, v_schedule_id, p_passenger_id, v_seatnum, v_status, current_date);

        -- Output the ticket ID to the user
        RAISE NOTICE 'Ticket booked successfully with status %. Ticket ID: %, Seat Number: %', v_status, v_ticket_id, v_seatnum;
    ELSE
        RAISE EXCEPTION 'Unable to book ticket as the train is fully booked.';
    END IF;
END;
$$;


CALL insert_new_tkt(
   'TR2',    -- p_train_id: The ID of the train
    3,        -- p_route_id: The route ID
    101,        -- p_passenger_id: The passenger ID
    (current_date + interval '7 days')::DATE); -- OR departuredate format: YYYY-MM-DD

DROP FUNCTION IF EXISTS get_ticket_details(VARCHAR, INTEGER, INTEGER, DATE);

CREATE OR REPLACE FUNCTION get_ticket_details(
    p_train_id VARCHAR,
    p_route_id INTEGER,
    p_passenger_id INTEGER,
    p_departure_date DATE
)
RETURNS TABLE (
    Departure_Date DATE,
    Train_ID VARCHAR,
    Schedule_ID INTEGER,
    Route_ID INTEGER,
    Passenger_ID INTEGER,
    TotalSeatsBooked INTEGER,
    Ticket_ID INTEGER,
    Seat_Num INTEGER,
    Waiting_Tickets INTEGER,
    Max_Tickets INTEGER,
    Booking_Status VARCHAR,
    Schedule_Status VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        sch.departureDate, 
		sch.train_id,
        sch.schedule_id,
		sch.route_id,
		tkt.passenger_id,
		sch.totalSeatsBooked,
        tkt.ticket_id,
		tkt.seatnum,
		sch.waitingTickets,
		sch.maxTickets,
        tkt.bookingstatus,
		sch.status
    FROM 
        ticket tkt
    JOIN schedule sch ON tkt.schedule_id = sch.schedule_id
    WHERE 
        (p_train_id IS NULL OR sch.train_id = p_train_id)
        AND (p_route_id IS NULL OR sch.route_id = p_route_id)
        AND (p_passenger_id IS NULL OR tkt.passenger_id = p_passenger_id)
        AND (p_departure_date IS NULL OR sch.departuredate = p_departure_date)
		ORDER BY 
        tkt.seatnum DESC;
END;
$$ LANGUAGE plpgsql;



SELECT * FROM get_ticket_details('TR2', 3, 101, (current_date + interval '7 days')::DATE);

