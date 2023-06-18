-- 1.  GET 3 least Populated countries name :

SELECT * FROM world.city
Order by Population 
limit 10;

-- 2. GET countries name  with official is "T" and   Name regexp "[aeo]a".

SELECT * FROM world.city c
JOIN world.countrylanguage cl
on c.CountryCode = cl.CountryCode
WHERE IsOfficial = "T" and  Name regexp "[aeo]a" ;

-- 3. Get names of the coutries of USA those having double OO in its name :
SELECT * FROM world.city
WHERE Name like "%oo%" and CountryCode like "usa"
Order by Population;

-- 4. Get top 5 populated countries of africa:

SELECT * FROM world.country
WHERE Continent = "Africa"
order by Population desc
limit 5;

-- 5. Get all countries and country code with language is HINDI
SELECT * FROM world.countrylanguage cl
JOIN world.city c
ON cl.CountryCode=c.CountryCode
WHERE cl.Language like "hindi" and IsOfficial = "T";