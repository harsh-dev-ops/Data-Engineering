SELECT order_item_order_id, round(sum(order_item_subtotal)::numeric, 2) as order_revenue
FROM order_items
GROUP BY 1
    HAVING  round(sum(order_item_subtotal)::numeric, 2) > 2000
ORDER BY 2 ASC;

