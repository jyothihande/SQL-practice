
-- 1. find last name starts with m or ends with m

SELECT * FROM sql_hr.employees
WHEre last_name like "m%" or last_name like "%m";

-- 2. join two tables wityh common columns

SELECT * FROM sql_invoicing.invoices inv
left Join sql_invoicing.clients c
on inv.client_id = c.client_id
WHERE inv.client_id < 5
order by inv.client_id ;

-- 3.  Get invoices of first 4 by using order by:

SELECT * FROM sql_invoicing.invoices
WHERE invoice_date BETWEEN "2019-01-01" and "2019-05-30" 
limit 4;

-- 4. Get number with double 55:

SELECT * FROM sql_invoicing.invoices
WHERE number like "%55%";