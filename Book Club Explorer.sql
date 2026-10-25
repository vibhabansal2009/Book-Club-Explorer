CREATE TABLE IF NOT EXISTS book (
    book_id  INTEGER PRIMARY KEY,
    title    TEXT    NOT NULL,
    genre    TEXT    NOT NULL,
    rating   REAL    NOT NULL,
    pages    INTEGER NOT NULL,
    pub_year INTEGER NOT NULL
);

INSERT INTO book VALUES (1, 'Kismat Connection',           'Rom-Com',    8.0,  304, 2023);
INSERT INTO book VALUES (2, 'Twisted Love',                'Romance',    8.5,  352, 2021);
INSERT INTO book VALUES (3, 'Twisted Games',               'Romance',    9.5,  448, 2021);
INSERT INTO book VALUES (4, 'Twisted Hate',                'Romance',    9.2,  512, 2022);
INSERT INTO book VALUES (5, 'Twisted Lies',                'Romance',    9.7,  560, 2022);
INSERT INTO book VALUES (6, 'India Before Gandhi',         'History',    8.8,  880, 2015);
INSERT INTO book VALUES (7, 'Before The Coffee Gets Cold', 'Fantasy',    7.9,  288, 2017);
INSERT INTO book VALUES (8, 'Tuesdays With Morrie',        'Self Help',  8.7,  295, 2020);

SELECT * FROM book;

SELECT title, rating FROM book ORDER BY rating ASC;

SELECT title, rating FROM book ORDER BY rating DESC;

SELECT title, genre, rating FROM book ORDER BY genre ASC;

SELECT title, rating FROM book ORDER BY rating DESC LIMIT 3;

SELECT title, pub_year FROM book ORDER BY pub_year ASC LIMIT 5;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre, SUM(pages) AS total_pages, AVG(rating) AS avg_rating 
FROM book
GROUP BY genre;

SELECT genre, COUNT(*) AS book_count
FROM book
GROUP BY genre
HAVING COUNT(*) > 2;

SELECT genre, AVG(rating) AS avg_rating 
FROM book
GROUP BY genre
HAVING AVG(rating) >= 8.5;