-- Get all students where the data_science score > 30

--SELECT * FROM mock_data WHERE data_science>30

-- Order them based on grade_data_science <ASC or DESC>

-- ORDER BY --- Enamble you to select a column where you can 
-- Order with

--SELECT * FROM mock_data WHERE data_science>30 ORDER BY data_science DESC

-- AGGREGATE COMUNDS -> SUM, MIN,AVARAGE,COUNT,MIN<MAX
-- DISTINCT COMMAND ->DELE DUBLICATE VALUES

-- SELECT DISTINCT data_science FROM mock_data WHERE data_science>30 ORDER BY data_science DESC

-- SELECT COUNT(data_science) FROM mock_data WHERE data_science<30

-- LIMIT AND OFFSET PAGINATION

-- PAGE 1
SELECT * FROM mock_data ORDER BY name  LIMIT 10;

-- PAGE 2

SELECT * FROM mock_data ORDER BY name  LIMIT 10 OFFSET 9;

-- PAGE 3

SELECT * FROM mock_data ORDER BY name  LIMIT 10 OFFSET 19

-- PAGE 3

-- where > SELECT * FROM WHERE name>'Barrie' mock_data ORDER BY name LIMIT 10