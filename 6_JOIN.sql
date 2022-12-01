/*--> 1. Show matchid and player name for all goals scored by Germany. teamid = 'GER' */

SELECT matchid, player 
FROM goal 
WHERE teamid = 'GER';

/*--> 2. Show id, stadium, team1, team2 for game 1012 */

SELECT id, stadium, team1, team2
FROM game 
WHERE id = 1012;

/*--> 3. Show the player, teamid and mdate and for every German goal. teamid='GER' */

SELECT goal.player, goal.teamid, game.stadium, game.mdate
FROM goal
JOIN game
ON id=matchid
WHERE teamid = 'GER';

/*--> 4. Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%' */

SELECT game.team1, game.team2, goal.player
FROM game
JOIN goal
ON game.id=goal.matchid
WHERE player LIKE 'Mario%';

/*--> 5. Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime <= 10 */

SELECT goal.player, goal.teamid, eteam.coach, goal.gtime
FROM goal 
JOIN eteam
ON goal.teamid=eteam.id
WHERE gtime <= 10;

/*--> 6. List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach */
SELECT game.mdate, eteam.teamname
FROM game
JOIN eteam
ON game.team1=eteam.id
WHERE coach = 'Fernando Santos';

/* --> 7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw' */

SELECT goal.player
FROM goal
JOIN game
ON game.id=goal.matchid
WHERE stadium = 'National Stadium, Warsaw';
