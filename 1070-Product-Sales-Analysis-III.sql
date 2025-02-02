WITH cte AS(
    SELECT product_id, MIN(year) as first_year FROM Sales GROUP BY product_id
)

SELECT DISTINCT s.product_id, first_year, s.quantity, s.price FROM cte, Sales s
WHERE first_year = s.year and s.product_id = cte.product_id