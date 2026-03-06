--Retrieve all players in a specific team

--Show the player name and their position
-- Example for query: england team id 768

select p.name, p.position 
from project_player p
left join project_team t
on p.team_id = t.team_id
where p.team_id = 768