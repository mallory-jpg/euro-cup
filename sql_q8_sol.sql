SELECT match_mast.match_no, soccer_country.country_name, match_details.penalty_score
FROM euro_cup_2016.match_mast, euro_cup_2016.soccer_country, euro_cup_2016.match_captain, euro_cup_2016.match_details
WHERE (match_captain.match_no = match_mast.match_no) AND (match_captain.team_id = soccer_country.country_id) AND (match_details.penalty_score > 1)
GROUP BY match_mast.match_no, soccer_country.country_name, match_details.penalty_score
ORDER BY match_details.penalty_score DESC
LIMIT(1); 