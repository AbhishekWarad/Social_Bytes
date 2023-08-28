show databases
use newforme

CREATE TABLE Student (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25)
);


INSERT INTO Student VALUES(1, 'Ae', 20, 'davi nagar ,kalaburgi');
INSERT INTO Student VALUES(2, 'B', 22, 'santosh nagar ,kalaburgi');
INSERT INTO Student VALUES(3, 'C', 21, 'ineuron nagar ,kalaburgi');
INSERT INTO Student VALUES(4, 'Dd', 23, 'Krish nayak,kalaburgi');
INSERT INTO Student VALUES (5, 'E', 19, 'sunny nagar ,kalaburgi');

SELECT *
FROM Student
ORDER BY Age ASC
LIMIT 1;

SELECT DISTINCT Age
FROM Student
ORDER BY Age DESC
LIMIT 1 OFFSET 1;