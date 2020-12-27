# Problem: https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT DISTINCT city FROM station WHERE city REGEXP "^.*[ueoai]$";
