

# functions 
# string and numeric 

# date functions

select current_date(),curtime(),current_timestamp() from dual;


select now(), adddate( now(),2) from dual;

select now(), adddate( now() ,interval 2 month) from dual;

select datediff(now(), '2024-11-28') from dual;

select last_day( now() ) from dual;

select month(now()) from dual;

select date_format( now(),"Current day is %h %a %m" ) from dual;


--  multi-row functions
use sakila;
select * from payment;

select distinct(customer_id),amount from payment;

select sum(amount),count(amount),count(*)
,avg(amount) from payment;

select * from payment;
select sum(amount) from payment where customer_id=1;



select distinct(customer_id),amount from payment;

select customer_id,sum(amount),count(*)
  from payment group by customer_id;

select * from address;

select month(payment_date),sum(amount), count(*)
   from payment 
   
	group by month(payment_date)
    having count(*) > 2000;