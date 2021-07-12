# Problem: https://www.hackerrank.com/challenges/challenges/problem

/* these are the columns we want to output */
SELECT 
    H.HACKER_ID,
    H.NAME,
    COUNT(H.HACKER_ID) AS C_COUNT

/* this is the join we want to output them from */
FROM HACKERS H
JOIN CHALLENGES C
ON H.HACKER_ID = C.HACKER_ID

/* after they have been grouped by hacker */
GROUP BY H.HACKER_ID, H.NAME

/* but we want to be selective about which hackers we output */
/* having is required (instead of where) for filtering on groups */
having 

    /* output anyone with a count that is equal to... */
    C_COUNT = 
        /* the max count that anyone has */
        (SELECT COUNT(HACKER_ID) AS CNT
             FROM CHALLENGES
             GROUP BY HACKER_ID
             ORDER BY CNT DESC LIMIT 1)

    /* or anyone who's count is in... */
    OR C_COUNT IN 
        /* the set of counts... */
        (SELECT TEMP.CNT
         FROM (SELECT COUNT(HACKER_ID) AS CNT 
               FROM CHALLENGES
               GROUP BY HACKER_ID) TEMP
         /* who's group of counts... */
         GROUP BY TEMP.CNT
         /* has only one element */
         HAVING COUNT(TEMP.CNT) = 1)

ORDER BY COUNT(H.HACKER_ID) DESC, H.HACKER_ID
