-- Table is -
--  Keyword (let ) ALL KEYWORDS ARE GOIN TO BE CAPITALIZED
-- Create used to a new db or table

--columns of table 

-- create table <table>
-- delete a table from sqlit and postgresql
-- drop table <table_name>

CREATE TABLE students(
     id INTEGER PRIMARY KEY AUTOINCREMENT, --postgresql SERIAL
     name TEXT,
     email TEXT,
     phone INTEGER,
     gender TEXT
)