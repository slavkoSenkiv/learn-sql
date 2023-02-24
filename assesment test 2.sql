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

-- select * from cd.facilities where facid in (1, 5)

-- select *  from cd.members
-- where joindate >= '2012-09-01'

-- select distinct(surname) from cd.members order by surname limit 10 

-- select * from cd.members
-- where joindate = (select max(joindate) from cd.members)

--select * from cd.facilities
--select count(*) from cd.facilities where guestcost > 6

--Produce a list of the total number of slots 
--booked per facility in the month of September 2012. 
--Produce an output table consisting of facility id and slots, 
--sorted by the number of slots.

-- select 
-- 	cd.facilities.facid,
-- 	cd.facilities.name,
-- 	sum(slots)
-- from cd.facilities
-- inner join cd.bookings
-- on cd.facilities.facid = cd.bookings.facid
-- where starttime between '2012-09-01 00:00:00' and '2012-09-30 23:59:59'
-- --where starttime >= '2012-09-01' and starttime < '2012-10-01'
-- --where date_part('month', starttime) = 09 and date_part('year', starttime) = 12
-- group by cd.facilities.facid
-- order by sum(slots)

-- Produce a list of facilities with more than 1000 slots booked. 
--Produce an output table consisting of facility id and total slots, sorted by facility id.

-- select 
-- 	cd.facilities.facid,
-- 	cd.facilities.name,
-- 	sum(slots)
-- from cd.facilities
-- inner join cd.bookings
-- on cd.facilities.facid = cd.bookings.facid
-- group by cd.facilities.facid
-- having sum(slots) > 1000
-- order by cd.facilities.facid

--How can you produce a list of the start times for bookings 
--for tennis courts, for the date '2012-09-21'? 
--Return a list of start time and facility name pairings, ordered by the time.

-- my initian more complex varian where I search for the earliest time possible
-- select 
-- 	distinct(cd.facilities.facid),
-- 	cd.facilities.name,
-- 	min(starttime)
-- from cd.facilities
-- inner join cd.bookings
-- on cd.facilities.facid = cd.bookings.facid
-- where cd.facilities.name ilike '%tennis%'
-- and date(starttime) = '2012-09-21'
-- group by distinct(cd.facilities.facid)

-- my answer with just every start time
-- select 
-- 	distinct(cd.facilities.facid),
-- 	cd.facilities.name,
-- 	min(starttime)
-- from cd.facilities
-- inner join cd.bookings
-- on cd.facilities.facid = cd.bookings.facid
-- where cd.facilities.name ilike '%tennis%'
-- and date(starttime) = '2012-09-21'
-- group by cd.facilities.facid
-- order by cd.facilities.facid

-- How can you produce a list of the start times 
--for bookings by members named 'David Farrell'?

-- select 
--  firstname,
--  surname,
--  starttime
-- from cd.facilities
-- inner join cd.bookings
-- on cd.facilities.facid = cd.bookings.facid
-- inner join cd.members
-- on cd.bookings.memid = cd.members.memid
-- where firstname = 'David'
-- and surname = 'Farrell'



