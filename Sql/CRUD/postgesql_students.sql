
DROP TABLE students;

CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    marks INTEGER NOT NULL DEFAULT 0,
    CHECK (marks>-1 AND marks < 100)
)