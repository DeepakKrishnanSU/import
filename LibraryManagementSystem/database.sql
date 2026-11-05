CREATE TABLE IF NOT EXISTS book (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100),
    isbn VARCHAR(30),
    edition VARCHAR(20),
    publication_year INTEGER,
    category VARCHAR(50),
    available_copies INTEGER NOT NULL
);