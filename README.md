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
### SELECTION REFINEMENT
- DISTINCT returns only the unique names from the query
```SQL
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT released_year FROM books ORDER BY released_year ASC;

SELECT DISTINCT 
  CONCAT_WS(' ', author_fname, author_lname) 
  AS 'unique_author' FROM books;

SELECT DISTINCT
  author_fname, author_lname 
  FROM books;
```

- ORDER BY defaults results to ascending
+ You can use numbers to reference the query args
+ You can add multiple selections to ORDER BY (order by first if they're the same order by second)
```SQL
SELECT title FROM books ORDER BY title;
SELECT title FROM books ORDER BY title DESC;
SELECT pages FROM books ORDER BY pages;
SELECT title, author_fname, author_lname FROM books ORDER BY 1;
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
```

- SELECT WITH LIKE AND WILD CARDS
```SQL
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
SELECT title FROM books WHERE  title LIKE 'the';
 
SELECT title FROM books WHERE  title LIKE '%the';
 
SELECT title FROM books WHERE title LIKE '%the%';
```