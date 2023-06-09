-- 1.	Last name starts with G or contains SO
SELECT * FROM sql_hr.employees
WHERE last_name like "%so%" or last_name like "%g";

-- 2.	First name contains e followed by R or A
SELECT * FROM sql_hr.employees
WHERE first_name regexp '[e]r' or first_name like '[e]a';

-- 3.	Get the orders that are not shipped
SELECT customer_id,order_date,order_id,status FROM sql_store.orders
where status != 1;

-- 4.	Stort order times by order_id = 6 descending orders as per their total price
SELECT * FROM sql_store.order_items
where order_id = 6
order by order_id desc;

-- 5.	Get the top 3 least buying customers
SELECT * FROM sql_store.customers
-- where points >=2000
order by points
limit 3 ;

-- 6. Join employees table with offices
SELECT o.office_id ,e.employee_id,e.first_name,e.last_name , e.job_title FROM sql_hr.offices O
JOIN sql_hr.employees e
using (office_id);

-- 7.	In sql_invoicing join 3 tables payment, client, payment_methods and show name of the client and payment method
SELECT c.name , p.payment_method,pm.payment_method_id FROM sql_invoicing.clients c
JOIN sql_invoicing.payments p 
ON c.client_id
JOIN sql_invoicing.payment_methods pm
ON p.payment_method = pm.payment_method_id;

-- 8.	Join worlds city and country language with common column
SELECT c.ID, c.Name ,c.CountryCode,cl.Language FROM world.city c
JOIN world.countrylanguage cl
ON c.CountryCode = cl.CountryCode ;

-- 9.  Get countrycode and name from city and country database
  
  SELECT c.CountryCode,c.Name,co.Code,co.Name FROM world.city c
  JOIN world.country co
  ON c.Name = co.Name;
  
-- 10.	Last name ends with EY or AE
SELECT * FROM world.city
WHERE Name like "%ey" or Name like "j%";

-- 11.	Get the countries independece after 1997
SELECT c.Name,c.Continent ,c.IndepYear FROM world.country c
WHERE IndepYear >=1990;

--  12.	Get the employees whose salary is between 60000 and 90000
SELECT e.first_name,e.job_title ,e.salary FROM sql_hr.employees e
WHERE salary between "60000" and "90000";