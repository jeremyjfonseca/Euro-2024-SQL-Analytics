--Find the team with highest cumulative expected goals

select t.name, SUM(shot_statsbomb_xg) as cumulative_xg
from project_team as t
inner join project_match_event as m
        on t.team_id = m.team_id
where m.shot_statsbomb_xg is NOT NULL
group by t.team_id, t.name
order by cumulative_xg desc
limit 1
