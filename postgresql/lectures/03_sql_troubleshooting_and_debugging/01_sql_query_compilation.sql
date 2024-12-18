

SELECT order_status, count(*) AS order_count
FROM orders
GROUP BY order_status
ORDER BY 2 DESC;


-- SYNTAX

-- SELECT
--     FROM 
--         JOIN
--             ON
-- WHERE
-- GROUP BY
--     HAVING
-- ORDER BY


-- 

-- SEMANTICS

-- orders, order_status, etc. 
-- table and table columns are semantics