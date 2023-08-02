-- Problem: https://www.hackerrank.com/challenges/the-company

SELECT 
    subquery.company_code,
    subquery.founder,
    COUNT(DISTINCT subquery.lead_manager_code) AS num_lead_managers,
    COUNT(DISTINCT subquery.senior_manager_code) AS num_senior_managers,
    COUNT(DISTINCT subquery.manager_code) AS num_managers,
    COUNT(DISTINCT subquery.employee_code) AS num_employees
FROM (
    SELECT 
        company.company_code,
        company.founder,
        lead_manager.lead_manager_code,
        Senior_Manager.senior_manager_code,
        Manager.manager_code,
        Employee.employee_code
    FROM company
    LEFT JOIN Lead_Manager 
        ON Lead_Manager.company_code = company.company_code
    LEFT JOIN Senior_Manager 
        ON Senior_Manager.company_code = company.company_code
    LEFT JOIN Manager
        ON Manager.company_code = company.company_code
    LEFT JOIN Employee
        ON Employee.company_code = company.company_code
) AS subquery
GROUP BY subquery.company_code, subquery.founder
ORDER BY subquery.company_code;