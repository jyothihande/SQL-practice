-- Get the naem which ends with e and have "9" in between a number
SELECT * FROM sql_invoicing.clients
Where name like "%e" and phone like "%9%";

-- Get the naem which ends with e and starts with "y" and have "9","5" in between a number
SELECT * FROM sql_invoicing.clients
Where name like "%e" and phone like "%9%"
UNION
SELECT * FROM sql_invoicing.clients
Where name like "y%" and phone like "%5%";

-- Get all invocies of forst 6 months:

SELECT * FROM sql_invoicing.invoices
WHERE invoice_date between "2019-01-01" and "2019-06-30"
UNION
SELECT * FROM sql_invoicing.invoices
WHERE due_date between "2019-01-01" and "2019-06-30";