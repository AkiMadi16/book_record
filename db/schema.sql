CREATE DATABASE book_records_db;
\c book_records_db

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT,
    image_url TEXT, 
    author TEXT,
    illustrator TEXT,
    quote TEXT,
    user_id INTEGER
);

INSERT INTO books(title, image_url, author, illustrator, quote)
VALUES('Tidler', 'https://www.booktopia.com.au/covers/big/9781407170756/3658/tiddler.jpg', 'Julia Donaldson', 'Alex Scheffler', 'Tidler is late');


SELECT * FROM books;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    password_digest TEXT,
    photo_url TEXT,
    bio TEXT
);

SELECT * FROM users;


CREATE TABLE comments(
    id SERIAL PRIMARY KEY,
    comment TEXT,
    book_id INTEGER,
    user_id INTEGER
);

SELECT * FROM comments;


CREATE TABLE likes(
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    book_id INTEGER
);

ALTER TABLE likes
ADD CONSTRAINT unique_likes
UNIQUE (user_id, book_id);

SELECT * FROM likes;

