SELECT * FROM order_details_v;

SELECT * FROM products;

SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id;


SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
WHERE odv.order_item_product_id is NULL;


-- Select the products which are not sold on 2014-01

-- WRONG, return Empty

SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
WHERE to_char(odv.order_date::timestamp, 'yyyy-MM') = '2014-01'
	AND odv.order_item_product_id is NULL;


-- RIGHT
SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
			AND to_char(odv.order_date::TIMESTAMP, 'yyyy-MM') = '2014-01'
	AND odv.order_item_product_id is NULL;

	