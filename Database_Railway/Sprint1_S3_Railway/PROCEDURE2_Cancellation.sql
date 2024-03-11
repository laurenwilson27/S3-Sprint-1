--Procedure 2: Cancellation

--Description:
--The cancel_ticket_confirm_waiting procedure streamlines ticket cancellations 
--by updating the given ticket's status to 'CANCELLED' and automatically 
--confirming the next waiting ticket for the same schedule. It ensures 
--no negative waiting ticket counts and adjust bookingstatus appropriately.

CREATE OR REPLACE PROCEDURE cancel_ticket_confirm_waiting(p_ticket_id INTEGER)
LANGUAGE plpgsql
AS $$
DECLARE
    v_schedule_id INTEGER;
    v_train_id VARCHAR;
    v_next_waiting_ticket_id INTEGER;
    v_current_status VARCHAR;
    v_waiting_tickets INTEGER;
BEGIN
    -- Retrieve the schedule_id, train_id, and current booking status for the ticket
    SELECT s.schedule_id, s.train_id, t.bookingstatus INTO v_schedule_id, v_train_id, v_current_status
    FROM ticket t
    JOIN schedule s ON t.schedule_id = s.schedule_id
    WHERE t.ticket_id = p_ticket_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Ticket with ID % does not exist.', p_ticket_id;
    ELSIF v_current_status = 'CANCELLED' THEN
        RAISE NOTICE 'Ticket with ID % is already cancelled.', p_ticket_id;
    ELSE
        -- Change the ticket's status to 'CANCELLED'
        UPDATE ticket
        SET bookingstatus = 'CANCELLED'
        WHERE ticket_id = p_ticket_id;

        -- Find the first waiting ticket for the same schedule
        SELECT ticket_id INTO v_next_waiting_ticket_id
        FROM ticket
        WHERE schedule_id = v_schedule_id
          AND bookingstatus = 'WAITING'
        ORDER BY ticket_id
        LIMIT 1;

        -- If a waiting ticket is found, change its status to 'CONFIRMED'
        IF v_next_waiting_ticket_id IS NOT NULL THEN
            UPDATE ticket
            SET bookingstatus = 'CONFIRMED'
            WHERE ticket_id = v_next_waiting_ticket_id;
            
            -- Optionally, update the schedule's waiting tickets if necessary
        IF v_waiting_tickets > 0 THEN
                UPDATE schedule
                SET waitingtickets = waitingtickets - 1
                WHERE schedule_id = v_schedule_id;
            END IF;
        END IF;
        -- Output the result to the user
        RAISE NOTICE 'Ticket with ID % has been cancelled.', p_ticket_id;
        IF v_next_waiting_ticket_id IS NOT NULL THEN
            RAISE NOTICE 'Waiting ticket with ID % has been confirmed.', v_next_waiting_ticket_id;
        END IF;
    END IF;
END;
$$;

CALL cancel_ticket_confirm_waiting(302246);  -- Replace (___) with the actual ticket_id you want to cancel

SELECT * FROM cancel_ticket_details();

