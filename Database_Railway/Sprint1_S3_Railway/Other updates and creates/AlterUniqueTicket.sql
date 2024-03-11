SELECT *
FROM Ticket
WHERE SeatNum < 1 OR SeatNum > 50;

UPDATE Ticket
SET SeatNum = 1
WHERE SeatNum < 1 OR SeatNum > 50;

ALTER TABLE Ticket
ADD CONSTRAINT seatnum_range CHECK (SeatNum BETWEEN 1 AND 50);

-- ALTER TABLE Ticket
-- ADD CONSTRAINT seatnum_range CHECK (seatnum BETWEEN 1 AND 50);

-- ALTER TABLE Ticket
-- ADD CONSTRAINT unique_seat_per_schedule UNIQUE (Schedule_ID, seatnum);

-- select * from schedule
