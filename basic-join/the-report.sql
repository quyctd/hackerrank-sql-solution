# problem: https://www.hackerrank.com/challenges/the-report/problem


SELECT
CASE
    WHEN MARKS < 70 THEN NULL
    ELSE NAME
END AS NEW_NAME,
CASE
    WHEN MARKS < 10 THEN 1
    WHEN MARKS < 20 THEN 2
    WHEN MARKS < 30 THEN 3
    WHEN MARKS < 40 THEN 4
    WHEN MARKS < 50 THEN 5
    WHEN MARKS < 60 THEN 6
    WHEN MARKS < 70 THEN 7
    WHEN MARKS < 80 THEN 8
    WHEN MARKS < 90 THEN 9
    ELSE 10
END AS GRADE,
MARKS
FROM STUDENTS
ORDER BY GRADE DESC, NAME ASC
