# Problem: https://www.hackerrank.com/challenges/more-than-75-marks/problem
# Note: Substring: https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_substring
# SQL default sort ascending

SELECT name FROM students WHERE marks > 75 ORDER BY SUBSTRING(name, -3), id
