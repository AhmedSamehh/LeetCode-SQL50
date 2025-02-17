WITH cte as (
    SELECT DISTINCT visited_on FROM Customer
    ORDER BY visited_on
    OFFSET 6
)

SELECT cte.visited_on, SUM(amount) as amount, ROUND(SUM(amount)/7.0, 2) as average_amount FROM cte, Customer c
WHERE c.visited_on <= cte.visited_on AND c.visited_on > cte.visited_on - 7
GROUP BY cte.visited_on