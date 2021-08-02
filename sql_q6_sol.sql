SELECT DISTINCT match_mast.match_no
FROM euro_cup_2016.match_mast, euro_cup_2016.soccer_team
WHERE soccer_team.goal_diff = '1' AND match_mast.decided_by = 'N'; 