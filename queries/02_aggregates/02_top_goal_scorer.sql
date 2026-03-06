--Find the player with the highest number of goals.
-- first query will only return the first player in id number order from the list of top scorers (if there are multiple players with the same amount of goals at the top)
SELECT m.player_id, COUNT(*) AS goal_count
FROM project_match_event AS m
WHERE m.shot_outcome = 'Goal'
GROUP BY m.player_id
ORDER BY goal_count DESC
LIMIT 1;

-- second query that will return all players that have the most amount of goals scored (all the top scorers in the tournament if tied)
SELECT m.player_id, COUNT(*) AS goal_count
FROM project_match_event AS m
WHERE m.shot_outcome = 'Goal'
GROUP BY m.player_id
HAVING COUNT(*) = (
    SELECT MAX(goal_total)
    FROM (
        SELECT COUNT(*) AS goal_total
        FROM project_match_event
        WHERE shot_outcome = 'Goal'
        GROUP BY player_id
    ) AS goal_counts
);