-- FROM
-- WHERE
-- GROUP BY
-- SELECT
-- ORDER BY

SELECT order_date, count(*) AS order_count
FROM orders
WHERE order_status IN ('COMPLETE', 'CLOSED')
GROUP BY 1
ORDER BY 2 DESC;