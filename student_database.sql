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
-- Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Insert course records
INSERT INTO courses VALUES
(101, 'Database Management System', 1),
(102, 'SQL Fundamentals', 2),
(103, 'Web Development', 3),
(104, 'Data Structures', 4);

-- Join students with courses
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id;
