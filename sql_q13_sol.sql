--Q13:  find all the defenders who scored a goal for their teams

SELECT player_mast.player_name
FROM euro_cup_2016.player_mast, euro_cup_2016.goal_details, euro_cup_2016.playing_position
WHERE (goal_details.player_id = player_mast.player_id) AND playing_position.position_id = 'DF';


