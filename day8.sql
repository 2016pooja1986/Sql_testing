show databases;
use mysql;
show tables;
select user from user;
select * from global_grants;

-- grant and revoke

create user 'pooja' identified by 'pooja123';
select user from user;
grant select on book_store.books to 'pooja';
flush privileges;
show grants for 'pooja';

revoke select on book_store.books from 'pooja';
drop user 'pooja';
flush privileges;
select user from user;
use comp;
select * from customers;
insert into customers values
(6,"Pooja","Singh",36,"Delhi"),
(11,"Sunny","Singh",21,"PreetVihar"),
(9,"Munna","Mehta",21,"LaxmiNagar"),
(7,"Ravi","Tiwari",21,"Vaishali");
select * from orders;

select *  from customers c
join orders o
on c.id = o.customer_id;

select * from customers c 
left join orders o
on c.id = o.customer_id;

select * from orders o 
left join customers c
on c.id = o.customer_id;

select * from customers c 
right join orders o
on c.id = o.customer_id;

select * from orders o 
right join customers c
on c.id = o.customer_id;

select * from orders o 
JOIN customers c
on c.id = o.customer_id;
