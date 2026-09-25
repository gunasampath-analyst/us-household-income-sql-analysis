SELECT * 
FROM us_household_income;

SELECT *
FROm us_household_income_statistics;

SELECT state_name , SUM(Aland),SUM(Awater)
FROM us_household_income
GROUP BY state_name
ORDER BY 2 DESC;

SELECT state_name , SUM(Aland),SUM(Awater)
FROM us_household_income
GROUP BY state_name
ORDER BY 3 DESC;

SELECT state_name , SUM(Aland),SUM(Awater)
FROM us_household_income
GROUP BY state_name
ORDER BY 2 DESC
LIMIT 10;

SELECT state_name , SUM(Aland),SUM(Awater)
FROM us_household_income
GROUP BY state_name
ORDER BY 3 DESC
LIMIT 10;

SELECT *
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id;

SELECT i.state_name , county , type , `Primary` , Mean , Median 
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0; 

SELECT i.state_name , ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY i.state_name
ORDER BY 2
LIMIT 5;

SELECT i.state_name , ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY i.state_name
ORDER BY 2 DESC
LIMIT 10;

SELECT i.state_name , ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY i.state_name
ORDER BY 3
LIMIT 10 ;

SELECT i.state_name , ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY i.state_name
ORDER BY 3 DESC
LIMIT 10 ;

SELECT type ,COUNT(type),ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY type
ORDER BY 3 DESC ;

SELECT type ,COUNT(type),ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY type
ORDER BY 4 DESC ;

SELECT *
FROM us_household_income
WHERE type = 'Community';

SELECT type ,COUNT(type),ROUND(AVG(Mean),1) , ROUND(AVG(Median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
WHERE Mean != 0
GROUP BY type
HAVING COUNT(type) > 100
ORDER BY 4 DESC ;

SELECT i.state_name , city , ROUND(AVG(Mean),1) , ROUND(AVG(median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
GROUP BY state_name , city
ORDER BY ROUND(AVG(Mean),1) DESC;

SELECT i.state_name , city , ROUND(AVG(median),1)
FROM us_household_income AS i 
JOIN us_household_income_statistics AS s
ON i.id = s.id
GROUP BY state_name , city
ORDER BY ROUND(AVG(median),1) DESC;