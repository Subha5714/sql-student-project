-- Create database
CREATE DATABASE student_db;

-- Select database
USE student_db;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

-- Insert student records
INSERT INTO students VALUES
(1, 'Asha', 'MCA', 85),
(2, 'Ravi', 'MCA', 78),
(3, 'Kiran', 'MCA', 92),
(4, 'Divya', 'MCA', 67);

-- Display all students
SELECT * FROM students;

-- Get students with marks greater than 80
SELECT name, marks FROM students WHERE marks > 80;

-- Calculate average marks per course
SELECT course, AVG(marks) FROM students GROUP BY course;

-- Get students between 70 and 90 marks
SELECT * FROM students WHERE marks BETWEEN 70 AND 90;

-- Students with marks > 80
SELECT name, marks FROM students WHERE marks > 80;

-- Average marks by course
SELECT course, AVG(marks) FROM students GROUP BY course;
