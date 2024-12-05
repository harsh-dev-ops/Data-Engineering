SELECT COUNT(*) FROM orders;

SELECT COUNT(DISTINCT order_status) FROM orders; 

SELECT COUNT(DISTINCT order_date) FROM orders;

SELECT * FROM order_items;

SELECT SUM(order_item_subtotal) FROM order_items
WHERE order_item_order_id = 2;
