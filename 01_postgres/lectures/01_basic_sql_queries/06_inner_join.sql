 -- SELECT * FROM orders;

-- SELECT * FROM order_items;

SELECT * 
FROM orders AS o
    JOIN order_items as oi
    ON o.order_id = oi.order_item_order_id;

-- orders table data only
SELECT o.* 
FROM orders AS o
    JOIN order_items as oi
    ON o.order_id = oi.order_item_order_id;

SELECT 
o.order_date, 
oi.order_item_product_id, 
oi.order_item_product_price
FROM orders AS o
	JOIN order_items as oi
	ON o.order_id = oi.order_item_order_id;
	