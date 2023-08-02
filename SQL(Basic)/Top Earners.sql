-- Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT 
    MAX(calculated_salary) AS max_salary,
    COUNT(*) AS occurrences_of_max_salary
FROM (
    SELECT (months * salary) AS calculated_salary
    FROM Employee
) AS salary_table
WHERE calculated_salary = (
    SELECT MAX(months * salary)
    FROM Employee
);