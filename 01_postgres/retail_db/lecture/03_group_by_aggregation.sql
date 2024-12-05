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



