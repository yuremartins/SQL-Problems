-- Problem: https://www.hackerrank.com/challenges/population-density-difference

WITH CityStats AS (
    SELECT 
        MAX(POPULATION) AS max_population,
        MIN(POPULATION) AS min_population
    FROM city
)

SELECT 
    max_population - min_population AS population_range
FROM CityStats;