create database comp;
use comp;

CREATE TABLE Customers (
  id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10)
);

CREATE TABLE Orders (
  order_id INT primary KEY,
  product VARCHAR(40),
  total INT,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(id));
show tables;
insert into Customers values
(1,'John','Doe',31,'USA'),
(2,'Robert','Luna',22,'USA'),
(3,'David','robinson',22,'UK'),
(4,'John','Reinhardt',22,'UK'),
(5,'Betty','Doe',28,'UAE');

select * from Customers;

insert into orders values
(1,'Paper',500,5),
(2,'Pens',10,2),
(3,'Markers',120,3),
(4,'Books',1000,1),
(5,'erasers',20,4);

select * from Orders;

show tables;

select * from customers;
select * from orders;
desc customers;
-- retrive the firstname and lastname from customers table
select first_name,last_name from customers;
-- retrive the product name whose total sale is greater and equal to 500 from orders table
select product,total from orders where total >=500;
-- retrive all entries except product is paper
select * from orders where product <> 'Paper';
select * from orders where  not product = 'Books';

select * from Customers;
-- retrive all distinct country name from customers table
select distinct country from customers;
-- sorting the table in ascending order on total column
select * from orders order by total;
-- sorting in descending
select * from orders order by total desc;

insert into orders values
(6,'Books',500,5);

select * from orders order by  product desc,total desc ;

-- retrieve the distinct firstname from the customer table
-- retrieve all the customers name whose age is between 23 to 35 
select first_name,age from customers where age between 23 and 35;
select first_name ,age from customers where age>23 and age <35;

-- retrieve top 3 high saleing product

select product as top_3,total from orders order by total desc limit 3;

select * from orders limit 3 offset 2;
select * from orders limit 2,3; -- limit (offset_no, limit_no)
select product as second_highest,total from orders order by total desc limit 1 offset 1;
CREATE TABLE student1(
	id int NOT NULL UNIQUE PRIMARY KEY,
	name varchar(50) NOT NULL DEFAULT 'Unnamed',
	age int NOT NULL,
	class int NOT NULL
);
insert into student1 
(id,name,age,class)
values
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3,'Mohit',18,12),
(4,'poorvi',16,11),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit', 13, 8);

-- Retrieve all entries from student1
select * from student1;
-- Retrieve name and class from student1
select name , class from student1;
-- Retrieve distinct name  from student1
select distinct name from student1;
-- Retrieve only 3 rows entry.
select * from student1 limit 3;
-- Retrieve rows from 4 to 8
select * from student1 limit 5 offset 3;
-- Sort the table by class in desc order.
select * from student1 order by class desc;
-- Sort the table by age(ascending) and class(descending)
select * from student1 order by age, class desc;
-- Retrieve the data for class 12
select * from student1 where class =12;
-- Retrieve the data for id more than 5 and less than 9
select * from student1 where id between 6 and 8;





