SELECT * FROM orders;

SELECT order_status, count(*) AS order_count
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;


SELECT order_status, count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT order_date, count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT to_char(order_date, 'yyyy-MM'), count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;


SELECT * FROM order_items;

SELECT order_item_order_id, sum(order_item_subtotal)
FROM order_items
GROUP BY 1
ORDER BY 1 ASC;

SELECT order_item_order_id, round(sum(order_item_subtotal)::numeric, 2) AS order_revenue
FROM order_items
GROUP BY 1
ORDER BY 1 ASC






