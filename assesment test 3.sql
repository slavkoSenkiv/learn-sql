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

-- # want but cant add value to existing row - change last department column value
insert into teachers (department) values ('art')



