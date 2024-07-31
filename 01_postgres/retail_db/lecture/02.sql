SELECT 'COMPLETE' AS order_status, COUNT(*) AS total
FROM public.orders
WHERE order_status = 'COMPLETE'
UNION ALL
SELECT 'PENDING' AS order_status, COUNT(*) AS total
FROM public.orders
WHERE order_status = 'PENDING';

SELECT 
    COUNT(CASE WHEN order_status = 'COMPLETE' THEN 1 END) AS COMPLETE,
    COUNT(CASE WHEN order_status = 'PENDING' THEN 1 END) AS PENDING,
    COUNT(CASE WHEN order_status = 'CLOSED' THEN 1 END) AS CLOSED,
    COUNT(CASE WHEN order_status = 'CANCELED' THEN 1 END) AS CANCELED
FROM public.orders;

SELECT order_status, count(*) as total FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT order_date, count(*) as total FROM orders
GROUP BY 1
ORDER BY 2 DESC;


SELECT to_char(order_date, 'yyyy-MM') as order_month, count(*) as total FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT order_item_order_id, round(sum(order_item_subtotal)::numeric, 2) AS order_revenue FROM order_items
GROUP BY 1
ORDER BY 2;

-- SQL Execution order
-- FROM
-- WHERE
-- GROUP BY
-- SELECT
-- ORDER BY


SELECT order_date, count(*) as total 
FROM orders
WHERE order_status IN ('COMPLETE', 'PENDING')
GROUP BY 1
ORDER BY 2 DESC;


SELECT order_date, count(*) as total 
FROM orders
WHERE order_status IN ('COMPLETE', 'PENDING')
GROUP BY 1
	HAVING count(*) >= 130
ORDER BY 2 DESC;