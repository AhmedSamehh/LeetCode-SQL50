WITH cte as(
    SELECT reports_to, COUNT(reports_to), ROUND(AVG(age)) as average_age FROM Employees
    WHERE reports_to IS NOT NULL
    GROUP BY reports_to
)

SELECT cte.reports_to as employee_id, name, count as reports_count, average_age
FROM Employees e, cte
WHERE cte.reports_to = e.employee_id 
ORDER BY employee_id
    