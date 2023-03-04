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
--insert into account_job (user_id, job_id, hire_date) values (2, 2, current_timestamp)

--update account set last_login = current_timestamp
--update account set last_login = create_on
--update account set create_on = current_timestamp
--update account set create_on = last_login

-- update account_job
-- set hire_date = create_on from account
-- where account_job.user_id = account.user_id

-- update account set last_login = current_timestamp where user_id = 1
-- returning user_id, last_login

--insert into job (job_name) values ('cowboy')
--delete from job where job_name = 'cowboy' returning job_id, job_name

-- create table information (
-- 	info_id serial primary key,
-- 	title varchar (500) not null,
-- 	person varchar (50) not null unique
-- )

-- alter table information rename to info
-- alter table info rename column person to ppl
-- insert into info(title) values ('some title')
-- alter table info
-- alter column ppl drop not null
--insert into info(title) values ('some title')

-- alter table info
-- drop column ppl

-- alter table info
-- drop column  if exists ppl

-- create table employes (
-- 	emp_id serial primary key,
-- 	f_name varchar(50) not null,
-- 	l_name varchar(50) not null,
-- 	b_date date check (b_date > '1900-01-01'),
-- 	hire_date date check (hire_date > b_date),
-- 	salary integer check (salary > 0)
-- )

-- insert into employes (f_name, l_name, b_date, hire_date, salary)
-- values ('slav', 'senkiv', '1980-01-01', '2010-01-01', 100)

insert into employes (f_name, l_name, b_date, hire_date, salary)
values ('slav', 'senkiv', '1980-01-01', '2010-01-01', 50)








