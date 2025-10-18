--5. Does lower sleep quality correspond worse mental wellness scores?
SELECT sleep_quality_1_5 AS "Sleep Quality", mental_wellness_index_0_100 AS "Mental Wellness" FROM cleaned_data GROUP BY "Sleep Quality" ORDER BY "Mental Wellness" DESC;

-- 6. How is the sleep quality and amount split by gender?
SELECT gender AS "Gender", sleep_quality_1_5 AS "Sleep Quality", sleep_hours AS "Sleep Hours" FROM cleaned_data GROUP BY gender, sleep_quality_1_5;

-- 7. Do people over 30 sleep more than those below?
SELECT 
	CASE	
		WHEN age > 30 THEN "Over 30"
		ELSE "Under 30"
	END AS "Age Group",
	sleep_hours AS "Sleep Hours" FROM  cleaned_data GROUP BY "Age Group";
	
-- 8. Which work mode has the highest amount of social hours?
SELECT work_mode AS "Work Mode", social_hours_per_week AS "Social Hours per Week" FROM cleaned_data GROUP BY work_mode ORDER BY social_hours_per_week DESC;