-- Create database
CREATE DATABASE IF NOT EXISTS school_db;
USE school_db;

-- Table: students
CREATE TABLE students (
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    total_fees DECIMAL(10,2) NOT NULL
);

-- Table: teachers
CREATE TABLE teachers (
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    specialization VARCHAR(100),
    salary DECIMAL(10,2)
);

-- Table: courses
CREATE TABLE courses (
    code VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    max_capacity INT NOT NULL,
    teacher_id VARCHAR(20),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE SET NULL
);

-- Table: enrollments (many-to-many between students and courses)
CREATE TABLE enrollments (
    student_id VARCHAR(20),
    course_code VARCHAR(20),
    enrollment_date DATE DEFAULT (CURRENT_DATE),
    PRIMARY KEY (student_id, course_code),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_code) REFERENCES courses(code) ON DELETE CASCADE
);

-- Table: payments (fee payments by students)
CREATE TABLE payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id VARCHAR(20),
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

Desc students;