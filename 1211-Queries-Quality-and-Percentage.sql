SELECT query_name, 
ROUND(SUM(rating::decimal / position) / COUNT(query_name), 2) as quality,
ROUND((COUNT(CASE WHEN rating < 3 THEN 1 END)::decimal / COUNT(query_name))  * 100, 2) as poor_query_percentage
FROM Queries
GROUP BY query_name