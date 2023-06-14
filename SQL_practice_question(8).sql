-- Created two New Table in sql_hr department and employe and preform sql queries on them 
-- TRY different types of JOIN ON EMPLOYE TABLE AND DEPARTMENT TABLE

--- Get in which department "pol" works 

SELECT e.E_name , d.Name FROM sql_hr.employe e
JOIN department d
ON e.E_no = d.E_no
WHERE E_name = "Pol";

-- Get employess from pune and in which department they work
SELECT e.E_no ,e.E_name,e.Address,d.Dep_no,d.Name FROM sql_hr.employe e
JOIN department d
ON e.E_no = d.E_no
WHERE Address = "Pune";

-- Example of Natural JOIN where employe with no department is not present
SELECT * FROM sql_hr.employe e ,sql_hr.department d
Where e.E_no = d.E_no;

-- cross JOIN example
SELECT * FROM sql_hr.employe CROSS JOIN sql_hr.department;

-- LEFT OUTER JOIN:
SELECT d.Dep_no,d.Name,d.E_no ,e.E_name FROM sql_hr.department d 
LEFT OUTER JOIN sql_hr.employe e
ON d.E_no=e.E_no;


