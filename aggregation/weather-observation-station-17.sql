# Problem: https://www.hackerrank.com/challenges/weather-observation-station-17/problem

SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N > 38.778 ORDER BY LAT_N ASC LIMIT 1
