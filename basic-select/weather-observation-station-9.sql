# Problem: https://www.hackerrank.com/challenges/weather-observation-station-9/problem

SELECT DISTINCT city FROM station WHERE city REGEXP "^[^ueoai].*";
