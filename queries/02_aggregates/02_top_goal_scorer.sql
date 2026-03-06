--Find the player with the highest number of goals.
-- first query will only return the first player alphabetically from the list of top scorers (if there are multiple players with the same amount of goals at the top)
SELECT p.name, COUNT(*) AS goal_count
FROM project_player AS p
INNER JOIN project_match_event AS m
    ON p.player_id = m.player_id
WHERE m.shot_outcome = 'Goal'
GROUP BY p.player_id, p.name
ORDER BY goal_count DESC
LIMIT 1;

-- second query that will return all players that have the most amount of goals scored (all the top scorers in the tournament if tied)
SELECT p.name, COUNT(*) AS goal_count
FROM project_player AS p
INNER JOIN project_match_event AS m
    ON p.player_id = m.player_id
WHERE m.shot_outcome = 'Goal'
GROUP BY p.player_id, p.name
HAVING COUNT(*) = (
    SELECT MAX(goal_total)
    FROM (
        SELECT COUNT(*) AS goal_total
        FROM project_match_event
        WHERE shot_outcome = 'Goal'
        GROUP BY player_id
    ) AS goal_counts
);