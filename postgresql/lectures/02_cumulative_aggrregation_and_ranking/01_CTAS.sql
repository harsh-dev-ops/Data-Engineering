-- Create table based on query results
CREATE TABLE order_count_by_status
AS
SELECT order_status, count(*) AS order_count
FROM orders
GROUP BY 1;

SELECT * FROM order_count_by_status;

-- Create empty stagging TABLE
-- 1=2 means FALSE, you can FALSE directly in postgres
CREATE TABLE orders_stg
AS
SELECT *
FROM orders
WHERE FALSE;


SELECT * FROM orders_stg;
