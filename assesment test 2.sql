-- # How can you retrieve all the information from the cd.facilities table?
-- select * from cd.facilities

-- # You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?
-- select name, membercost 
-- from cd.facilities order by membercost asc

-- # How can you produce a list of facilities that charge a fee to members?
-- select *
-- from cd.facilities 
-- where membercost != 0
-- order by membercost asc

--#How can you produce a list of facilities 
--#that charge a fee to members, 
--#and that fee is less than 1/50th of the monthly maintenance cost? 
--#Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.

-- select *, monthlymaintenance/50 
-- from cd.facilities as fac1
-- where membercost > 0 and membercost < (
-- 	select monthlymaintenance/50 
-- 	from cd.facilities as fac2 
-- 	where fac1.facid = fac2.facid)


--select * from cd.facilities where name ilike '%ten%'

select * from cd.facilities where facid in (1, 5)


