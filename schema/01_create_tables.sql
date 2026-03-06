CREATE TABLE project_team(
  team_id int primary key,
  team varchar(255)
)


create table project_player(
    player_id int primary key,
    player varchar(255),
    position varchar(150),
    team_id int,
    foreign key(team_id) references project_team(team_id)
)

create table project_match_event(
  id int primary key,
  match_id int,
  team_id int,
  player_id int,
  timestamp varchar(100),
  period int,
  minute int,
  second int,
  location varchar(25),
  pass_end_location varchar(25),
  pass_outcome varchar(50),
  shot_outcome varchar(50),
  shot_statsbomb_xg float,
  type varchar(150),
  foreign key (team_id) references project_team(team_id),
  foreign key (player_id) references project_player(player_id)
)
