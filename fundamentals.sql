--select email from customer where first_name = 'Nancy' and last_name = 'Thomas'
--select description from film where title = 'Outlaw Hanky';
--select phone from address where address = '259 Ipoh Drive';
--select * from customer order by store_id desc, first_name asc
select store_id, last_name from customer order by store_id desc, first_name asc