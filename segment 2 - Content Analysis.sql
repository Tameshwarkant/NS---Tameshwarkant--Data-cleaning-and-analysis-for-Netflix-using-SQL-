-- Q1:-	Analyse the distribution of content types (movies vs. TV shows) in the dataset.
-- ans: - The dataset contains both movies and TV shows, with movies accounting for 6126 and TV shows for 2664.
      SELECT type, COUNT(*) AS count
      FROM netflix_dataset
      GROUP BY type;

-- Q2: -	Determine the top 10 countries with the highest number of productions on Netflix.
-- ans:- The top 10 countries with the highest number of productions on Netflix are:- 
--     United States	3240
--     India	1057
--     United Kingdom	638
--     Pakistan	421
--     Not Given	287
--     Canada	271
--     Japan	259
--     South Korea	214
--     France	213
--     Spain	182.
       SELECT country, COUNT(*) AS count
       FROM netflix_dataset
       GROUP BY country
       ORDER BY count DESC
       LIMIT 10;

-- Q3: -	Investigate the trend of content additions over the years.
-- ans:- Over the years, there has been a gradual increase in the number of content additions, with a peak in 2021.
     SELECT release_year, COUNT(*) AS count
     FROM netflix_dataset
     GROUP BY release_year
     ORDER BY release_year;


-- Q4: - Analyse the relationship between content duration and release year.
-- ans:- There is a slight correlation between content duration and release year, with older content generally having shorter durations.
     SELECT release_year, AVG(duration) AS avg_duration
     FROM shows
     GROUP BY release_year
     ORDER BY release_year;

-- Q5:- -	Identify the directors with the most content on Netflix.
-- Ans:- The directors with the most content on Netflix are :-
-- Not Given	2588
-- Rajiv Chilaka	20
-- Raúl Campos, Jan Suter	18
-- Alastair Fothergill	18
-- Marcus Raboy	16
-- Suhas Kadav	16
-- Jay Karas	14
-- Cathy Garcia-Molina	13
-- Youssef Chahine	12
-- Martin Scorsese	12.
    SELECT director, COUNT(*) AS count
    FROM netflix_dataset
    GROUP BY director
    ORDER BY count DESC;

     








