--This SELECT query supplies certain values that would be useful for calculating 
--estimated times of arrival, 
--speeds of approach in case of reports of unexpected track obstructions, 
--or help engineers with determining estimations on when a part susceptible 
--to wear and tear may require maitenance or replacement.

CREATE OR REPLACE FUNCTION get_train_and_route_details(p_train_id VARCHAR, p_route_id INTEGER)
RETURNS TABLE (
    route_id INTEGER,
    distance VARCHAR,
    duration VARCHAR,
    train_id VARCHAR,
    trainname VARCHAR,
    weightcap INTEGER,
    numberofcars INTEGER,
    accelerationrate VARCHAR,
    decelerationrate VARCHAR,
    maxspeed VARCHAR
) AS $$
BEGIN
    RETURN QUERY 
    SELECT
        r.route_id,
        r.distance,
        r.duration,
        tr.train_id,
        tr.trainname,
        ts.weightcap,
        ts.numberofcars,
        ts.accelerationrate,
        ts.decelerationrate,
        ts.maxspeed
    FROM
        public.train AS tr
    JOIN
        public.trainspecs AS ts ON tr.train_id = ts.train_id
    JOIN
        public.schedule AS s ON tr.train_id = s.train_id
    JOIN
        public.route AS r ON s.route_id = r.route_id
    WHERE
        tr.train_id = p_train_id AND
        r.route_id = p_route_id
    ORDER BY
        r.route_id ASC;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_train_and_route_details('TR1', 101);
