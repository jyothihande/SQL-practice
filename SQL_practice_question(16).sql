-- Get all Hindi and english which has official language speaking countries: 
SELECT * FROM world.countrylanguage
WHERE Language = "Hindi" and IsOfficial="T"
UNION
SELECT * FROM world.countrylanguage
WHERE Language = "English" and IsOfficial = "T";

-- Get all least spoken languges in countries :
SELECT * FROM world.countrylanguage
WHERE Percentage < 1;

-- Get all least and highest spoken languages in countries :
SELECT * FROM world.countrylanguage
WHERE Percentage > 1 and IsOfficial = "T"
UNION
SELECT * FROM world.countrylanguage
WHERE Percentage > 90 and IsOfficial = "T";

-- Get countries with highest surface area.

SELECT * FROM world.country
ORDER BY SurfaceArea DESC
LIMIT 5;