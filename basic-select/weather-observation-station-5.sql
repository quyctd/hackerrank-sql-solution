#Problem: https://www.hackerrank.com/challenges/weather-observation-station-5/problem

SELECT city, LENGTH(city) as len_city from station order by len_city asc, city asc LIMIT 1;

SELECT city, LENGTH(city) as len_city from station order by len_city desc, city asc LIMIT 1;
