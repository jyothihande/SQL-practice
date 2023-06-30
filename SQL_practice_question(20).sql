-- JOIN two different database tables with same column as per product id and order_id:

SELECT * FROM sql_inventory.products p
right JOIN  sql_store.order_items o 
ON p.product_id = o.product_id;

-- Get top 3 order_id which spent less money:

SELECT  order_id,product_id,quantity,unit_price,quantity*unit_price as "total_cost" FROM sql_store.order_items
order by quantity*unit_price
limit 3;

-- Join three tables with same coulmn:

SELECT  * FROM sql_store.order_items o
JOIN sql_store.orders ord
ON o.order_id = ord.order_id
JOIN sql_store.shippers s
ON ord.shipper_id =s.shipper_id;