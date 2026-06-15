CREATE TABLE sales_by_genre AS
SELECT
    genre,
    SUM(global_sales) AS total_sales
FROM raw_game_sales
GROUP BY genre;

CREATE TABLE clean_game_sales AS
SELECT
    TRIM(Name) AS game_name,
    TRIM(Platform) AS platform,
    Year,
    TRIM(Genre) AS genre,
    TRIM(Publisher) AS publisher,
    CAST(Global_Sales AS DOUBLE) AS global_sales
FROM raw_game_sales
WHERE Year IS NOT NULL;