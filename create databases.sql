-- create table account (
-- 	user_id serial primary key,
-- 	username varchar(18) unique not null,
-- 	password varchar(10) not null,
-- 	email varchar(250) unique not null,
-- 	create_on timestamp not null,
-- 	last_login timestamp
-- )

-- create table job(
-- 	job_id serial primary key,
-- 	job_name varchar(200) unique not null
-- )

-- create table account_job(
-- 	user_id integer references account(user_id),
-- 	job_id integer references job(job_id),
-- 	hire_date timestamp not null
-- )

-- insert into account (username, password, email, create_on)
-- values
-- ('Slav', 'qwe123', 'slav@gmail.com', current_timestamp)

-- insert into account (user_id, username, password, email, create_on, last_login)
-- values
-- (2, 'Slav2', 'qwe123', 'slav2@gmail.com', current_timestamp, current_timestamp)

-- insert into account (username, password, email, create_on)
-- values
-- ('Paul2', 'qwe123', 'slav7@gmail.com', current_timestamp),
-- ('Nick2', 'qwe123', 'slav8@gmail.com', current_timestamp)

--insert into job (job_name) values ('Tailor'), ('Janitor')

--insert into account_job (user_id, job_id, hire_date) values (1, 1, current_timestamp)
--insert into account_job (user_id, job_id, hire_date) values (1, 2, current_timestamp)
--insert into account_job (user_id, job_id, hire_date) values (2, 2, current_timestamp)
insert into account_job (user_id, job_id, hire_date) values (2, 2, current_timestamp)
