EXPLAIN 
SELECT * 
FROM orders
WHERE order_id = 1;

EXPLAIN
SELECT o.*,
		round(sum(oi.order_item_subtotal)::numeric, 2)
FROM orders AS o 
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id
WHERE o.order_id = 2
GROUP BY 
	o.order_id, 
	o.order_date,
	o.order_customer_id,
	o.order_status
ORDER BY 2 DESC;


