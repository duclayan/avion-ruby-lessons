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

CREATE TABLE classrooms (id integer, student_id integer, section varchar(1))
INSERT INTO classrooms (id, student_id,section)
VALUES
(1,1,'A'),
(2,2,'A'),
(3,3,'B'),
(4,4,'C'),
(5,5,'B'),
(6,6,'A'),
(7,7,'C'),
(8,8,'B'),
(9,9,'B'),
(10,10,'C');

-- Inner Join
SELECT students.first_name, students.last_name, classrooms.student_id
FROM students
INNER JOIN classrooms
ON students.id = classrooms.id

-- Left Join
SELECT first_name
FROM students
LEFT JOIN classrooms
ON students.id = classrooms.id

-- Right Join
SELECT students.first_name, students.last_name, classrooms.student_id
FROM students
RIGHT JOIN classrooms
ON students.id = classrooms.id

-- Full Join
SELECT students.first_name, students.last_name, classrooms.student_id
FROM students
FULL JOIN classrooms
ON students.id = classrooms.id