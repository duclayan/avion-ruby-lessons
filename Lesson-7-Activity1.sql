CREATE TABLE students (id integer, first_name varchar(30), middle_name varchar(30), last_name varchar(30), age integer, loc varchar(20));

INSERT INTO students (id, first_name, middle_name, last_name, age, loc)
VALUES(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
(2, 'John', 'Blank', 'Young', 20, 'Manila'),
(3, 'Victor', 'Blank', 'Rivera', 21, 'Manila'),
(4, 'Adrian', 'Blank', 'Co', 19, 'Laguna'),
(5, 'Pao', 'Blank', 'Riosa', 22, 'Marikina'),
(6, 'Piolo', 'Blank', 'Pascual', 25, 'Marikina');

UPDATE students
SET first_name = "Ana", middle_name = "Cui", last_name = "Cajocson", age = 25, loc = "Bulacan"
WHERE id = 1

DELETE FROM students
WHERE id = 6

-- Display count of all students

SELECT COUNT (*)
FROM students

-- Select all students with location = Manila
SELECT first_name
FROM students
WHERE loc = 'Manila'

-- Display avg age of all students
SELECT AVG(age)
FROM students

-- Display Students by age descending order
SELECT first_name
FROM students
ORDER BY age DESC 