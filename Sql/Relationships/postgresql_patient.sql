
-- CREATE TABLE next_of_kin(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL UNIQUE,
--     phone INTEGER
-- );

-- CREATE TABLE doctor(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     profession VARCHAR(255) NOT NULL DEFAULT 'gen-doctor'
-- );

-- DROP TABLE patient;

-- CREATE TABLE patient(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) ,
--     phone INTEGER,
--     doctor_id INTEGER REFERENCES doctor(id) ON DELETE SET NULL 
-- )





-- CREATE TABLE class(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     code VARCHAR(255) NOT NULL UNIQUE
-- )

-- Mid Table

-- CREATE TABLE class_student(
--     id SERIAL PRIMARY KEY,
--     student_id INTEGER NOT NULL REFERENCES students(id),
--     class_id INTEGER NOT NULL REFERENCES class(id)
    --    UNIQUE(student_id,class_id),
    --    CONSTRAINT check_that_student_age_is_less_than_23 CHECK(age<23)
    --generated_unique_key VARCHAR(255) GENERATED ALWAYS AS (student_id::VARCHAR || class_id::VARCHAR) STORED
-- )



-- ALTER TABLE students DROP COLUMN address_id
-- COMBINED KEY- >UNIQUE

-- ALTER TABLE class_student ADD CONSTRAINT unique_key UNIQUE(student_id,class_id)

ALTER TABLE class_student ADD COLUMN generated_unique_key VARCHAR(255) GENERATED ALWAYS AS (student_id::VARCHAR || class_id::VARCHAR) STORED;