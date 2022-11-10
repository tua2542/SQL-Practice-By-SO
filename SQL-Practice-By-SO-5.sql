-- Formatting Output - Exercises, Practice, Solution
-- Reference: https://www.w3resource.com/sql-exercises/sql-fromatting-output-exercises.php

-- 1
select salesman_id, name, city , 
       commission * 100 as "percent of commission"
from salesman

-- 2
select 'For', ord_date, count(*), ',there are', 'orders.'
from orders
group by ord_date

-- 3
select *
from orders
order by ord_no asc

-- 4
select *
from orders
order by ord_no desc

-- 5
select *
from orders
order by ord_date, purch_amt desc

-- 6
select cust_name, city, grade
from customer
order by customer_id

-- 7
select salesman_id, ord_date, max(purch_amt)
from orders
group by salesman_id, ord_date
order by salesman_id, ord_date asc

-- 8
select cust_name, city, grade
from customer 
order by 3 desc

-- 9
select customer_id, count(distinct ord_no), max(purch_amt)
from orders
group by customer_id
order by 2 desc

-- 10
select ord_date, sum(purch_amt) as "purchase amount" , 
       sum(purch_amt) * 15/100 as "total commission"
from orders
group by ord_date
order by ord_date