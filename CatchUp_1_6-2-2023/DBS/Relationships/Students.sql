-- students ,next of kin


-- CREATE TABLE students(
--     id PRIMARY KEY AUTO-INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     kin_name VARCHAR(255) NOT NULL,
--     kin_email VARCHAR(255) NOT NULL,
    
-- )

-- CREATE TABLE students(
--     id PRIMARY KEY AUTO-INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,

-- )

-- CREATE TABLE kins(
--     id PRIMARY KEY AUTO-INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
-- )

-- -- ONE TO ONE
-- -- ONE TO MANY
-- -- MANY TO MANY


--Serial IntegerThat AutoINCREMENT

--Create this table,Try to add employees

-- CREATE TABLE employees(
--     id SERIAL PRIMARY KEY, 
--     name TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE,
--     salary_config INTEGER NOT NULL UNIQUE
-- );


--ONE TO ONE


--Refernces What happens when that record is delete.
-- Restric,CASCADE,SET 
--Better Table
-- DROP TABLE employees;
-- CREATE TABLE employees(
--     id SERIAL PRIMARY KEY, 
--     name TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE,
--     -- salary_config_id INTEGER NOT NULL UNIQUE REFERENCES salary_config(id)
-- );

-- --Settings table, benfits, vat, salary
-- CREATE TABLE salary_config(
--   id SERIAL PRIMARY KEY, 
--   salary INTEGER DEFAULT 8000,
--   vat INTEGER
-- --   employee_id INTEGER NOT NULL UNIQUE REFERENCES employees(email)
-- )

--ONE TO MANY

-- CREATE TABLE salary_payment(
--     id SERIAL PRIMARY KEY, 
--     amount INTEGER,
--     date TEXT,
--     employee_id INTEGER NOT NULL REFERENCES employees(id)
-- )


--ONE TO ONE

MANY TO MANY

--Therapist ,patients,Appointments

-- Appointments=(therapist,patient)

-- Group appointment.
