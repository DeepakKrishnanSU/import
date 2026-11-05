CREATE TABLE IF NOT EXISTS bank_account (
    account_id INTEGER PRIMARY KEY,
    account_number VARCHAR(30) UNIQUE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    age INTEGER,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    account_type VARCHAR(20),
    account_balance DOUBLE PRECISION NOT NULL
);