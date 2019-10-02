SELECT 
  CONCAT('uppercase author name: ', UPPER(author_lname)) AS 'upper',
  CONCAT('lowercase author name: ', LOWER(author_lname)) AS 'lower'
FROM books;