# creating tables

CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL
);

CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE ratings (
    user_id INTEGER,
    movie_id INTEGER,
    rating INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
# inserting data
INSERT INTO movies (movie_id, title)
VALUES
    (1, 'Sinners'),
    (2, 'One Battle After Another'),
    (3, 'Frankenstein'),
    (4, 'Hamnet'),
    (5, 'Marty Supreme'),
    (6, 'F1');

INSERT INTO users (user_id, name)
VALUES
    (1, 'Ana'),
    (2, 'Joe'),
    (3, 'Christine'),
    (4, 'Anna'),
    (5, 'Aika');
INSERT INTO ratings (user_id, movie_id, rating)
VALUES
    (1, 1, 5),
    (1, 2, 5),
    (1, 3, NULL),
    (1, 4, 4),
    (1, 5, 4),
    (1, 6, NULL),

    (2, 1, 3),
    (2, 2, 4),
    (2, 3, 5),
    (2, 4, 4),
    (2, 5, 3),
    (2, 6, 3),

    (3, 1, 3),
    (3, 2, 3),
    (3, 3, NULL),
    (3, 4, 3),
    (3, 5, 4),
    (3, 6, 5),

    (4, 1, 5),
    (4, 2, NULL),
    (4, 3, 5),
    (4, 4, 4),
    (4, 5, 5),
    (4, 6, 5),

    (5, 1, 4),
    (5, 2, 3),
    (5, 3, 4),
    (5, 4, NULL),
    (5, 5, 4),
    (5, 6, 2);
    
# joining data

SELECT
    users.name,
    movies.title,
    ratings.rating
FROM ratings
JOIN users
    ON ratings.user_id = users.user_id
JOIN movies
    ON ratings.movie_id = movies.movie_id;

# missing values check
SELECT
    users.name,
    movies.title,
    ratings.rating
FROM ratings
JOIN users
    ON ratings.user_id = users.user_id
JOIN movies
    ON ratings.movie_id = movies.movie_id
WHERE ratings.rating IS NULL;