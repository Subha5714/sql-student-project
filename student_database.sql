CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Asha', 'MCA', 85),
(2, 'Ravi', 'MCA', 78),
(3, 'Kiran', 'MCA', 92),
(4, 'Divya', 'MCA', 67);

-- View all students
SELECT * FROM students;

-- Students with marks > 80
SELECT name, marks FROM students WHERE marks > 80;

-- Average marks by course
SELECT course, AVG(marks) FROM students GROUP BY course;