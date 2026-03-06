--Find the team with highest cumulative expected goals

select m.team_id, SUM(m.shot_statsbomb_xg) as cumulative_xg
from project_match_event as m
where m.shot_statsbomb_xg is NOT NULL and minute < 120
group by m.team_id
order by cumulative_xg desc
limit 1
