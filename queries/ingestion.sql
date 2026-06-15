CREATE TABLE raw_game_sales AS
SELECT *
FROM read_csv_auto('data/vgsales.csv')