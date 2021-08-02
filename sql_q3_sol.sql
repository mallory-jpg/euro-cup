SELECT match_mast.match_no, match_mast.play_date, match_mast.goal_score
FROM euro_cup_2016.match_mast
WHERE match_mast.stop1_sec = '0';