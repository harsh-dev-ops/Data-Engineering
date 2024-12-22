CREATE INDEX orders_order_customer_id_idx
ON orders (order_customer_id);

CREATE INDEX order_items_order_item_order_id_idx
ON order_items (order_item_order_id);