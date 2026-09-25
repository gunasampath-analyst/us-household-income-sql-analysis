SELECT *
FROM us_household_income;

SELECT *
FROM us_household_income_statistics;

ALTER TABLE us_household_income_statistics RENAME COLUMN `ï»¿id` TO `id`;

SELECT id , COUNT(id)
FROM us_household_income
GROUP BY id 
HAVING COUNT(id) >1;

SELECT *
FROM( 
	SELECT row_id , id ,
	ROW_NUMBER()OVER(PARTITION BY id ORDER BY id) AS row_num 
	FROM us_household_income ) AS dub
WHERE row_num > 1;

DELETE FROM us_household_income
WHERE row_id IN (
SELECT row_id
FROM( SELECT row_id , id ,
		ROW_NUMBER()OVER(PARTITION BY id ORDER BY id) AS row_num 
		FROM us_household_income ) AS dub
		WHERE row_num > 1);
        
SELECT id , count(id)
FROM us_household_income_statistics
GROUP BY id 
HAVING count(id)>1;

SELECT DISTINCT state_name 
FROM us_household_income;

UPDATE us_household_income 
SET state_name = 'Georgia'
WHERE state_name ='georia';

UPDATE us_household_income
SET state_name = 'Alabama'
WHERE state_name ='alabama';

SELECT DISTINCT state_ab 
FROM us_household_income
ORDER BY state_ab;

SELECT *
FROM us_household_income
WHERE place = '';

UPDATE us_household_income
SET place = 'Autaugaville'
WHERE county = 'Autauga County'
AND City = 'Vinemont';

SELECT type ,COUNT(type)
FROM us_household_income
GROUP BY type;

UPDATE us_household_income
SET type = 'Borough'
WHERE type = 'Boroughs';

SELECT DISTINCT Aland 
FROM us_household_income
WHERE Aland = 0 OR Aland ='' OR Aland IS NULL;

SELECT DISTINCT Awater 
FROM us_household_income
WHERE Awater = 0 OR Awater ='' OR Awater IS NULL;


SELECT Aland, Awater 
FROM us_household_income
WHERE Awater = 0 OR Awater ='' OR Awater IS NULL;



