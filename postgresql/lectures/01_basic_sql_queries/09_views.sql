CREATE VIEW order_details_v
AS
SELECT 
o.*,
oi.order_item_product_id,
oi.order_item_subtotal
FROM orders AS o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id;

-- DROP VIEW order_details_v;

SELECT * FROM order_details_v;

CREATE OR REPLACE VIEW order_details_v
AS 
SELECT
o.*,
oi.order_item_product_id,
oi.order_item_subtotal,
oi.order_item_id
FROM orders AS o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id;
