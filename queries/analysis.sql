SELECT genre, COUNT(*)
FROM raw_game_sales
GROUP BY genre
ORDER BY COUNT(*) DESC;

SELECT publisher, SUM(global_sales) AS total_sales
FROM raw_game_sales
GROUP BY publisher
ORDER BY total_sales DESC;