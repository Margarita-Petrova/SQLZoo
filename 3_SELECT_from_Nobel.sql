/*--> 1. Change the query shown so that it displays Nobel prizes for 1950 */

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

/*--> 2. Show who won the 1962 prize for Literature */

SELECT winner winner_1962
FROM nobel
WHERE yr = 1962
AND subject = 'Literature';

/*--> 3. Show the year and subject that won 'Albert Einstein' his prize */

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

/*--> 4. Give the name of the 'Peace' winners since the year 2000, including 2000 */

SELECT winner
FROM nobel
WHERE subject = 'peace' AND yr >= 2000;

/* --> 5. Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive */

SELECT *
FROM nobel
WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature';

/* --> 6. Show all details of the presidential winners:
*- Theodore Roosevelt
*- Thomas Woodrow Wilson
*- Jimmy Carter
*- Barack Obama */

SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jed Bartlet', 'Jimmy Carter');

/*--> 7. Show the winners with first name John */

SELECT winner
FROM nobel
WHERE winner LIKE 'John%';

/*--> 8. Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984 */

SELECT DISTINCT p.yr
FROM nobel p
WHERE p.subject = 'Physics'
AND p.yr NOT IN
(  SELECT c.yr
  FROM nobel c
  WHERE c.subject = 'Chemistry');
