SELECT 
  CONCAT(author_fname, ' ', author_lname) AS 'Author',
  title 
  FROM books;

SELECT 
  CONCAT_WS(' ', author_fname, author_lname) AS 'Author',
  title
  FROM books;