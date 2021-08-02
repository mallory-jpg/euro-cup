--Q10: find all available information about players under contract to Liverpool FC playing for England

SELECT *
FROM euro_cup_2016.player_mast
WHERE player_mast.playing_club = 'Liverpool';