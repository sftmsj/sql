USE hackerrank;

exec sp_tables
    @table_owner = 'dbo';

CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N NUMERIC(8,4),
    LONG_W NUMERIC(8,4)
);

SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) AS ManDist
FROM STATION;



