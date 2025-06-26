-- 03_final_insights.sql
SELECT 
  CASE 
    WHEN patient_age < 18 THEN 'Child'
    WHEN patient_age BETWEEN 18 AND 45 THEN 'Adult'
    WHEN patient_age BETWEEN 46 AND 65 THEN 'Middle-aged'
    ELSE 'Senior'
  END AS age_group,
  COUNT(*) AS total_reports
FROM faers_sample
GROUP BY age_group;
