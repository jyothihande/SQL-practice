-- 1. Last name starts with MY or contains SE

SELECT * FROM sql_store.customers 
WHERE last_name LIKE'MY%' OR last_name LIKE '%se%';

-- 2. Last name contains b followed by R or U
SELECT * FROM sql_store.customers 
WHERE last_name regexp '[b]r' or last_name regexp '[b]u';

-- 3.Get the orders that are not shipped
SELECT order_id,customer_id,status FROM sql_store.orders
WHERE status != 2;

-- 4. Sort order itmes by order_id = 2 descending orders as per their total price.
SELECT * FROM sql_store.order_items
WHERE order_id = 2
ORDER BY order_id DESC;

-- 5.Get the top 3 loyal customers
SELECT * FROM sql_store.customers
ORDER BY points desc
limit 3;

-- 6.Join order_items table with products
SELECT * FROM sql_store.order_items oi
JOIN sql_store.products p
ON oi.product_id = p.product_id;
-- USING (product_id);

-- 7.In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method.
SELECT c.name,p.payment_method,pm.payment_method_id,pm.name FROM sql_invoicing.clients c
JOIN sql_invoicing.payments p
ON c.client_id = p.client_id
JOIN sql_invoicing.payment_methods pm
ON p.payment_id = pm.payment_method_id;


-- 8.	Join product with order_items table and show product_id, product name, and quantity
SELECT p.product_id, p.name, oi.quantity FROM sql_store.products p
JOIN sql_store.order_items oi
ON p.product_id = oi.product_id;

-- 9.Get all rows with these columns – order_date, order_id, first_name, shipper, status
SELECT c.first_name,o.order_date,o.order_id,o.shipper_id,status FROM sql_store.orders o
JOIN sql_store.customers c;

-- 10.	Write a query from sql_invoicing to get date, client name, amount, payment method
SELECT c.name,p.date, p.amount,p.payment_method FROM sql_invoicing.clients c
JOIN sql_invoicing.payments p;

-- 11.Get customer_id, first_name, points, type 0-1000 bronze, 2000-3000 silver and 3000> gold.
SELECT c.customer_id, c.first_name,c.points >= 1000 as "bronze",c.points>3000 as "gold",c.points between 2000 and 3000 as "silver" FROM sql_store.customers c;

-- 12.	Last name ends with EY or ON
SELECT * FROM sql_store.customers
WHERE last_name LIKE '%ey' or last_name like '%on';

-- 13.	Get the customers whose phone numbers ends with 9
SELECT * FROM sql_store.customers
WHERE phone like '%9';

-- 14.	From order_items tables, get the items for the order number 6 where the total price >30


-- 15.	Get the order placed in 2019
SELECT * FROM sql_store.orders
WHERE order_date not between '2017-01-01' and '2018-12-30';




















