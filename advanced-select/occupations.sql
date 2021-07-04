# Problem: https://www.hackerrank.com/challenges/occupations/problem

set @r1=0, @r2=0, @r3=0, @r4=0;

SELECT MAX(Doctor), MAX(Professor), MAX(Singer), MAX(Actor)
FROM (
    SELECT
        CASE
            WHEN Occupation='Doctor' then (@r1:=@r1+1)
            WHEN Occupation='Professor' then (@r2:=@r2+1)
            WHEN Occupation='Singer' then (@r3:=@r3+1)
            WHEN Occupation='Actor' then (@r4:=@r4+1)
        END AS RowNumber,
        CASE
            WHEN Occupation='Doctor' THEN Name
        END AS Doctor,
        CASE
            WHEN Occupation='Professor' THEN Name
        END AS Professor,
        CASE
            WHEN Occupation='Singer' THEN Name
        END AS Singer,
        CASE
            WHEN Occupation='Actor' THEN Name
        END AS Actor
    FROM OCCUPATIONS
    ORDER BY Name) AS temp
GROUP BY RowNumber;
