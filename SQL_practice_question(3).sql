-- Q1. list cities with country code ESP and Population less than 1200000

SELECT * FROM world.city
WHERE CountryCode like "ESP" and Population <=120000;

-- Q2. Get all countries with Percentage last 5 highest

SELECT * FROM world.countrylanguage
Where Language like "English" and IsOfficial like "T"
ORDER BY Percentage desc
limit 5 ;

-- Q3. list cities with city and Population with high moderate and low population

SELECT Name ,Population, Population between '500000' and '5000000' as Highly_Populated , Population  between "100000" and " 500000" as Moderate_Population ,Population between "99999" and "500" as less_Population FROM world.city;

-- Q4. Get all the asian countries which got independent after 1990
SELECT * FROM world.country
WHERE 	Continent LIKE "asia" and IndepYear > "1990" ;

-- Q5. Get all first name with a-e followed by a:alter
SELECT * FROM sql_hr.employees
WHERE first_name regexp "[a-e]a" ;
