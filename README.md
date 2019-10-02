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
  - REVERSE 
```SQL
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
  ```

  - CHAR_LENGTH
```SQL
SELECT CHAR_LENGTH(title)
    AS 'Title Length',
    CONCAT_WS(' ', author_fname, author_lname)
    AS 'Author Name'
  FROM books;
```
- UPPER_LOWER
```SQL
SELECT 
  CONCAT('uppercase author name: ', UPPER(author_lname)) AS 'upper',
  CONCAT('lowercase author name: ', LOWER(author_lname)) AS 'lower'
FROM books;
```