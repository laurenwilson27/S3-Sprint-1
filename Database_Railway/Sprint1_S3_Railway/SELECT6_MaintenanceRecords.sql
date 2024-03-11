--Description:
--This query retrieves detailed maintenance records for trains. 
--It displays the unique maintenance ID, the train ID, the train name 
--for easy identification, and the dates when the service was performed 
--as well as when the next service is due. The reported issues and 
--maintenance details give insights into the work carried out during each service.


CREATE OR REPLACE FUNCTION get_train_maintenance_details(
    p_train_id VARCHAR DEFAULT NULL, 
    p_maintenance_id INTEGER DEFAULT NULL
	
)
RETURNS TABLE (
	Maintenance_ID INTEGER,
    TrainMaintenance_ID INTEGER,
    train_ID VARCHAR,
    trainname VARCHAR,
    ServiceDate DATE,
    NextServiceDate DATE,
    Reported_Issues VARCHAR(255),
    Maintenance_Details TEXT
) AS $$
BEGIN
    RETURN QUERY 
    SELECT
	    tm.Maintenance_ID,
        tm.TrainMaintenance_ID,
        tr.train_ID,
        tr.trainname,
        tm.ServiceDate,
        tm.NextServiceDate,
        tm.IssueDetails AS "Reported_Issues", -- Ensure this is VARCHAR(255)
        m.details AS "Maintenance_Details"
    FROM
        public.train_maintenance tm
    JOIN
        public.train tr ON tm.Train_ID = tr.train_id
    JOIN
        public.maintenance m ON tm.Maintenance_ID = m.maintenance_id
    WHERE
        (p_train_id IS NULL OR tr.train_id = p_train_id)
        AND
        (p_maintenance_id IS NULL OR tm.Maintenance_ID = p_maintenance_id)
    ORDER BY
        tm.ServiceDate DESC;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_train_maintenance_details('TR2',21)


