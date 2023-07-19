-- Problem: https://www.hackerrank.com/challenges/the-pads/problem

SELECT CONCAT(NAME, '(', SUBSTRING(OCCUPATION, 1, 1), ')') AS NameWithInitial
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(occupation), 's.') AS OccupationCount
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(*), occupation;