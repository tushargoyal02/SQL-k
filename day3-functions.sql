
-- where filter
-- between , in , like , and or

-- functions=> block of code
-- String functions
use sakila;
select * from actor;

select concat("Mr ",first_name,' ' ,last_name) from actor;

select concat_ws(" ","MR",first_name,last_name) from actor;

select first_name, substr(first_name,2) from actor;

select first_name, substr(first_name,2,3) from actor;

select first_name, substr(first_name,-4,2) from actor;

select first_name, instr(first_name,'L') from actor;

select first_name, locate('e',first_name,3) from actor;

select first_name, char_length(first_name) from actor;

-- dummy  ( dual )
select 10+2 from dual;

select trim("  hel            lo   ") from dual;

select trim(trailing 'l' from "   hello   xllll") from dual;

-- lpad, rpad
select first_name,lpad(first_name,6,"#")  from actor;

-- concat, substr, lpad, trim

-- numeric functions
# round, truncate, floor, mod, pow, ceil

select round(12.4) from  dual;

select round(12.463, 1) from  dual;

select round(12.468, 2) from  dual;

select round(876.468, -3) from  dual;

select truncate(876.468, 2) from  dual;

select  floor(10.99999),ceil(10.001) from dual;