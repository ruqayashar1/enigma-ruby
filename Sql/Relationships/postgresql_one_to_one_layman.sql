
-- CREATE TABLE address(
--     id SERIAL PRIMARY KEY,
--     country VARCHAR(255) NOT NULL,
--     county VARCHAR(255) NOT NULL,
--     pobox VARCHAR(255) NOT NULL,
--     city VARCHAR(255) NOT NULL
       student_id INTEGER NOT NULL UNIQUE REFERENCES students(id)
-- );

DROP TABLE students;

-- ON DELETE RESTRICT

-- CREATE TABLE students(
--      id SERIAL PRIMARY KEY,
--      name VARCHAR(255) NOT NULL,
--      email VARCHAR(255) NOT NULL UNIQUE,
     
-- ) 

-- SELECT * FROM address WHERE id=(SELECT address_id FROM students WHERE email='amos@gmail.com')

-- INSERT INTO students (name,email,address_id)
-- VALUES('sam', 'sam@gmail.com',2)
--address{},students{}
--INSER INT AD()
--students 

-- ONE TO ONE, ONE TO MANY, MANY TO MANY

--patients, next of kin -> patient needs a next of kin and the next of kin is unique
--patient and doctor -> One to Many ->Each doctor can have multiple consultations.