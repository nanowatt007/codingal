-- Create

CREATE TABLE IF NOT EXISTS HACKER_NEWS (
POST_ID INT NOT NULL,
TITLE TEXT NOT NULL,
AUTHOR TEXT NOT NULL,
URL TEXT NOT NULL,
POST_DATE DATE NOT NULL,
PRIMARY KEY (POST_ID)
);


-- Insert

INSERT INTO HACKER_NEWS (POST_ID, TITLE, AUTHOR, URL, POST_DATE) VALUES
(1, 'Introducing SQLite', 'D. Richard Hipp', 'https://sqlite.org/intro.html', '2000-08-17'),
(2, 'SQLite 3.0 Released', 'D. Richard Hipp', 'https://sqlite.org/releaselog/3_0.html', '2004-06-18'),
(3, 'SQLite Autoconf 3.35.5 Released', 'D. Richard Hipp', 'https://sqlite.org/releaselog/3_35_5.html', '2021-04-19'),
(4, 'SQLite 3.40.0 Released', 'D. Richard Hipp', 'https://sqlite.org/releaselog/3_40_0.html', '2023-05-17');


-- Select

SELECT
POST_ID AS 'Post ID',
TITLE AS 'Title',
AUTHOR AS 'Author',
POST_DATE AS 'Post Date'
FROM HACKER_NEWS
ORDER BY POST_DATE ASC;

SELECT
COUNT(POST_ID) AS 'Articles',
AUTHOR AS 'Author'
FROM HACKER_NEWS
GROUP BY AUTHOR;