--Calculate the total number of goals scored in the tournament
select count(*) as "Total Number of Goals Scored"
from project_match_event
where shot_outcome = 'Goal'

