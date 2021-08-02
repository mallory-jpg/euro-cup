-- Q14: referees and the number of bookings they made for the entire tournament. 
-- Sort your answer by the number of bookings in descending order

-- referee_mast.referee_id = match_mast.referee_id, referee_mast.referee_name, 
-- player_booked.match_no = match_mast.match_no, player_booked.player_id, 

WITH ref_bookings AS (
	SELECT COUNT(matches.referee_id), matches.referee_id, refs.referee_name, 
		matches.match_no, player.player_id, playerz.player_name
	FROM euro_cup_2016.match_mast AS matches, euro_cup_2016.referee_mast AS refs, euro_cup_2016.player_booked AS player,
		euro_cup_2016.player_mast AS playerz
	WHERE refs.referee_id = matches.referee_id
		AND player.match_no = matches.match_no
		AND playerz.player_id = player.player_id
	GROUP BY matches.referee_id, refs.referee_name, matches.match_no, player.player_id, playerz.player_name
)
SELECT referee_name, match_no, player_id, player_name
FROM ref_bookings
GROUP BY referee_name, referee_id, match_no,  player_name, player_id
ORDER BY COUNT (DISTINCT player_id) DESC;


