CREATE TABLE IF NOT EXISTS blood_donor (
    donor_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    gender VARCHAR(10),
    blood_group VARCHAR(10) NOT NULL,
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    last_donation_date VARCHAR(20),
    health_status VARCHAR(50)
);