CREATE DATABASE student_system;
USE student_system;

-- Create Database : Create the project  Storage
-- Use : Help to active/select that Created db and allow future activities goes inside it

-- Create Student table

Create Table students (
	id Int Auto_increment primary key,
    name Varchar(100),
    email Varchar(100),
    age Int,
    create_at TimeStamp Default Current_timestamp
);

Desc students

-- Insert Students' Data 
