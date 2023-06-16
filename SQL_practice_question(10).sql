-- 1.  GET names for points column as high-medium-low 

SELECT customer_id,first_name, points between 2000 and 4000 as high ,
points BETWEEN 1000 and 2000 as medium, points < 1000 as low  FROM sql_store.customers;

-- 2. GET ALL customers name whose birth date is before 1980.

SELECT * FROM sql_store.customers
WHERE birth_date < "1980-12-01";

-- 3.GET Most expensive products for future sale:

SELECT name,quantity_in_stock,unit_price, quantity_in_stock*unit_price as "total_cost" FROM sql_store.products
Order by total_cost desc
limit 3;

-- 4. LABLE quanity in stock as high ,enough,less as per amount
 
SELECT name,quantity_in_stock, quantity_in_stock between 60 and 100 as "many" ,
quantity_in_stock between 35 and 60 as "enough",quantity_in_stock <35 as "less"  FROM sql_store.products;

