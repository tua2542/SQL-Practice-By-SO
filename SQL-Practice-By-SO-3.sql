-- SQL Exercises, Practice, Solution - Wildcard and Special operators
-- Reference: https://www.w3resource.com/sql-exercises/sql-wildcard-special-operators.php

-- 1
select salesman_id, name, city, commission
from salesman
where city in ('Paris', 'Rome')

-- 2
select salesman_id, name, city, commission
from salesman
where city in ('Paris', 'Rome')

-- 3
select salesman_id, name, city, commission
from salesman
where city not in ('Paris', 'Rome')

-- 4
select customer_id, cust_name, 
       city, grade, salesman_id
from customer
where customer_id in (3007, 3008, 3009)

-- 5
select salesman_id, name, city, commission
from salesman
where commission between 0.12 and 0.14

-- 6
select ord_no, purch_amt, ord_date, 
       customer_id, salesman_id
from orders
where (purch_amt between 500 and 4000)
and (purch_amt not in (948.50, 1983.43))

-- 7
select salesman_id, name, city, commission
from salesman
where name between 'A' and 'L'
order by name

-- 8
select salesman_id, name, city, commission
from salesman
where name not between 'A' and 'L'
order by name

-- 9
select customer_id, cust_name, 
       city, grade, salesman_id
from customer
where cust_name like  'B%'

-- 10
select customer_id, cust_name, 
       city, grade, salesman_id
from customer
where cust_name like  '%n' 

-- 11
select salesman_id, name, city, commission
from salesman
where name like 'N__l%'    

-- 12
select col1
from testtable
where col1 like '%/_%' ESCAPE '/'

-- 13
select col1
from testtable
where col1 not like '%/_%' ESCAPE '/'

-- 14
select col1
from testtable
where col1 like '%/_%'

-- 15
select col1
from testtable
where col1 not like '%/_%'


-- 16
select col1
from testtable
where col1 like '%/_//%' ESCAPE '/'

-- 17
select col1
from testtable
where col1 not like '%/_//%' ESCAPE '/'

-- 18
select col1
from testtable
where col1 like '%/%%' ESCAPE '/'

-- 19
select col1
from testtable
where col1 not like '%/%%' ESCAPE '/'

-- 20
select customer_id, cust_name, city,
       grade, salesman_id
from customer
where grade IS NULL

-- 21
select customer_id, cust_name, city,
       grade, salesman_id
from customer
where grade IS NOT NULL

-- 22
select emp_idno, emp_fname, 
       emp_lname, emp_dept
from emp_details
where emp_lname like 'D%'

