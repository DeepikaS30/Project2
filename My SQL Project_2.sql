-- 1.create the university database
create database university;


-- 2.switch to the university database
use university;

-- 3. create the students table
create table students(
student_id int primary key,
student_name varchar(50),
student_age int,
student_major varchar(50)
);


-- 4. insert records into the students table
insert into students (student_id,student_name,student_age,student_major)
values (1,'john',20,'computer science'),
(2,'arjun',22,'engineering'),
(3,'arun',19,'biology'),
(4,'johnson',21,'computer science'),
(5,'priya',23,'computer science');


-- 5. retrieve all records from the students table
select*from students;


-- 6. retrieve names of all students majoring in computer science
select student_name from students where student_major='computer science';


-- 7. retrieve details of the oldest student
select*from students where student_age=(select max(student_age)from students);


-- 8. update the major of a student with a specific student_id
update students set student_major='mathematics' where student_id=3;
select*from students;


--  9.delete a student with a specific student_id
delete from students where student_id=4;
select*from students;

