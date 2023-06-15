-- JOIN TWO DATABASE AND GET employee with office id of 5

SELECT * FROM sql_hr.employees em
LEFT JOIN sql_hr.offices o
ON em.office_id = o.office_id
WHERE em.office_id = 5;

-- Join TWO TABLE WITH LEFT JOIN

SELECT * FROM sql_invoicing.clients c left JOIN sql_invoicing.invoices inv
ON c.client_id = inv.client_id ;

-- GET all top most spending customers 

SELECT * FROM sql_invoicing.invoices
ORDER BY payment_total desc
LIMIT 3;

-- JOIN two tables with payment ID.
SELECT * FROM sql_invoicing.payment_methods pm
JOIN sql_invoicing.payments p 
ON pm.payment_method_id = p.payment_method;

