SELECT s.user_id, 
    CASE 
    WHEN 
       COUNT(c.user_id) = 0 THEN 0
    ELSE ROUND(COUNT(CASE WHEN action = 'confirmed' THEN 1 END)::decimal/COUNT(c.user_id),2)
    END as confirmation_rate
FROM Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id