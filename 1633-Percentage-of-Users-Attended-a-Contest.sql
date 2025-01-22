SELECT contest_id, ROUND((COUNT(r.user_id)::decimal / 
(SELECT COUNT(user_id) FROM users)* 100), 2) as percentage
FROM Register r
GROUP BY contest_id
ORDER BY percentage DESC, contest_id