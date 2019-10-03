SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT released_year FROM books ORDER BY released_year ASC;

SELECT DISTINCT 
  CONCAT_WS(' ', author_fname, author_lname) 
  AS 'unique_author' FROM books;

SELECT DISTINCT
  author_fname, author_lname 
  FROM books;