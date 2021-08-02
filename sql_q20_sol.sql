--Q20: find the substitute players who came into the field in the first
--half of play, within a normal play schedule

-- player_in_out.in_out 'I', player_in_out.play_half = 1, player_in_out.play_schedule = 'NT'
-- player_in_out.player_id = player_mast.player_id, player_mast.player_name

SELECT player_mast.player_name
FROM euro_cup_2016.player_mast, euro_cup_2016.player_in_out
WHERE player_in_out.in_out = 'I' AND player_in_out.play_half = '1' AND player_in_out.play_schedule = 'NT' 
	AND (player_in_out.player_id = player_mast.player_id);