# Problem: https://www.hackerrank.com/challenges/weather-observation-station-20/problem


SET @INDEX := -1;

SELECT ROUND(AVG(LAT_N), 4)
FROM
    (SELECT @INDEX:=@INDEX + 1 AS IDX, LAT_N FROM STATION ORDER BY LAT_N) AS STATION_W_IDX
WHERE IDX IN (FLOOR(@INDEX / 2), CEIL(@INDEX / 2))
