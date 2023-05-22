-- string
-- number,object,array

--sqlite 
-- Null: 
-- Real: Float
-- TEXT: 
-- VARCHAR: kra_pin(8)
-- BOOLEAN
-- DATE AND TIME

-- PRimary KEY is a unique key that identifies a row.

-- CREATE TABLE students(
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     name VARCHAR(20),
--     bio TEXT,
--     email VARCHAR(200),
--     is_single BOOLEAN,
--     created_date DATE DEFAULT(date('now')) --sqlite handle dates, --mysql handle
-- )

-- INSERT
-- INSERT INTO <table_name> (fields,fields,fields) VALUES ()

-- INSERT INTO students (name,bio,email,is_single) 
-- VALUES (
-- 'Text Char Text Char  Text Char  Text Char Text Char ',
-- 'Good performance in class',
-- 'bonface@gmail.com',
-- true
-- );

-- 
SELECT * FROM students;