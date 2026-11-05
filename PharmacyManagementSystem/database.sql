CREATE TABLE IF NOT EXISTS medicine (
    medicine_id INTEGER PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    manufacturer VARCHAR(100),
    batch_number VARCHAR(50),
    price DOUBLE PRECISION NOT NULL,
    quantity INTEGER NOT NULL,
    manufacturing_date VARCHAR(20),
    expiry_date VARCHAR(20),
    supplier_name VARCHAR(100)
);