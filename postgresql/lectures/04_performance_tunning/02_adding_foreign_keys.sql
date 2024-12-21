DROP INDEX orders_order_date_idx;
DROP INDEX order_items_oid_idx;

ALTER TABLE order_items ADD
	FOREIGN KEY (order_item_order_id) REFERENCES orders (order_id);