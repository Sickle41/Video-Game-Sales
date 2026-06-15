SELECT genre, COUNT(*)
FROM raw_game_sales
GROUP BY genre
ORDER BY COUNT(*) DESC;

SELECT publisher, SUM(global_sales) AS total_sales
FROM raw_game_sales
GROUP BY publisher
ORDER BY total_sales DESC;

SELECT
    publisher,
    ROUND(SUM(global_sales), 2) AS total_sales
FROM clean_game_sales
GROUP BY publisher
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    publisher,
    COUNT(*) AS game_count
FROM clean_game_sales
GROUP BY publisher
ORDER BY game_count DESC
LIMIT 10;

SELECT
    publisher,
    ROUND(AVG(global_sales), 2) AS avg_sales
FROM clean_game_sales
GROUP BY publisher
HAVING COUNT(*) >= 10
ORDER BY avg_sales DESC;