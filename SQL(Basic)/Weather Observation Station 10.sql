-- Problem: https://www.hackerrank.com/challenges/weather-observation-station-10

SELECT DISTINCT(CITY) 
FROM STATION 
WHERE (SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a', 'e', 'i', 'o', 'u');