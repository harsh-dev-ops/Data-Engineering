
-- INNER JOIN with no null values
SELECT o.order_id,
oi.order_item_product_id,
oi.order_item_product_price
FROM orders AS o
    JOIN order_items AS oi
        ON o.order_id = oi.order_item_order_id;

-- LEFT OUTER JOIN will show the every row present in the left table
SELECT o.order_id,
oi.order_item_product_id,
oi.order_item_product_price
FROM orders AS o
	LEFT OUTER JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id
ORDER BY 1 ASC;

