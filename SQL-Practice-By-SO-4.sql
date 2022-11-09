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
select customer_id, ord_date, max(purch_amt) as max
from orders
group by customer_id, ord_date
having max(purch_amt) between 2000 and 6000

-- 14
select customer_id, ord_date, max(purch_amt) as max
from orders
group by customer_id, ord_date
having max(purch_amt) in (2000, 3000, 5760, 6000)

-- 15
select customer_id, max(purch_amt) as max
from orders
group by customer_id
having customer_id between 3002 and 3007
order by max(purch_amt) asc

-- 16
select customer_id, max(purch_amt) as max
from orders
group by customer_id
having customer_id between 3002 and 3007
and max(purch_amt) > 1000

-- 17
select salesman_id, max(purch_amt) as max
from orders
group by salesman_id
having salesman_id between 5003 and 5008

-- 18
select count(*) as count
from orders
where ord_date = '2012-08-17'

-- 19
select count(salesman_id) as count
from salesman

-- 20
select ord_date, salesman_id, count(*) as count
from orders
group by ord_date, salesman_id

-- 21
select avg(PRO_PRICE) as "Average Price"
from item_mast

-- 22
select count(*) as "Number of Products"
from item_mast
where PRO_PRICE >= 350

-- 23
select avg(PRO_PRICE) as "Average Price", PRO_COM as "Company ID"
from item_mast
group by PRO_COM

-- 24
select sum(DPT_ALLOTMENT) as sum 
from emp_department

-- 25
select EMP_DEPT, count(*) as count
from emp_details
group by EMP_DEPT