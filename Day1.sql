show databases;
create database test;
show databases;
select database();
use test;
select database();
show tables;

use sys;
show tables;

drop database test;
show databases;

create table emp(
id int ,
E_Name varchar(15) );

show tables;
describe emp;

drop table emp;

create table emp(
E_id int unique,
E_name varchar(15) not null,
Address varchar(30) default  'Delhi'
);

desc emp;

insert into emp values
(1,"Pooja","Vaishali");

select * from emp;
insert into emp 
(E_id,E_name)
values
(3,"Munna");
desc emp;

select * from emp;
select E_name,Address from emp;
truncate table emp;
Alter table emp modify E_id varchar(3);
Alter table emp add phn int check (length(phn)=10);
Alter table emp modify E_id int;
alter table emp rename column Address to Addr;
desc emp;

insert into emp values
(1,"Pooja","Viashali",1234567890); 

