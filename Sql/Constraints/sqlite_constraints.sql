
-- DROP TABLE students;


--  CREATE TABLE students(
--      id INTEGER PRIMARY KEY AUTOINCREMENT,
--      name TEXT NOT NULL, ---This is required.
--      email TEXT NOT NULL UNIQUE,
--      score INTEGER CHECK(score>0 AND score<100)
--  )


-- CHECK that the data is in the correct range
-- 

INSERT INTO students (email) VALUES('alfred2.wambua@gmail.com');

SELECT * FROM students;
