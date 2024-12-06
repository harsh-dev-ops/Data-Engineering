SELECT 
o.order_date,
oi.order_item_product_id,
round(sum(oi.order_item_subtotal)::numeric, 2) AS order_revenue
FROM orders AS o
    JOIN order_items AS oi
        ON o.order_id = oi.order_item_order_id
WHERE o.order_status IN ('COMPLETED', 'CLOSED')
GROUP BY 1, 2
ORDER BY 1, 3 DESC;
