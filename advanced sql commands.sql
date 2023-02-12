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

select 
	title, 
	round(rental_rate/replacement_cost,2)*100 as  risk
from film

