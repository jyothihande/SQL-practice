-- GET MOST ORDERED ITEMS :

SELECT p.product_id,p.name,p.quantity_in_stock,p.unit_price,o.order_id,o.quantity,o.unit_price	 FROM sql_store.products p
JOIN sql_store.order_items O
ON p.product_id = o.product_id
WHERE quantity > 5;

-- Get total bills of the customers:
SELECT order_id , product_id,quantity,unit_price,quantity*unit_price as total_cost FROM sql_store.order_items;

-- JOIN TWO TABLES:
SELECT * FROM sql_store.orders o
JOIN sql_store.shippers s
ON o.shipper_id = s.shipper_id;

-- Get name starts with B:
SELECT * FROM sql_store.products
WHERE name regexp '[B%]';