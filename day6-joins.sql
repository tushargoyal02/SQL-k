
create database regex;
use regex;
create table product(pid int, pname varchar(20),price int);

insert into product values(10,"tv",100),(20,"mobile",200),
(30,"gyser",4000),(40,"yash",5000);

select * from product;
create table orders(oid int, city varchar(20),product_id int);
insert into orders values(1991,"jaipu",10),(1992,"goa",20),
(1993,"UK",10),(1994,"shimla",40),(1995,"kerala",80);

select * from product;

select o.oid,o.city,o.product_id,p.pid, p.pname,p.price
from orders as o  join product as p
where o.product_id=p.pid;

select o.oid,o.city,o.product_id,p.pid, p.pname,p.price
from orders as o  inner join product as p
on o.product_id=p.pid;

select o.oid,o.city,o.product_id,p.pid, p.pname,p.price
from orders as o  right join product as p
on o.product_id=p.pid;

select * from orders;


use sakila;
select * from actor;
select * from film_actor;