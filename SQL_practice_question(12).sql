-- Get all the employees of state MN.
SELECT * FROM sql_hr.employees e
JOIN sql_hr.offices o
ON e.office_id = o.office_id
WHERE e.office_id = 5;

-- Get employees name ends with e and employee id ends with 9
SELECT * FROM sql_hr.employees 
WHERE first_name like "%e" and employee_id like "%9";


-- Find least paid employees:
SELECT * FROM sql_hr.employees
ORDER BY salary 
limit 3;

-- Get first name of employ having "n" in between and number starts with 8.

SELECT * FROM sql_store.customers
WHERE first_name regexp "[%n%]" and phone like "8%";

-- Add 100 to each quantity_in_stock and divide it by 50 and create new column:

SELECT product_id,name,quantity_in_stock,unit_price, (quantity_in_stock + 100)/50 as plus_100 FROM sql_inventory.products;



