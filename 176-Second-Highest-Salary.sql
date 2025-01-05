SELECT MAX(DISTINCT salary) as SecondHighestSalary 
FROM Employee
WHERE salary < (SELECT MAX(DISTINCT salary) FROM Employee)