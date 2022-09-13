CREATE DATABASE planets_app;
\c planets_app

CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT, 
    diameter REAL,
    distance REAL,
    mass REAL,
    moon_count INTEGER
);

INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count)
VALUES('Earth', 'https://i.imgur.com/3xcqniX.jpg', 1.2e6, 1, 5.9e26 , 1);

INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count)
VALUES('Neptune', 'https://i.imgur.com/HwnYELk.jpg', 4.9e6, 30.1, 1.02e26, 14);



-- SELECT * FROM planets;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

SELECT * FROM users;
-- DELETE FROM users;

ALTER TABLE users ADD COLUMN password_digest TEXT;
