-- Problem: https://www.codingninjas.com/codestudio/problems/marvel-cities_2242793?topList=top-100-sql-problems

SELECT * FROM CITY
WHERE
Population > 100000
AND
CountryCode = 'Marv';
