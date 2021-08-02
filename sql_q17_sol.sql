--Q17:  find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT soccer_country.country_name AS country, COUNT(soccer_country.country_name)
FROM euro_cup_2016.soccer_country, euro_cup_2016.asst_referee_mast
WHERE (asst_referee_mast.country_id = soccer_country.country_id)
GROUP BY soccer_country.country_name
ORDER BY COUNT(soccer_country.country_name) DESC;