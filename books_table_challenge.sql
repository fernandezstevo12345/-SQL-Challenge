--CREATE TABLE Books (
    AuthorID INT,
    Title VARCHAR(50),
    Revision INT,
    CONSTRAINT PK_Books PRIMARY KEY (AuthorID, Title, Revision)
);

--INSERT INTO Books (AuthorID, Title, Revision) 
VALUES 
(1, 'AAAAAAAAAAAAA', 1),
(2, 'BBBBBBBBBBBBBB', 1),
(3, 'CCCCCCCCCCCCCC', 1),
(4, 'DDDDDDDDDDDD', 1),
(5, 'EEEEEEEEEEEEEEE', 1);


--DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
   
    INSERT INTO Books (AuthorID, Title, Revision) 
    VALUES (@i, REPLICATE(CHAR(64 + @i % 26), 12) + CAST(@i AS VARCHAR(5)), 1); 

    SET @i = @i + 1;
END;

--INSERT INTO Books (AuthorID, Title, Revision)
SELECT AuthorID, Title, 2
FROM Books;


--DELETE FROM Books
WHERE Revision = 2 AND AuthorID % 2 = 1;


--SELECT * from books



