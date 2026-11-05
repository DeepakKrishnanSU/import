CREATE TABLE IF NOT EXISTS employee (
    employee_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    department VARCHAR(50),
    designation VARCHAR(50),
    date_of_joining VARCHAR(20),
    salary DOUBLE PRECISION NOT NULL
);