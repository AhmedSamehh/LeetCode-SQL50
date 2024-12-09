SELECT name FROM Employee
WHERE id IN (select managerId from employee group by managerId having count(id) >= 5);