CREATE DATABASE book_records_db;
\c book_records_db

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT,
    image_url TEXT, 
    author TEXT,
    illustrator TEXT,
    quote TEXT
);

INSERT INTO books(title, image_url, author, illustrator, quote)
VALUES('Tidler', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1408928238i/7281298.jpgX.jpg', 'Julia Donaldson', 'Alex Scheffler', 'Tidler is late');


-- SELECT * FROM books;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

SELECT * FROM users;
-- DELETE FROM users;

ALTER TABLE users ADD COLUMN password_digest TEXT;
