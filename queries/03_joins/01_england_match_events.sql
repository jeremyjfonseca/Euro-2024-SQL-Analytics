
--Display a list of all of the match events where England is the team
select t.name, m.id, m.match_id
from project_match_event as m
left join project_team as t 
on m.team_id = t.team_id
where t.name = 'England'