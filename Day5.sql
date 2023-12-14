use comp;
show tables;
select * from student1;

-- update the Name of the person from mahesh to Meghna
update student1 set name='Meghna' where name='mahesh'; 
-- delete the entry of student having id=2
delete from student1 where id=2;

-- no of entries for id >5
select count(*) from student1 where id>5;

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator:
-- The percent sign % represents zero, one, or multiple characters
 -- The underscore sign _ represents one, single character
 
 
-- name of students starting with p
select * from student1 where name like 'p%';
select * from student1;
-- name of students ending with a
select * from student1 where name like '%a';
-- name of students having 'a' in their names
select * from student1 where name like '%a%';
-- name of students having 'ee' in their names
select * from student1 where name like '%ee%';
-- name of student starting with p and end with k
select * from student1 where name like 'p%k';

insert into student1 values
(2,"preeti",12,7),
(11,"priyanka",15,10);

select * from student1;

select * from student1 where name like 'pr__%a';

insert into student1 values
(12,"pree",12,7),
(13,"priya",15,10);

-- group by
-- classwise no of student
select class,count(*) from student1 group by class order by class;
-- agewise no of student
select age,count(*) as "no of students" from student1 group by age order by age;
-- find the min age  of student in each class
select class,min(age) from student1 group by class order by class;
-- find tne max age of student in each class
select class , max(age) from student1 group by class order by class;
-- find avg age of student in each class
select class, round(avg(age),0) as Avg_age from student1 group by class order by class;

select * from orders;

-- product wise total sales

select product,sum(total) as "total_sales(Rs)" 
from orders 
group by product 
order by sum(total) desc;

-- customer wise total purchase
select customer_id,sum(total)  'Purchase(RS)' 
from orders 
group by customer_id 
order by sum(total) desc;

insert into orders values 
(7,'Paper',100,3),
(8,'Pens',600,2),
(9,'Markers',200,4),
(10,'erasers',300,1);

select * from customers;

-- retrieve all the name of customers having 'o' in their names
select concat(first_name ," ",last_name) as full_name 
from customers 
where concat(first_name ," ",last_name) like '%o%';
-- retrieve all the name of customers end with 'n'
select concat(first_name ," ",last_name) as full_name 
from customers 
where concat(first_name ," ",last_name) like '%n';

-- retrieve all country name start with 'U' and end with 'A' or 'E'
select * from customers where country like 'U%E' or country like 'U%A';
-- country wise No of customers
select country ,count(*) 'No of Customers' from customers group by country;
-- Age wise no of customers
select age ,count(*) 'No of Customers' from customers group by age order by age;



