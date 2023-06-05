-- SELECT * FROM world.indian_state_guide;
-- 1. INSERT
-- INSERT INTO  world.indian_state_guide
-- VALUES(DEFAULT,"GUJARAT",DEFAULT,"GANDHI NAGAR","35","Gujrati")
 --                       OR
 -- INSERT INTO indian_state_guide (STATE_UT,CAPITAL,Local_language)
 -- VALUES ("abc","abc1","abc2"),("xyz","xyz1","xyz2"),("bhfhbjvf","x","xysdf")
 
 -- OR
--  INSERT INTO indian_state_guide (STATE_UT,CAPITAL,Local_language)
 -- VALUES ("XYZ","ABC","KGT")
 
 -- 2.UPDATE
 -- UPDATE `world`.`indian_state_guide` 
 -- SET `Index_No` = '20', `STATE_UT` = 'XYZ1', `STATE_ FORMED_YEAR` = '1985-05-25', `CAPITAL` = 'ABC1' WHERE (`Index_No` = '26') and (`STATE_UT` = 'XYZ');

 -- 3. min/ max/avg
-- SELECT MIN/max/avg( ) FROM world.indian_state_guide;
-- SELECT max(Num.of_Distric) FROM world.indian_state_guide
-- order by Num.of_Distric

-- 4. GROUP  FUNCT
-- SELECT  count(Num.of_Distric),STATE_UT FROM world.indian_state_guide
-- group by STATE_UT;



