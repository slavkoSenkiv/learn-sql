-- select amount as rental_price, amount from payment;
-- select sum(amount) as net_revenue from payment
-- select count(*) as transactions_num from payment
-- select customer_id, sum(amount) as ltv from payment
-- group by customer_id
-- having sum(amount) > 100
-- order by ltv asc

-- select payment_id, payment.customer_id, first_name 
-- from payment inner join customer
-- on payment.customer_id = customer.customer_id

-- select customer_id, first_name, last_name, customer.address_id, address.address_id, address, district
-- from customer inner join address on customer.address_id = address.address_id
-- where district = ''
-- order by customer.customer_id asc

-- select * from customer inner join address
-- on customer.address_id = address.address_id

-- select * from customer
-- full outer join payment
-- on customer.customer_id = payment.customer_id
-- where customer.customer_id is null 
-- or payment.payment_id is null

-- select film.film_id, title, inventory_id, store_id
-- from film
-- left outer join inventory
-- on inventory.film_id = film.film_id
-- where inventory.film_id is null

-- select film.film_id, title, inventory_id, store_id from film
-- left join inventory
-- on film.film_id = inventory.film_id
-- --order by inventory_id desc
-- where inventory.film_id is null

















