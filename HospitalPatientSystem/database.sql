CREATE TABLE IF NOT EXISTS patient (
    patient_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    blood_group VARCHAR(10)
);