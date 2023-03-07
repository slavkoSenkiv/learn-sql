-- create database school

-- create table students(
-- 	syudent_id serial primary key,
-- 	first_name varchar(50) not null,
-- 	last_name varchar(50) not null,
-- 	homeroom_number integer not null unique,
-- 	phone varchar(50),
-- 	email varchar(50) unique,
-- 	graduation_year date
-- )

-- ALTER TABLE students
-- RENAME COLUMN syudent_id TO students_id;

-- create table teachers(
-- 	teacher_id serial primary key,
-- 	first_name varchar(50) not null,
-- 	last_name varchar(50) not null,
-- 	homeroom_number integer not null unique,
-- 	phone varchar(50),
-- 	email varchar(50) unique,
-- 	department varchar(50))

-- # not working - modify datatype and constraint
--ALTER TABLE students alter column phone set not null;

-- ALTER TABLE teachers
-- ADD CONSTRAINT not_null_data
-- CHECK (phone IS NOT NULL AND email IS NOT NULL);

-- insert into teachers
-- (first_name, last_name, homeroom_number, phone, email, department)
-- values
-- ('slav', 'senkiv', 1, '123', 'asd', 'sience')

-- insert into teachers
-- (first_name, last_name, homeroom_number, phone, email)--, department)
-- values
-- ('slav1', 'senkiv1', 2, '123', 'qwe')--, 'sience')


--ALTER TABLE teachers alter department set not null;

-- update teachers set department = 'art' where teacher_id = 9

-- select * from students
-- SELECT *
-- FROM information_schema.columns
-- WHERE table_name = 'students';

-- SELECT columns.column_name, constraints.constraint_type, constraints.constraint_name
-- FROM information_schema.columns AS columns
-- LEFT JOIN information_schema.constraint_column_usage AS usage
-- ON columns.table_catalog = usage.table_catalog
-- AND columns.table_schema = usage.table_schema
-- AND columns.table_name = usage.table_name
-- AND columns.column_name = usage.column_name
-- LEFT JOIN information_schema.table_constraints AS constraints
-- ON usage.constraint_catalog = constraints.constraint_catalog
-- AND usage.constraint_schema = constraints.constraint_schema
-- AND usage.constraint_name = constraints.constraint_name
-- WHERE columns.table_name = 'students';

-- insert into students 
-- (first_name, last_name, homeroom_number, phone, email)
-- values
-- ('slav', 'senkiv', 2, '123', 'asd')

ALTER TABLE students
ADD CONSTRAINT unique_data UNIQUE (phone);

-- update students set phone = '234' where students_id = 4


 





