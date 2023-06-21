-- Get Language having percentage between 0 and 10 and Isoffical language is "t".

SELECT countryCode,Language,IsOfficial,Percentage FROM  world.countrylanguage
WHERE Percentage between 0 and 10 and IsOfficial ="T";

-- Get CountryCode starts with B and E with percentage above 50.

SELECT * FROM  world.countrylanguage
WHERE CountryCode between "B%" AND "E%" AND Percentage >50;

-- Get all middle east countries of ASIA.
SELECT * FROM world.country
WHERE Continent = "Asia" and Region="Middle east"
ORDER BY Population
limit 5;

-- Get Countries with less than 1000 population:
SELECT * FROM world.city 
JOIN world.countrylanguage 
using(CountryCode)
WHERE Population <1000;

-- Get all countries rules by Elisabeth II.
SELECT * FROM world.country
WHERE HeadOfState = "Elisabeth II";