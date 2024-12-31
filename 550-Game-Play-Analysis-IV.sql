SELECT ROUND(COUNT(*)::decimal / (SELECT COUNT(DISTINCT player_id) from activity) , 2) fraction
FROM activity
WHERE (player_id , event_date) in (
    SELECT player_id , min(event_date) + 1 
    FROM activity 
    GROUP BY player_id
)
