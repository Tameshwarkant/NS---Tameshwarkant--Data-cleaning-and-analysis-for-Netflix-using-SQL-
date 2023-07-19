-- Q1: -	Determine the distribution of content releases by month and year.
-- Ans:- The dataset shows a varied distribution of content releases throughout the months and years count 8790.
    SELECT EXTRACT(MONTH FROM date_added) AS month, EXTRACT(YEAR FROM date_added) AS year, COUNT(*) AS count
    FROM netflix_dataset
    GROUP BY month, year
    ORDER BY year, month;

-- Q2: -	Analyse the seasonal patterns in content releases.
-- Ans:- There are seasonal patterns in content releases, with certain months experiencing higher activity compared to others.
    SELECT CASE WHEN EXTRACT(MONTH FROM date_added) IN (12, 1, 2) THEN 'Winter'
            WHEN EXTRACT(MONTH FROM date_added) IN (3, 4, 5) THEN 'Spring'
            WHEN EXTRACT(MONTH FROM date_added) IN (6, 7, 8) THEN 'Summer'
            WHEN EXTRACT(MONTH FROM date_added) IN (9, 10, 11) THEN 'Fall'
            ELSE 'Unknown'
       END AS season, COUNT(*) AS count
   FROM netflix_dataset
   GROUP BY season;

-- Q3: -	Identify the months and years with the highest number of releases.
-- Ans:- These periods can be leveraged for strategic planning and promotional campaigns.
   SELECT EXTRACT(MONTH FROM date_added) AS month, EXTRACT(YEAR FROM date_added) AS year, COUNT(*) AS count
   FROM netflix_dataset
   GROUP BY month, year
   ORDER BY count DESC
   LIMIT 1;
