-- this was created to remove excessive null values from faulty mockaroo data.

CREATE OR REPLACE FUNCTION random_platform_num()
RETURNS INTEGER AS $$
BEGIN
    RETURN (floor(random() * 10) + 1)::INTEGER;
END;
$$ LANGUAGE plpgsql;

ALTER TABLE ticket
ALTER COLUMN platformnum SET DEFAULT random_platform_num();

select * from public.ticket