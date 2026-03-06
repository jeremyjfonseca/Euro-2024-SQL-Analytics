--Show player names alongside their team names and positions and total expected goal values
-- Query to showcase the information only returning those players with total expected goal values greater than 0, in descending order by total XG Values
select p.name, p.position, sum(shot_statsbomb_xg) as cumulative_xg
from project_player as p 
left join project_match_event as m
on p.player_id = m.player_id
group by p.name, p.position
having sum(shot_statsbomb_xg) > 0
order by cumulative_xg desc