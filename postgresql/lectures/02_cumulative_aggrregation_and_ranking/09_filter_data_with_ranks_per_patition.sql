SELECT * FROM daily_product_revenue;

-- Nested Query
SELECT *
FROM (
SELECT *,
	rank() OVER(
		PARTITION BY order_date
		ORDER BY order_revenue DESC
	),
	dense_rank() OVER(
		PARTITION BY order_date
		ORDER BY order_revenue DESC
	)
FROM daily_product_revenue
WHERE to_char(order_date::date, 'yyyy-MM') = '2014-01'
) AS q
WHERE rank <=5
ORDER BY 1, 3 DESC;

-- CTE
WITH daily_product_revenue_ranks AS (
	SELECT *,
		rank() OVER(
			PARTITION BY order_date
			ORDER BY order_revenue DESC
		),
		dense_rank() OVER (
			PARTITION BY order_date
			ORDER BY order_revenue DESC
		)
	FROM daily_product_revenue
	WHERE to_char(order_date::date, 'yyyy-MM') = '2014-01'
) SELECT * 
FROM daily_product_revenue_ranks
WHERE dense_rank <= 5
ORDER BY 1, 3 DESC;

