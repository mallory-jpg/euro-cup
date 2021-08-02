--Q11: find the players, their jersey number, and playing club who were the goalkeepers for England in EURO Cup 2016

SELECT match_details.player_gk, player_mast.jersey_no, player_mast.player_name, player_mast.playing_club
FROM euro_cup_2016.match_details, euro_cup_2016.player_mast, euro_cup_2016.soccer_country
WHERE (player_mast.player_id = match_details.player_gk) AND soccer_country.country_name = 'England';