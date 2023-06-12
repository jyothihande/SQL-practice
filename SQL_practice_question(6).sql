-- find the cheapest product to buy and with product name
SELECT name,quantity_in_stock*unit_price as total_cost FROM sql_store.products
order by total_cost 
limit 3;

-- JOIN orders and shippers  and get orders of 2018 and 2017  only
SELECT * FROM sql_store.orders
JOIN sql_store.shippers
WHERE order_date <> "2019-01-30" and "2019-12-31";

-- JOIN THREE DATASETS WITH SAME COLUMN

SELECT cl.client_id , cl.name ,pm.payment_method_id,pm.name    FROM sql_invoicing.clients cl
join sql_invoicing.invoices inv
on cl.client_id = inv.client_id
Join sql_invoicing.payment_methods pm;

-- GET employess first name and last name with adress and city
SELECT em.employee_id,em.first_name,em.last_name , o.address ,o.city FROM sql_hr.employees em
JOIN sql_hr.offices o 
USING (office_id);


--- GET Five highest paying Salary job role and name of employee
SELECT * FROM sql_hr.employees
ORDER BY salary DESC
LIMIT 5;

