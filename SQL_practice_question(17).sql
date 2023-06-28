-- Use of "or" "and" at a time:
SELECT * FROM world.countrylanguage
Where (Percentage > 50  or IsOfficial ="T") and LANGUAGE = "Hindi";

-- Get all the countries which speaks Hindi and english above percentage 50 : 
SELECT * FROM world.countrylanguage
WHERE  Language ="Hindi" or (IsOfficial = "T" and Percentage > 50)
UNION
SELECT * FROM world.countrylanguage
WHERE  Language ="English" or (IsOfficial = "T" or Percentage > 50);

-- Asian least surface area:
SELECT * FROM world.country
WHERE Continent = "Asia" 
Order by SurfaceArea 
limit 5;

