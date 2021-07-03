# Problem: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
# SQL Case statement: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?redirectedfrom=MSDN&view=sql-server-ver15

SELECT
    CASE
        WHEN (A + B) <= C OR (A + C) <= B OR (B + C) <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR C = A THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM triangles

