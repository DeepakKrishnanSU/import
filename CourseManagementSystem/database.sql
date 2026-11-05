CREATE TABLE IF NOT EXISTS course (
    course_id INTEGER PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    faculty_name VARCHAR(100),
    credits INTEGER,
    semester INTEGER,
    course_capacity INTEGER NOT NULL
);