-- Read ALL RECORDS

SELECT * FROM students;

-- GET A SPECIFI student by email

SELECT * FROM students WHERE(email='amos@gmail.com');

-- Be specifi about the columsn you want

SELECT name,id FROM students;

-- Where the marks are zero

SELECT * FROM students WHERE(marks=0);


SELECT * FROM students WHERE marks>10 OR email='amos@gmail.com'