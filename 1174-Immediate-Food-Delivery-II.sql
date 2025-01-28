WITH cte AS(SELECT customer_id, MIN(order_date) as order_date,
                                MIN(customer_pref_delivery_date) as pref_date
            FROM Delivery
            GROUP BY customer_id
)

SELECT (ROUND(COUNT(CASE WHEN pref_date = order_date THEN 1 
                    END)::decimal / COUNT(*) * 100, 2)) immediate_percentage FROM cte