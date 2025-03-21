WITH cte AS(
    SELECT requester_id as id, COUNT(requester_id) as cnt
    FROM RequestAccepted 
    GROUP BY requester_id

    UNION ALL

    SELECT accepter_id as id, COUNT(accepter_id) as cnt
    FROM RequestAccepted 
    GROUP BY accepter_id
)

SELECT id , SUM(cnt) as num FROM cte
GROUP BY id
ORDER BY num DESC LIMIT 1
