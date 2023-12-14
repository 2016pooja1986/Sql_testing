show databases;
use comp;
show tables;
select * from student1 where class=12;

update student1 set age = 20 where name="poorvi";
select * from student1 where name="poorvi";
update student1 set name='Jatin', age =15, class=10 where id =9;
select * from student1 where id=9;
update student1 set age =19 where class=12;
select * from student1 where class=12;

delete from student1 where name='mohit';
select * from student1;


select * from student1 where name in ('poorvi','mahesh','Jatin');

select * from student1 where name not in ('poorvi','mahesh','Jatin');

-- find the min age from the table
select min(age) as min_age from student1;
select name from student1 where age = (select min(age) from student1) ;
-- find the max age from the table
select max(age) as max_age from student1;
-- count the no of rows in  the table
select count(*) as total_row from student1;
select distinct class from student1;
select count(distinct class) from student1;

select count(*) as no_of_students,class from student1 where class=11;

-- average age of student from  class 11

select * from student1 where class=11;

select round(avg(age),2) as avg_age from student1 where class=11;
select round(avg(age),0) as avg_age from student1 where class=11;

select * from student1;
select * from orders;

select sum(total) as total_sale from orders;
select * from orders;
select sum(total) as Book_sale from orders where product='Books';

select * from customers;
select concat(first_name," ",last_name) as Full_Name,age,country from  customers; 

