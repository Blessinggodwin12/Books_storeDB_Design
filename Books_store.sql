Data Definition Language--

CREATE TABLE authors(
	id Serial PRIMARY KEY,
	name VarChar (255),
	bio VarChar (255)
);

CREATE TABLE books_authors(
	is_main_author Boolean	
);

CREATE TABLE books(
	id Serial PRIMARY KEY,
	title VarChar(255),
	desceiption VarChar(255),
	ISBN Char (13)			  
);

CREATE TABLE genres(
	id Serial PRIMARY KEY,
	name VarChar (255),
	description VarChar (255)
);

ALTER TABLE books_authors ADD COLUMN author_id INT;

ALTER TABLE books_authors ADD FOREIGN KEY (author_id) REFERENCES authors (id);

ALTER TABLE books_authors ADD COLUMN book_id INT;

ALTER TABLE books_authors ADD FOREIGN KEY (book_id) REFERENCES books(id);

ALTER TABLE books ADD COLUMN genre_id INT;

ALTER TABLE books ADD FOREIGN KEY (genre_id) REFERENCES genres (id);

-- Data Manipulation Language

INSERT INTO authors VALUES

(1, 'philip kotler', 'Economist'),
(2, 'Ferdinard Drucker', 'Educator'),
(3, 'Naepoleon Hill', 'Salesman'),
(4, 'Brian Tracy', 'Motivator'),
(5, 'Garrett Moon', 'Salesman');

SELECT * FROM authors;

INSERT INTO genres VALUES
(1, 'Trudi Canavan', 'Fiction'),
(2, 'Josh Malerman', 'Narrative'),
(3, 'Lucia Berlin', 'Short Story'),
(4, 'Stephen King', 'Horror'),
(5, 'David Sedaris', 'Humor');

SELECT * FROM genres;

INSERT INTO books VALUES
(1, 'Social Marketing', 'Author of Marketing', 9780029184615, 1),
(2, 'Managing Oneself', 'Personal Management', 9781633691018, 2),
(3, 'Think and Grow Rich', 'Strategy', 9781932429237, 3),
(4, 'Change your Thinking change your Life', 'Self Development', 9780470191910, 4),
(5, 'Marketing Formular', 'Marketing Strategy', 9780357516300, 5);

SELECT * FROM books;

INSERT INTO books_authors VALUES
('TRUE', 1 ,1),
('FALSE', 2 ,2),
('TRUE', 3 ,3),
('FALSE', 4 ,4),
('TRUE', 5 ,5);

SELECT * FROM books_authors;