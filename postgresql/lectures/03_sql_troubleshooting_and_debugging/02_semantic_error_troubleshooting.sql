SELECT *
FROM information_schema.tables
WHERE upper(table_name) LIKE 'ORD%';