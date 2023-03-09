-- select customer_id,
-- case
-- 	when (customer_id <=10) then 'Premium'
-- 	when (customer_id between 11 and 20) then 'Plus'
-- 	else 'Normal'
-- end as vip_status
-- from customer
-- order by customer_id asc

-- select customer_id,
-- case customer_id
-- 	when 2 then 'winner'
-- 	when 5 then 'second winner'
-- end as winners
-- from customer
-- order by customer_id asc

-- select rental_rate,
-- case rental_rate
-- 	when 0.99 then 1
-- 	else 0
-- end cheap_fulms_num

-- from film

-- select
-- sum(case rental_rate
-- 	when 0.99 then 1 else 0
-- end) as bargains,
-- sum(case rental_rate
-- 	when 2.99 then 1 else 0
-- end) as normal,
-- sum(case rental_rate
-- 	when 4.99 then 1 else 0
-- end) as plus
-- from film

select
sum(case rating	when 'R' then 1 else 0 end) as r,
sum(case rating	when 'PG' then 1 else 0 end) as pg,
sum(case rating	when 'PG-13' then 1 else 0 end) as pg13
from film

-- select
-- sum(case 
-- 	when rating = 'r' then 1 else 0
-- end) as r,
-- sum(case 
-- 	when rating = 'pg' then 1 else 0
-- end) as pg,
-- sum(case 
-- 	when rating = 'pg13' then 1	else 0
-- end) as pg13
-- from film

