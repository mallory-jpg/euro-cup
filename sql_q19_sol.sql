--Q19: Find the number of captains who were also goalkeepers.

SELECT player_mast.player_name
FROM euro_cup_2016.match_captain, euro_cup_2016.player_mast, euro_cup_2016.playing_position
WHERE (match_captain.player_captain = player_mast.player_id) AND (player_mast.posi_to_play = playing_position.position_id) AND 
	playing_position.position_desc = 'Goalkeepers'
GROUP BY player_mast.player_name
ORDER BY COUNT(match_captain.player_captain);