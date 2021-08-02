-- find the highest number of foul cards given in one match

SELECT COUNT (booking_time) as no_penalties, match_no
FROM euro_cup_2016.player_booked
GROUP BY match_no
ORDER BY COUNT(match_no) DESC
LIMIT(1);