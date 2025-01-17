WITH cte as(
    SELECT person_name, SUM(weight) OVER(ORDER BY turn) as w_sum FROM Queue
)
SELECT person_name FROM cte
WHERE w_sum <= 1000
ORDER BY w_sum DESC
LIMIT 1