WITH cte AS (
    SELECT COUNT(class) cnt, class FROM courses
    GROUP BY class
)

SELECT class FROM cte WHERE cnt > 4
