-- create table
DROP TABLE IF EXISTS world_cup;
CREATE TABLE world_cup
(Team_1 varchar (50), Team_2 varchar (50), Winner varchar (50));

-- insert values
INSERT INTO world_cup values('India','SL','India');
INSERT INTO world_cup values('SL','Aus','Aus');
INSERT INTO world_cup values('SA','Eng','Eng');
INSERT INTO world_cup values('Eng','NZ','NZ');
INSERT INTO world_cup values('Aus','India','India');

-- world_cup table
SELECT * FROM world_cup;  

-- You have a table world_cup containing match data with columns for Team 1,
-- Team 2, and the match Winner. Write a query to show each team’s total matches played, number of wins, and losses."
WITH MatchData AS (
    SELECT Team_1 AS Team, Winner FROM world_cup
    UNION ALL
    SELECT Team_2 AS Team, Winner FROM world_cup
)
SELECT 
    Team, 
    COUNT(*) AS Matches_Played, 
    SUM(CASE WHEN Team = Winner THEN 1 ELSE 0 END) AS Wins, 
    COUNT(*) - SUM(CASE WHEN Team = Winner THEN 1 ELSE 0 END) AS Losses
FROM MatchData
GROUP BY Team;
