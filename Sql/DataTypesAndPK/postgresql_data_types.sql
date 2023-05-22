-- Numeric (INTEGER,BIGINT,NUMERIC,REAL,DOUBLE PRECISION)
-- CHARACTERS (TEXT,VARCHAR)
-- DATE AND TIME TYPES (DATE(y,m,d),TIME(h,ms),TIMESTAMP(date_and_time))
-- BOOLEAN ('true' or 'false')
-- ARRAY TYPES
-- JSON

-- DROP TABLE students;

-- CREATE TABLE students(
--     id SERIAL,
--     name VARCHAR(20),
--     bio TEXT,
--     email VARCHAR(200),
--     phone INTEGER,
--     is_single BOOLEAN,
--     created_date DATE DEFAULT CURRENT_DATE
-- )

-- INSERT INTO students (name,bio,email,is_single) 
-- VALUES (
-- 'Test Student Test Student Test Student Test Student',
-- 'Good performance in class',
-- 'bonface@gmail.com',
-- true
-- );


-- SELECT * FROM students;

-- Null Data Type.
-- Absence of a value

INSERT INTO students (name,email,is_single) 
VALUES (
'Test Student',
'bonface@gmail.com',
true
);

SELECT * FROM students;