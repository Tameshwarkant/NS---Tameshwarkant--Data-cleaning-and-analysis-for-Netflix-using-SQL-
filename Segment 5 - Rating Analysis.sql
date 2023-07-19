-- Q1: -	Investigate the distribution of ratings across different genres.
-- Ans:- Ratings vary across different genres, with some genres consistently receiving higher ratings compared to others:
-- type rating count 
-- Movie	G	41
-- Movie	NC-17	3
-- Movie	NR	75
-- Movie	PG	287
-- Movie	PG-13	490
-- Movie	R	797
-- Movie	TV-14	1427
-- Movie	TV-G	126
-- Movie	TV-MA	2062
-- Movie	TV-PG	540
-- Movie	TV-Y	131
-- Movie	TV-Y7	139
-- Movie	TV-Y7-FV	5
-- Movie	UR	3
-- TV Show	NR	4
-- TV Show	R	2
-- TV Show	TV-14	730
-- TV Show	TV-G	94
-- TV Show	TV-MA	1143
-- TV Show	TV-PG	321
-- TV Show	TV-Y	175
-- TV Show	TV-Y7	194
-- TV Show	TV-Y7-FV	1
     SELECT type, rating, COUNT(*) AS count
     FROM netflix_dataset
     GROUP BY type, rating
     ORDER BY type, rating;

-- Q2: -	Analyse the relationship between ratings and content duration.
-- Ans:- There is no strong correlation between ratings and content duration. Content with shorter durations can receive high ratings, indicating that duration is not the sole determinant of quality or viewer satisfaction.
-- rating avg_duration
-- G	90.26829268292683
-- NC-17	125
-- NR	89.82278481012658
-- PG	98.28222996515679
-- PG-13	108.33061224489796
-- R	106.45556946182728
-- TV-14	73.57672693555864
-- TV-G	46.41818181818182
-- TV-MA	62.292979719188764
-- TV-PG	60.09639953542393
-- TV-Y	21.65686274509804
-- TV-Y7	28.846846846846848
-- TV-Y7-FV	57.333333333333336
-- UR	106.33333333333333
     SELECT rating, AVG(duration) AS avg_duration
     FROM netflix_dataset
     GROUP BY rating
     ORDER BY rating;
