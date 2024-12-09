SELECT * FROM daily_product_revenue;

-- Using Nested query
SELECT * FROM (
	SELECT order_date,
		order_item_product_id,
		order_revenue,
		rank() OVER(ORDER BY order_revenue DESC),
		dense_rank() OVER(ORDER BY order_revenue DESC)
	FROM daily_product_revenue
	WHERE order_date = '2014-01-01 00:00:00'
	) AS q
WHERE rank <=5
ORDER BY 3 DESC;

-- Using CTE
WITH daily_product_revenue_ranks AS (
	SELECT *,
	rank() OVER(ORDER BY order_revenue DESC),
	dense_rank() OVER(ORDER BY order_revenue DESC)
	FROM daily_product_revenue
	WHERE order_date = '2014-01-01 00:00:00'
) SELECT * 
FROM daily_product_revenue_ranks
WHERE rank<=5
ORDER BY 3 DESC;
