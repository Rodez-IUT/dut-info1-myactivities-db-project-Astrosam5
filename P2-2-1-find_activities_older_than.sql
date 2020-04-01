CREATE FUNCTION find_activities_older_than(old_date date) 
RETURNS SETOF activity AS $$
    SELECT * 
    FROM activity
    WHERE old_date >= modification_date
$$
LANGUAGE SQL;
