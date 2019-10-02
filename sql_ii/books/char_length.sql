SELECT CHAR_LENGTH(title)
    AS 'Title Length',
    CONCAT_WS(' ', author_fname, author_lname)
    AS 'Author Name'
  FROM books;