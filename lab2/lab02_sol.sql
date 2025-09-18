DROP DATABASE IF EXISTS movie_ratings;

CREATE DATABASE movie_ratings;

USE movie_ratings;
/* Create the three tables */
CREATE TABLE movies (
    PRIMARY KEY (movie_id),
    movie_id      INT,
    movie_name   VARCHAR(50),
    release_date  DATE,
    genre        VARCHAR(50)
);

CREATE TABLE consumers(
    PRIMARY KEY (consumer_id),
    consumer_id     INT,
    consumer_first_name VARCHAR(50),
    consumer_last_name VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state CHAR(2),
    zip_code CHAR(5)
);

CREATE TABLE ratings (

    movie_id INT,
    consumer_id INT,
    when_rated DATETIME,
    rating INT,
    PRIMARY KEY (when_rated),
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id), 
    FOREIGN KEY (consumer_id) REFERENCES consumers (consumer_id)
);


/* Insert Infos */

INSERT INTO movies (movie_id, movie_name, release_date, genre) VALUES
(1, 'The Hunt for Red October', '1990-03-02', 'Action, Adventure, Thriller'),
(2, 'Lady Bird', '2017-12-01', 'Comedy, Drama'),
(3, 'Inception', '2010-08-16', 'Action, Adventure, Science Fiction'),
(4, 'Monty Python and the Holy Grail', '1975-04-03', 'Comedy');


INSERT INTO consumers (consumer_id, consumer_first_name, consumer_last_name, address, city, state, zip_code) VALUES
(1, 'Toru', 'Okada', '800 Glenridge Ave', 'Hobart', 'IN', '46343'),
(2, 'Kumiko', 'Okada', '864 NW Bohemia St', 'Vincentown', 'NJ', '08088'),
(3, 'Noboru', 'Wataya', '342 Joy Ridge St', 'Hermitage', 'TN', '37076'),
(4, 'May', 'Kasahara', '5 Kent Rd', 'East Haven', 'CT', '06512');


INSERT INTO ratings (movie_id, consumer_id, when_rated, rating) VALUES
(1, 1, '2010-09-02 10:54:19', 4),
(1, 3, '2012-08-05 15:00:01', 3),
(1, 4, '2016-10-02 23:58:12', 1),
(2, 3, '2017-03-27 00:12:48', 2),
(2, 4, '2018-08-02 00:54:42', 4);

SELECT * FROM movies;
SELECT * FROM consumers;
SELECT * FROM ratings;

    /* Generate a report */
    SELECT consumer_first_name, consumer_last_name, movie_name, rating
      FROM movies
           NATURAL JOIN ratings
           NATURAL JOIN consumers;



--Design Flaw:
/* Inside the movie table, the genre filed using multiple words descriptions and be separated by comma,
which is hard to edit and filter in the future place.

Instead we could create another table for Genre which contains two fields: genre_id and genre_name
to help create a more gerneral way of movie data description
*/

-- Drop the entire database and rebuild it with the normalized genre structure
DROP DATABASE IF EXISTS movie_ratings;

CREATE DATABASE movie_ratings;
USE movie_ratings;

-- Movies table
CREATE TABLE movies(
    PRIMARY KEY (movie_id),
    movie_id INT ,
    movie_name VARCHAR(50),
    release_date DATE
);

-- Consumers table
CREATE TABLE consumers(
    PRIMARY KEY(consumer_id),
    consumer_id INT ,
    consumer_first_name VARCHAR(50),
    consumer_last_name VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(100),
    state CHAR(2),
    zip_code CHAR(5)
);

-- Ratings table
CREATE TABLE ratings(
    movie_id INT,
    consumer_id INT,
    when_rated DATETIME,
    rating INT,
    PRIMARY KEY (when_rated),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (consumer_id) REFERENCES consumers(consumer_id)
);

-- Genres table
CREATE TABLE genres(
    PRIMARY KEY(genre_id),
    genre_id INT,
    genre_name VARCHAR(50)
);

-- MovieGenres table
CREATE TABLE movie_genres(
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

