-- Get min max and average of column "points" of cutomers
SELECT  min(points) , max(points),avg(points) FROM sql_store.customers;

-- CUSTOMERS BIRTHDATE BWT AND WHERE PHONE IS NOT NULL
SELECT * FROM sql_store.customers
WHERE birth_date NOT between "1980-01-01" and "1999-01-01"  AND phone is not null;

-- CUSTOMERS with first name and last name using like and regexp
SELECT * FROM sql_store.customers
WHERE first_name like "%ur" or last_name regexp '[a e g]y' 
ORDER BY points
limit 3;

--- Get customers name having only 4 letters

SELECT * FROM sql_store.customers
where first_name like "____";

-- GET total cost by quantity * unit price with new column
SELECT order_id,product_id,quantity,unit_price,quantity*unit_price as total_cost FROM sql_store.order_items;
