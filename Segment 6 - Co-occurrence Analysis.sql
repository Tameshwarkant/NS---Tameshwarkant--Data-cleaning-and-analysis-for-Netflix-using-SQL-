-- Q1: -	Identify the most common pairs of genres/categories that occur together in content.
-- Ans:- Certain genres/categories frequently occur together in content. The most common pairs include [type] and [category], indicating that viewers often prefer content that combines these genres/categories.
     SELECT t1.type, t2.type, COUNT(*) AS count
     FROM netflix_dataset t1
     JOIN netflix_dataset t2 ON t1.show_id != t2.show_id
     WHERE t1.type < t2.type
     GROUP BY t1.type, t2.type
     ORDER BY count DESC
     LIMIT 5;

-- Q2: -	Analyse the relationship between genres/categories and content duration.
-- Ans:- The duration of content varies across different genres/categories. Some genres/categories tend to have longer durations, suggesting a preference for immersive storytelling or detailed exploration within those genres/categories.
--   Movie	99.58488410055502
--   TV Show	1.7518768768768769
     SELECT type, AVG(duration) AS avg_duration
     FROM netflix_dataset
     GROUP BY type
     ORDER BY avg_duration DESC;
