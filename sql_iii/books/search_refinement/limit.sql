SELECT 
  title, 
  released_year AS 'Released'
  FROM books
  ORDER BY released_year DESC
  LIMIT 10;