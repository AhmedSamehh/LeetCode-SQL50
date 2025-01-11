(SELECT name as results FROM Users u
JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY name
ORDER BY COUNT(mr.rating) DESC,name LIMIT 1)

UNION ALL

(SELECT title as results FROM Movies m
JOIN MovieRating MR
ON m.movie_id = mr.movie_id AND mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY title
ORDER BY AVG(mr.rating) DESC,title LIMIT 1)