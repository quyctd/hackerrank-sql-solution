# Problem: https://www.hackerrank.com/challenges/the-pads/problem

SELECT
    CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')')
FROM occupations
ORDER BY name;

SELECT
    CONCAT('There are a total of ', COUNT(name), ' ', lower(occupation), 's.')
FROM occupations
GROUP BY occupation
ORDER BY COUNT(name), occupation;

