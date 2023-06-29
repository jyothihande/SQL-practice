-- Get all invocies which ha made payment on time:

SELECT * FROM sql_invoicing.invoices
WHERE payment_date is not null;


-- Make new coulmns with "total price".
SELECT product_id,name,quantity_in_stock,unit_price,quantity_in_stock*unit_price as "total price" FROM sql_inventory.products;

-- Get a new column "difference" :
SELECT invoice_total,payment_total,invoice_total-payment_total as "difference" FROM sql_invoicing.invoices;


