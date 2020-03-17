/*Query a count of the number of cities in CITY having a Population larger than 100 000*/

SELECT count(name) AS total_cities
FROM CITY
WHERE population > 100000;

SELECT *
FROM CITY