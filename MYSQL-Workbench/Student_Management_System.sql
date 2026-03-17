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

-- To describe our students table
Desc students;

-- Insert Students' Data 

Insert Into students (name, email, age)
Values
('Alice', 'alice@email,com', 20),
('Bob', 'bob@email,com', 22),
('Charlie', 'charloe@email,com', 19);

-- View the Data inserted

Select * From students;

-- Some Practice 

Select name From students;
Select * From students Where age> 19;
Select * From students Order by age Desc;

-- Add courses + Relationships

/*
 We want 
     - A student can take many courses
     - A course can have many students
         This is called a Many-to-Many relationship
*/

Create Table coursed (
	id Int Auto_increment Primary Key,
    course_name Varchar(100),
    instructor Varchar(100)
);

-- Insert data in courses

Insert Into courses (cour)












