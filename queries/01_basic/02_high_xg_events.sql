--Retrieve every event from the matches where the expected goals value was greater than .25

--List the id, player_id, location, and xg value

select id, player_id, location, shot_statsbomb_xg 
from project_match_event
where shot_statsbomb_xg > .25