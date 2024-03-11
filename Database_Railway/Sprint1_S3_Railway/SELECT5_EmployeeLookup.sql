--Employee Lookup SELECT query

--Description:
--This query consolidates employee identification and role details, 
--including their contact information and assigned station, ordered by name. 
--It's ideal for HR tasks like payroll, contact verification, and 
--station assignment review.

CREATE OR REPLACE FUNCTION get_employee_details(
    p_station_id VARCHAR DEFAULT NULL, 
    p_employee_id INTEGER DEFAULT NULL
)
RETURNS TABLE (
    employee_id INTEGER,
    employee_name VARCHAR,
    role VARCHAR,
    department VARCHAR,
    hiredate DATE,
    salary MONEY,
    birthdate DATE,
    employee_phone VARCHAR,
    street VARCHAR,
    city VARCHAR,
    province VARCHAR,
    postalcode VARCHAR,
    country VARCHAR,
    station_id VARCHAR,
    stationname VARCHAR,
    station_city VARCHAR,
    operationhours VARCHAR
) AS $$
BEGIN
    RETURN QUERY 
    SELECT
        e.employee_id,
        e.name,
        e.role,
        e.department,
        e.hiredate,
        e.salary,
        e.birthdate,
        e.phone,
        a.street,
        a.city,
        a.province,
        a.postalcode,
        a.country,
        st.station_id,
        st.stationname,
        st.city,
        st.operationhours
    FROM
        public.employee e
    INNER JOIN
        public.address a ON e.address_id = a.address_id
    INNER JOIN
        public.station st ON e.station_id = st.station_id
    WHERE
        (p_station_id IS NULL OR st.station_id = p_station_id)
        AND
        (p_employee_id IS NULL OR e.employee_id = p_employee_id);
END;
$$ LANGUAGE plpgsql;


SELECT * FROM get_employee_details();
