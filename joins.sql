-- select amount as rental_price, amount from payment;
-- select sum(amount) as net_revenue from payment
-- select count(*) as transactions_num from payment
select customer_id, sum(amount) as ltv from payment
group by customer_id
having sum(amount) > 100
order by ltv asc