# Problem: https://www.hackerrank.com/challenges/asian-population/problem

SELECT SUM(CITY.POPULATION) FROM COUNTRY JOIN CITY ON COUNTRY.CODE = CITY.COUNTRYCODE WHERE CONTINENT = 'Asia'
