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

create table account_job(
	user_id integer references account(user_id),
	job_id integer references job(job_id),
	hire_date timestamp not null
)