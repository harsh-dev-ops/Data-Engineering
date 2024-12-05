SELECT * FROM orders;

SELECT DISTINCT order_status from orders;

SELECT * FROM orders
WHERE order_status = 'CLOSED';

SELECT * FROM orders
WHERE order_status = 'COMPLETE';

SELECT * FROM orders
WHERE order_status = 'CLOSED' OR order_status = 'COMPLETE';

SELECT * FROM orders
WHERE order_status IN ('CLOSED', 'COMPLETE');
