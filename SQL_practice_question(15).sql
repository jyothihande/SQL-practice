-- 1. Get UNION of two tables:
SELECT * FROM  world.countrylanguage
WHERE Percentage <3 and IsOfficial = "T" 
UNION
SELECT * FROM  world.countrylanguage
WHERE Percentage >90  and IsOfficial = "T";


-- 2.Get new columns for T and F 
SELECT CountryCode,Language,IsOfficial,Percentage ,IsOfficial = "T"  as new_T,IsOfficial = "F"  as new_F FROM  world.countrylanguage;

-- 3. Get avg,min,max, of  Population Column
SELECT min(Population),Max(Population),avg(Population) FROM world.city;

-- 4. Get all countries which has less Life expectancy  :

SELECT * FROM world.country
WHERE LifeExpectancy is not null
ORDER BY LifeExpectancy
limit 10;

-- 5. Get all countries of continent AFRICA AND ASIA WHICH got independence before 1950  :

SELECT * FROM world.country
Where Continent = "Asia" and IndepYear < 1950
UNION
SELECT * FROM world.country
Where Continent = "Africa" and IndepYear < 1950;  