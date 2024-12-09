SELECT * FROM daily_product_revenue;

SELECT order_date,
		order_item_product_id,
		order_revenue,
		rank() OVER (ORDER BY order_revenue DESC),
		dense_rank() OVER (ORDER BY order_revenue DESC)
FROM daily_product_revenue
WHERE order_date = '2014-01-01 00:00:00'
ORDER BY order_revenue DESC;