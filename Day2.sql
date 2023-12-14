show databases;
create database xyz;
select database();
use xyz;
drop database xyz;

create table emp(
e_id int ,
e_name varchar(20)
);

show tables;
desc emp;
drop table emp;

create table emp(
e_id int unique,
e_name varchar(20),
age int check (age >3));

describe emp;
alter table emp modify column e_name varchar(30) not null; 
alter table emp add address varchar(30) default "Delhi";
alter table emp rename column e_name to emp_name;


insert into emp values
(1,"pooja",4,"Vaishali");

select * from emp;
insert into emp values
(2,"sunny",5,"Vaishali");

insert into emp 
(e_id,emp_name,age)
values
(3,"Munna",6);

insert into emp 
(e_id,emp_name,age)
values
(4,"ravi",6);

select * from emp;

truncate emp;

create table class(
class_id int primary key,
c_name varchar(9) not null
);

insert into class values
(0,"LKG"),
(1,"UKG"),
(2,"1st"),
(3,"2nd");

select * from class;

create table student(
s_id int primary key,
c_id int ,
f_name varchar(30) not null,
l_name varchar(20) ,
age int check (age>=3),
phn int check (length(phn)=10),
city varchar(20) default "Delhi",
foreign key(c_id) references class(class_id)
);
desc student;
insert into student values
(1,1,"Pooja","Singh",5,1234567890,"Vaishali");

insert into student values
(2,1,"Poorvi","Singh",6,1234567891,"Vaishali");

insert into student values
(3,2,"Sunny","Singh",7,1234563891,"Delhi"),
(4,3,"Munna","Singh",8,1234563891,"Bihar"),
(5,0,"Ravi","Singh",3,1234563891,"Bihar");

select * from student where city="Vaishali";
select * from student where age >5;
select * from student where age >5 and city= "Delhi";
select * from student where age >=3 and age<7;
select * from student where age between 3 and 7;

-- retrieve age and country of all customers
-- select rows if age is less than 27
-- select the age and country of customers whose age is less than or equal to 28
-- select the countries of customers whose age is greater than 27
-- select customers whose age is equal to 22
-- select customers whose age is not equal to 22
-- select rows if country is USA
-- select rows if both the age > 23 and last_name = 'Doe' conditions are TRUE
-- select rows if either of the conditions age > 23 or country = 'USA' is TRUE
-- Select all the columns from the Products table for products whose quantity is not equal to 25 and price is greater than 160
-- select rows if country is not UK
-- select customers if age > 23 or country is both 'USA' and 'UK'
 
