-- Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT 
 CASE
  WHEN A+B<=C OR A+C<=B OR B+C<=C THEN 'Not A Triangle'
  WHEN A=B AND B=C AND C=A THEN 'Equilateral'
  WHEN A=B OR B=C OR C=A THEN 'Isosceles'
  ELSE 'Scalene'
 END
FROM TRIANGLES