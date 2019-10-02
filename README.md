# SQL
### STRING FUNCTIONS
- Concat
```SQL
SELECT 
  CONCAT(author_fname, ' ', author_lname) AS 'Author',
  title 
  FROM books;
```
- Concat with WS (auto separator)
```SQL
SELECT 
  CONCAT_WS(' ', author_fname, author_lname) AS 'Author',
  title
  FROM books;
```
- SUBSTRING (note SQL index starts at 1)
```SQL
SELECT 
  SUBSTRING(
    title, 1 , 10
  )
  FROM books;

SELECT 
  CONCAT(
    SUBSTRING(
      title, 1 , 10
    ),
    '...'
  )
 
  FROM books;
  ```
  - REPLACE
  ``` SQL
  SELECT 
    REPLACE(pages, 0, 50)
    FROM books;
  ```