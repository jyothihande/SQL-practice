-- 1. GET Languages which is "True" and is official language is ENGLISH

SELECT * FROM world.countrylanguage
WHERE IsOfficial = "T" and Language = "English";


-- 2. Get Languages where Indian Languages are present :

SELECT * FROM world.countrylanguage
WHERE Language = "Indian Languages";

-- 3. Get Languages where Percentage above 50 and Isofficial is T :

SELECT * FROM world.countrylanguage
WHERE Percentage > "50" and  IsOfficial = "T";


-- 4.GET all region of continent EUROPE which gets indepent after 1990:

SELECT * FROM world.country
WHERE Continent = "Europe" and IndepYear > 1990;

-- 5. Get all the coties of engalnd with less than 100000 population
SELECT * FROM world.city
WHERE District = 'England' and Population <100000;


