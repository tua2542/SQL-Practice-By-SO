-- SQL Exercises, Practice, Solution - Query on Multiple Tables
-- Reference: https://www.w3resource.com/sql-exercises/sql-exercises-quering-on-multiple-table.php

-- 1
select customer.cust_name, salesman.name, salesman.city
from salesman, customer
where salesman.city = customer.city

-- 2
select customer.cust_name, salesman.name
from salesman, customer
where salesman.salesman_id = customer.salesman_id

-- 3
select orders.ord_no, customer.cust_name,
       orders.customer_id, orders.salesman_id
from salesman, customer, orders
where salesman.city != customer.city
and orders.customer_id = customer.customer_id
and orders.salesman_id = salesman.salesman_id

-- 4
select orders.ord_no, customer.cust_name
from orders, customer
where orders.customer_id = customer.customer_id

-- 5
-- from w3resource answer
select customer.cust_name as "Customer", 
       customer.grade as "Grade",
       orders.ord_no as "Order No"
from salesman, customer, orders
where customer.grade is not null
and salesman.salesman_id = orders.salesman_id
and customer.customer_id = orders.customer_id

-- My Throught might be correct ?
select customer.cust_name as "Customer", 
       customer.grade as "Grade",
       orders.ord_no as "Order No"
from salesman, customer, orders
where customer.grade is not null
and salesman.city = customer.city
and salesman.salesman_id = orders.salesman_id
and customer.customer_id = orders.customer_id

-- 6
select customer.cust_name as "Customer",
       customer.city as "City",
       salesman.name as "Salesman",
       salesman.commission as "Commission"
from salesman, customer
where salesman.salesman_id = customer.salesman_id
and salesman.commission between 0.12 and 0.14

-- 7
select orders.ord_no,
       customer.cust_name
       salesman.commission as "Commission%"
       salesman.commission * orders.purch_amt as "Commission"
from salesman, customer, orders
where salesman.salesman_id = orders.salesman_id
and customer.customer_id = orders.customer_id
and customer.grade >= 200

-- 8
-- full version
select customer.customer_id, customer.cust_name,
       customer.city, customer.grade,
       salesman.salesman_id, orders.ord_no,
       orders.purch_amt, orders.ord_date,
       orders.customer_id, orders.salesman_id
from salesman, customer, orders
where salesman.salesman_id = orders.salesman_id
and customer.customer_id = orders.customer_id
and orders.ord_date = '2012-10-05'

-- or
-- short version
SELECT *
FROM customer a,orders  b 
WHERE a.customer_id=b.customer_id 
AND b.ord_date='2012-10-05';
