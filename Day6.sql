create database book_store;
use book_store;

create table category(
id int primary key,
C_name varchar(20));

alter table category modify column C_name varchar(20) Not null;
desc category;

create table Authors(
id int primary key,
A_name varchar(20));

alter table Authors modify column A_name varchar(20) not null;

create table Books(
id int auto_increment primary key,
b_name varchar(20) not null,
price int ,
Cat_id int,
Aut_id int,
foreign key(Cat_id) references category(id),
foreign key(Aut_id) references Authors(id)
) auto_increment=100;

INSERT INTO category 
VALUES (1, 'Cat-A'),
(2, 'Cat-B'),
(3, 'Cat-C'),
(7, 'Cat-D'),
(8, 'Cat-E'),
(4, 'Cat-F'),
(10,'Cat-G'),
(12,'Cat-H'),
(6, 'Cat-I');

INSERT INTO Authors
VALUES (1, 'Author-A'),
(2, 'Author-B'),
(3, 'Author-C'),
(10, 'Author-D'),
(12, 'Author-E');
desc Books;
INSERT INTO Books 
(b_name,price,Cat_id,Aut_id)
VALUES ( 'Book-A', 100, 1, 2),
( 'Book-B', 200, 2, 2),
( 'Book-C', 150, 3, 2),
( 'Book-D', 100, 3,1),
( 'Book-E', 200, 3,1),
( 'Book-F', 150, 4,1),
( 'Book-G', 100, 7,10),
( 'Book-H', 200, 8,12),
('Book-I', 150, 7,3);

select * from Books ;

select b.id, b_name, C_name,price from Books b , category c
where b.Cat_id = c.id;

select b.id, b_name, a_name,price from Books b , Authors a
where b.aut_id = a.id;

select b.id, b_name, C_name,a_name,price from Books b , category c, Authors a
where Cat_id = c.id and aut_id=a.id;

select a.id, A_name , b_name,price from Authors a , books b
where a.id = b.aut_id;

select a.id, A_name , count(*) no_of_books from Authors a , books b
where a.id = b.aut_id
group by a.id having no_of_books>2;

select a.id, A_name , count(*) no_of_books,round(avg(price),0) avg_price
from Authors a , books b
where a.id = b.aut_id
group by a.id having avg_price >100;

select * from books;

-- Retrieve Category id wise no of books  
select c.id, c_name,count(*) no_of_books from category c, Books b
where c.id= b.Cat_id
group by c.id;
-- Category id wise total earning from the books..
select c.id, c_name,sum(price) total_earning from category c, Books b
where c.id= b.Cat_id
group by c.id;
-- what is author_id wise ,the min and max priceof the book
select a.id,a_name,min(price) min_price, max(price) max_price
from Authors a, Books b
where a.id = b.aut_id
group by a.id;


-- display book name, category name and price for book id =103;
select b.id,b_name,c_name,price from category c, Books b
where b.Cat_id = c.id and b.id=103;
-- retrive all the rows where book name ends with "Vowels"
select b_name from Books 
where b_name like "%A" or b_name like "%E"
or b_name like "%I" or b_name like "%O" or b_name like "%U";
-- display author wise : author_name, no of books, min price of book whose min price of book >150

select a_name , count(*) no_of_books, min(price) min_price
from Authors a, Books b
where a.id = aut_id
group by a_name 
having min_price >150;


select b_name,C_name from books b 
left join category c
on b.Cat_id = c.id;







