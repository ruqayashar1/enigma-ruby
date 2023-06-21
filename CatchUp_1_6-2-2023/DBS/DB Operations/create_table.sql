-- CREATE TABLE students(
--   id INTEGER PRIMARY KEY AUTOINCREMENT,
--   name TEXT,
--   email TEXT
-- )

-- //   Constraints in a table. ->db engine

-- CREATE TABLE students_constrained(
--  id INTEGER PRIMARY KEY AUTOINCREMENT,
--  name TEXT NOT NULL, 
--  email TEXT NOT NULL UNIQUE
-- )

-- INSERT
--INSERT INTO <table_name> (<column1>,<column2>,<column3>)
-- VALUES (<field1>,<field2>,<field3)

INSERT INTO students (name,email) VALUES('John','john@gmail.com');
INSERT INTO students_constrained (name,email) VALUES('John','john@gmail.com')

-- INSERT INTO students (name) VALUES ('Sam');
-- INSERT INTO students_constrained (name) VALUES ('Sam')