-- Functions and Group by - Exercises, Practice, Solution
-- Reference: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php

-- 1
select sum(purch_amt) as sum 
from orders

-- 2
select avg(purch_amt) as avg
from orders

-- 3
select count( distinct salesman_id) as count
from orders

-- 4
select count(cust_name) as count
from customer

-- 5
select count(cust_name) as count
from customer
where grade is not null

-- 6
select max(purch_amt) as max
from orders

-- 7
select min(purch_amt) as min
from orders

-- 8
select city, max(grade) as max
from customer
group by city 

-- 9
select customer_id, max(purch_amt) as max
from orders
group by customer_id 

-- 10
select customer_id, ord_date, max(purch_amt) as max
from orders
group by customer_id, ord_date

-- 11
select customer_id, ord_date, max(purch_amt) as max
from orders
group by customer_id, ord_date
having ord_date = '2012-08-17'

-- 12
select customer_id, ord_date, max(purch_amt) as max
from orders
group by customer_id, ord_date
having max(purch_amt) > 2000

-- 13

-- 14

-- 15

-- 16

-- 17

-- 18

-- 19

-- 20

-- 21

-- 22

-- 23

-- 24

-- 25