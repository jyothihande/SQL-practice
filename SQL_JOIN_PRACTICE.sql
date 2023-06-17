-- HERE in sql_hr schema.I have created two tables those are deparment and employe.
-- SO in this query we will try all types of join on this table to see and compare output.alter
 -- 1.LEFT OUTER JOIN.
SELECT * FROM sql_hr.employe e
LEFT OUTER JOIN sql_hr.department d
ON e.E_no=d.E_no;

     ------ OR ------ NOTICE BOTH THE OUTPUTS
     
SELECT * FROM sql_hr.department d
LEFT OUTER JOIN sql_hr.employe e
ON d.E_no=e.E_no;


-- 2. RIGHT OUTER JOIN.
SELECT * FROM sql_hr.employe e
right OUTER JOIN sql_hr.department d
ON e.E_no=d.E_no;

 --    -----OR------
SELECT * FROM sql_hr.department d
RIGHT OUTER JOIN sql_hr.employe e
ON d.E_no=e.E_no;

-- 3. NATURAL JOIN
SELECT * FROM sql_hr.employe e, sql_hr.department d;

-- 4.SELF JOIN 

SELECT * FROM sql_hr.employe as E1 , sql_hr.employe as E2
WHERE E1.E_no=E2.E_no AND E1.E_no <>E2.Address;

-- 5.CROSS JOIN
-- CROSS JOIN ALSO called as Cartesian Join used to join and 
-- generate a paired combination of each row of first table T1 with each row of the second Table T2.

SELECT * FROM sql_hr.employe CROSS JOIN sql_hr.department;
