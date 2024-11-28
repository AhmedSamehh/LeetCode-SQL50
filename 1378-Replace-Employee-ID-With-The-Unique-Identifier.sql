-- Write your PostgreSQL query statement below
Select unique_id, name from employeeUNI eu right join employees e on e.id = eu.id