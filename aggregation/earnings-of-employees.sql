# Problem: https://www.hackerrank.com/challenges/earnings-of-employees/problem

SELECT MONTHS * SALARY AS MAX_SALARY, COUNT(*) FROM EMPLOYEE GROUP BY MAX_SALARY ORDER BY MAX_SALARY DESC LIMIT 1
