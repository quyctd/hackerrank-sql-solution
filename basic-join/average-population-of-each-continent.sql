# Problem: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY CONTINENT
