-- Problem: https://www.hackerrank.com/challenges/occupations/problem

WITH TEXT AS (
    SELECT
        CASE WHEN OCCUPATION = 'Doctor' THEN Name ELSE NULL END Doctor,
        CASE WHEN OCCUPATION = 'Professor' THEN Name ELSE NULL END Professor,
        CASE WHEN OCCUPATION = 'Singer' THEN Name ELSE NULL END Singer,
        CASE WHEN OCCUPATION = 'Actor' THEN Name ELSE NULL END Actor,

        ROW_NUMBER() OVER(PARTITION BY OCCUPATION ORDER BY NAME) RNUM
    FROM OCCUPATIONS
)

SELECT 
     COALESCE(MAX(Doctor), 'NULL'),
     COALESCE(MAX(Professor), 'NULL'),
     COALESCE(MAX(Singer), 'NULL'),
     COALESCE(MAX(Actor), 'NULL')
FROM TEXT
GROUP BY RNUM
ORDER BY RNUM;