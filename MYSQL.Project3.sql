create database BooksDB;
create table BooksDB.Books(id int primary key auto_increment, book_title varchar(20), author varchar(20), genre varchar(20), publication_year int ,price int);
insert into BooksDB.Books values (5, "zoology" , "myvili" , "biology" , 2003 , 5000),(2, "botany" , "gopi" , "testing" , 2002 , 6000),(3, "python" , "saravanan" , "programing" , 2019 , 5000),(4, "Human anatomy" , "shankar" , "biology" , 2028 , 3000),(7, "probability" , "dharan" , "maths" , 20054 , 5000);
create table BooksDB.Authors(id int primary key, Author varchar(20), Publication int);
insert into BooksDB.Authors values (5 , "siva" , 2005 ), (4 , "naveen" , 2002) , (6 , "gopi" , 2004);
select book_title from BooksDB.Books;
update BooksDB.Books set price= 7300 where id=5;
delete from BooksDB.Books where  id=3;
select avg(price) from BooksDB.Books;
select *from BooksDB.Books;
select * from BooksDB.Authors;
use BooksDB;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books 
inner join Authors
on Books.id=Authors.id;