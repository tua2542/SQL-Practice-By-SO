-- SQL Exercises, Practice, Solution - Using Boolean and Relational operators

-- References: https://www.w3resource.com/sql-exercises/sql-boolean-operators.php

-- 1
select * 
from customer
where grade >= 100

-- 2
select * 
from customer
where city in ('New York') 
and grade >= 100

-- 3
select * 
from customer
where city in ('New York')
and grade > 100

-- 4
select * 
from customer
where city in ('New York')
and grade <= 100


-- 5
select * 
from customer
where city not in ('New York')
and grade > 100

-- 6
select * 
from orders
where not (ord_date in ('2012-09-10')
and salesman_id > 5005
or purch_amt  > 1000)

-- 7
select salesman_id, name, 
city, commission
from salesman
where commission between 0.10 and 0.12

-- 8
select * 
from orders
where  purch_amt < 200
or not (ord_date >= ('2012-02-10')
and customer_id < 3009)


-- 9
select * 
from orders
where not (ord_date = ('2012-08-17')
or customer_id > 3005 and purch_amt < 1000 )


-- 10
select ord_no, purch_amt,
(100*purch_amt)/6000 AS "Achieved %",
(100*(6000-purch_amt)/6000) AS "Unachieved %"
from orders
where ((100*purch_amt)/6000) > 50

-- 11
select * 
from emp_details
where emp_lname in ('Dosni','Mardy')

-- 12
select * 
from emp_details
where emp_dept in (47, 63)
