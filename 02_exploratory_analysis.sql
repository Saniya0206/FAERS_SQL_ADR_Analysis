-- 02_exploratory_analysis.sql
SELECT drug_name, COUNT(*) AS total_reactions
FROM faers_sample
GROUP BY drug_name
ORDER BY total_reactions DESC
LIMIT 5;
