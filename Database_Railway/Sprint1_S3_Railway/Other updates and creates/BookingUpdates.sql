UPDATE Schedule
SET MaxTickets = 50;

UPDATE Ticket
SET bookingstatus = 'Unconfirmed';

UPDATE schedule
SET waitingtickets = 0;

update schedule
set totalseatsbooked=47;

UPDATE schedule
SET bookingopendate = current_date,
    bookingcloseddate = current_date + 7;

UPDATE ticket
SET bookingstatus = CASE
                        WHEN CURRENT_DATE - sch.bookingopendate >= 7 THEN 'CLOSED'
                        ELSE ticket.bookingstatus
                    END
FROM schedule sch
WHERE ticket.schedule_id = sch.schedule_id;

UPDATE schedule
SET bookingopendate = '2023-01-01'
--test date to ensure bookingcloseddate is more than 7 days different 
--so booking status reads closed.
WHERE schedule_id = 100; 

SELECT schedule.schedule_id, schedule.MaxTickets, ticket.ticket_id,bookingopendate, totalseatsbooked, bookingcloseddate, ticket.bookingstatus
FROM schedule
JOIN ticket ON schedule.schedule_id = ticket.schedule_id

ORDER BY schedule.schedule_id ASC;