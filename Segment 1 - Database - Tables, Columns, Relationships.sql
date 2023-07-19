-- Q1:-	Identify the tables in the dataset and their respective columns.
-- ans:- there are only one table in the database:
       Table: netflix_dataset
       Columns: show_id, type, title, director, country, date_added, release_year, rating, duration, listed_in.

use netflix_dataset;
-- Q2:- 	Determine the number of rows in each table within the schema.
-- ans:- 
        SELECT COUNT(*) FROM netflix_dataset; -- Table netflix_dataset contains 8790 records.

-- Q3:- 	Identify and handle any missing values in the dataset.
-- ans:- 
      SELECT * FROM netflix_dataset WHERE show_id IS NULL; -- To identify rows of the show_id column with missing values.
      SELECT * FROM netflix_dataset WHERE type IS NULL; -- To identify rows of the type column with missing values.
      SELECT * FROM netflix_dataset WHERE title IS NULL; -- To identify rows of the title column with missing values.
      SELECT * FROM netflix_dataset WHERE director IS NULL; -- To identify rows of the director column with missing values.
      SELECT * FROM netflix_dataset WHERE country IS NULL; -- To identify rows of the country column with missing values.
      SELECT * FROM netflix_dataset WHERE date_added IS NULL; -- To identify rows of the date_added column with missing values.
      SELECT * FROM netflix_dataset WHERE release_year IS NULL; -- To identify rows of the release_year column with missing values.
      SELECT * FROM netflix_dataset WHERE rating IS NULL; -- To identify rows of the rating column with missing values.
      SELECT * FROM netflix_dataset WHERE duration IS NULL; -- To identify rows of the duration column with missing values.
      SELECT * FROM netflix_dataset WHERE listed_in IS NULL; -- To identify rows of the listed_in column with missing values.
  
