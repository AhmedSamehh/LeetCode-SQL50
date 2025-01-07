SELECT d.name Department, e.name Employee, e.salary Salary
FROM Employee e
JOIN Department d
ON d.id = e.departmentId
WHERE salary IN (
    SELECT DISTINCT(salary) FROM employee
    WHERE Employee.departmentId = d.id
    ORDER BY salary DESC
    LIMIT 3
)