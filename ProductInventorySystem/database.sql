CREATE TABLE IF NOT EXISTS product (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    brand VARCHAR(50),
    description VARCHAR(255),
    price DOUBLE PRECISION NOT NULL,
    quantity INTEGER NOT NULL,
    supplier_name VARCHAR(100),
    manufacturing_date VARCHAR(20),
    expiry_date VARCHAR(20)
);