# Problem: https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT city FROM station WHERE city REGEXP "^[^ueoai].*" OR city REGEXP "[^ueoai]$";
