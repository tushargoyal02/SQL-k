

select curdate(), current_date() from dual;

select now() from dual;

select adddate( now(), 3) from dual;

select adddate( now(), interval 2 month) from dual;


SELECT DATEDIFF(now(),'2024-12-08');

select year( now() ) from dual;


select date_format(now(), "current year is %Y") from dual;

use sakila;

select * from address;

select city_id,count(district)
  from address  group by city_id having count(district)>=2;

select * from address 
order by district,city_id desc;

select  customer_id, sum(amount) as "totalAmount" from payment 
group by customer_id order by totalAmount desc;


-- subquery
--  X  , ( naresh 
select * from payment;
select  amount from payment where payment_id=5;

select * from payment where amount=9.99;

select * from payment 
where amount=(select  amount from payment where payment_id=5);

select * from payment;

select rental_id from payment where payment_id=4;

select * from payment where rental_id>1422;

select month(payment_date) from payment where payment_id=5;

select payment_id, amount, amount*1.1
from payment 
where 
month(payment_date)=(select month(payment_date) 
					from payment where payment_id=5);

select *  from payment;