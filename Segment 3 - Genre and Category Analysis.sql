-- Q1: -	Determine the unique genres and categories present in the dataset.
-- Ans:- The dataset consists of unique genres including type and categories such as movie and TV show.
    SELECT DISTINCT genre
    FROM netflix_dataset;

-- Q2: -	Calculate the percentage of movies and TV shows in each genre.
-- ans:- Each genre has a varying percentage of movies and TV shows, with type having 100 movies and 100 TV shows.
      SELECT type,
            COUNT(CASE WHEN type = 'Movie' THEN 1 END) AS movie_count,
            COUNT(CASE WHEN type = 'TV Show' THEN 1 END) AS tvshow_count,
            COUNT(*) AS total_count,
            ROUND(COUNT(CASE WHEN type = 'Movie' THEN 1 END) * 100.0 / COUNT(*), 2) AS movie_percentage,
            ROUND(COUNT(CASE WHEN type = 'TV Show' THEN 1 END) * 100.0 / COUNT(*), 2) AS tvshow_percentage
     FROM netflix_dataset
     GROUP BY type;

-- Q3: -	Identify the most popular genres/categories based on the number of productions.
-- ans:- The most popular genres based on the number of productions and the most popular categories are Movie 6126 and TV show 2664.
     SELECT type, COUNT(*) AS count
     FROM netflix_dataset
     GROUP BY type
     ORDER BY count DESC
     LIMIT 5;

-- Q4: -	Calculate the cumulative sum of content duration within each genre.
-- Ans:- The cumulative sum of content duration within each genre shows:-  Movie	610057 and TV Show	4667.
     SELECT type, SUM(duration) AS total_duration
     FROM netflix_dataset
     GROUP BY type
     ORDER BY total_duration DESC;

