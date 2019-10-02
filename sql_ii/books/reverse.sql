SELECT 
  REVERSE(title) 
    FROM books;

SELECT 
CONCAT(
  SUBSTRING(
    REVERSE(title), 1, 10
    ),
    '...'
  )
    FROM books;