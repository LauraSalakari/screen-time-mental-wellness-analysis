-- 9. Do people under 20 have more leisure screen time on average than those over 20?
SELECT age, ROUND(AVG(leisure_screen_hours),2) AS "L. Screen Hours", 
	CASE 
	WHEN age < 20 AND AVG(leisure_screen_hours) > 
	age > 20 AND AVG(leisure_screen_hours) THEN "Yes, people under 20 have more leisure time" 
	ELSE "No, people under 20 have less leisure time" END AS "Average screen time by age"
FROM cleaned_data
GROUP BY age 
LIMIT 10;

-- 10. Which occupation category has the highest average productivity?
SELECT occupation, ROUND(AVG(productivity_0_100),2) AS avg_productivity
FROM cleaned_data
GROUP BY occupation
ORDER BY avg_productivity DESC
LIMIT 1;

-- 11. Is there a difference in average mental health by gender?

SELECT gender, ROUND(AVG(mental_wellness_index_0_100),2) AS "Mental Wellness by gender", COUNT(mental_wellness_index_0_100) AS "Total people by gender"
FROM cleaned_data
GROUP BY gender
ORDER BY "Mental Wellness by gender" DESC;

-- By the data Non-binary/other people has the greatest mental health, due to there are less people in here, and the indexes are pretty high

-- 12. Does worse quality of sleep correspond to a higher average stress? 

SELECT sleep_quality_1_5, ROUND(AVG(stress_level_0_10),0) AS "Stress Level (0-Low 10-High)"
FROM cleaned_data
GROUP BY sleep_quality_1_5
ORDER BY "Stress Level (0-Low 5-High)";
-- Yes, we can confirm that better quality of dream people's Stress levels decreases
