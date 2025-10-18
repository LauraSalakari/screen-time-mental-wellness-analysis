--1. Which occupation category has the highest mean stress level?
select occupation,stress_level_0_10 from cleaned_data group by occupation;

--2. Which work mode has the highest average screen time?
select work_mode, screen_time_hours from cleaned_data group by work_mode;
--3. Which work mode has the highest productivity scores?
select work_mode, productivity_0_100 from cleaned_data group by work_mode;
--4. Does lower sleep qualities correspond to less exercise minutes per week?
select sleep_quality_1_5,exercise_minutes_per_week from cleaned_data group by sleep_quality_1_5;
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