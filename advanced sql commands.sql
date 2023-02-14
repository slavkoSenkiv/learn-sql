--show all
--show timezone
--select now()
--select timeofday()
--select current_date

--select * from payment
--select extract(year from payment_date) as year from payment
--select extract(month from payment_date) as month from payment
-- select 
-- 	extract(quarter from payment_date) as quarter,
-- 	extract(year from payment_date) as year
-- from payment

--select payment_date from payment
--select to_char(payment_date,'MONTH   YYYY') from payment
--select to_char(payment_date,'mm/dd/yyyy') from payment

--select distinct(to_char(payment_date, 'Month')) from payment

--select * from payment
--where dayofweek(payment_date) = 1
--where to_char(payment_date, 'day') = 'Monday'
--where to_char(dayofweek(payment_date), 'day') = 'Monday'
--where dayofweek(to_char(payment_date,'yyyy-mm-dd') = 1
--select dayofweek(to_char(payment_date,'yyyy-mm-dd') from payment
--where dayname(payment_date) = 'Monday'
--where datename(weekday, payment_date) = 'Monday'

-- select count(payment_date) from payment
-- where extract(dow from payment_date) = 1

-- select 
-- 	title, 
-- 	round(rental_rate/replacement_cost,2)*100 as  risk
-- from film

--select * from customer
--select length(email) from customer
--select first_name ||' ' || upper(last_name) as PIB from customer
-- select 	lower(left(first_name,2))||'.'|| lower(last_name)||'@gmail.com'
-- as email2 from customer

--select * from film
--select avg(rental_rate) from film
-- select * from film
-- where rental_rate > (select avg(rental_rate) from film)

-- select * from rental
-- select * from inventory

-- select film_id, title from film where film_id in
-- (select inventory.film_id from rental
-- inner join inventory on inventory.inventory_id = rental.inventory_id
-- where rental_date between '2005-05-29' and '2005-05-30')

-- select first_name, last_name from customer as c
-- where exists 
-- (select * from payment as p
--  where 
--  p.customer_id = c.customer_id and amount >11)


--select * from film
-- select avg(rental_rate) from film
-- select title, rental_rate from film
-- where rental_rate < (select avg(rental_rate) from film)

-- select * from rental
-- where rental_date between '2005-05-29' and '2005-05-30'

-- select * from inventory
-- inner join rental 
-- on inventory.inventory_id = rental.inventory_id
-- inner join film
-- on film.film_id = inventory.film_id
-- where rental_date between '2005-05-29' and '2005-05-30'

select title, film_id from film
inner join inventrory 
on film.film_id = inventory.film_id
inner join rental
on inventory.inventory_id = rental.inventory_id
where rental_date between '2005-05-29' and '2005-05-30'