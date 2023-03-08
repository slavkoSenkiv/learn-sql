-- select customer_id,
-- case
-- 	when (customer_id <=10) then 'Premium'
-- 	when (customer_id between 11 and 20) then 'Plus'
-- 	else 'Normal'
-- end as vip_status
-- from customer
-- order by customer_id asc

select customer_id,
case customer_id
	when 2 then 'winner'
	when 5 then 'second winner'
end as winners
from customer
order by customer_id asc