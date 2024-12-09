SELECT * FROM daily_product_revenue;

SELECT order_date,
		order_item_product_id,
		order_revenue,
		rank() OVER (
			PARTITION BY order_date 
			ORDER BY order_revenue DESC
		),
		dense_rank() OVER (
			PARTITION BY order_date
			ORDER BY order_revenue DESC
		)
FROM daily_product_revenue AS dr
WHERE to_char(order_date::date, 'yyyy-MM') = '2014-01'
ORDER BY 1, 3 DESC;