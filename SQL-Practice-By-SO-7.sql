-- SQL Exercises, Practice, Solution - JOINS
-- Reference: https://www.w3resource.com/sql-exercises/sql-joins-exercises.php

-- 1
select salesman.name as "Salesman", 
       customer.cust_name, customer.city
from salesman inner join customer
on salesman.city = customer.city

-- 2
select orders.ord_no, orders.purch_amt,
       customer.cust_name, customer.city
from customer, orders
where customer.salesman_id  = orders.salesman_id 
and customer.customer_id = orders.customer_id
and orders.purch_amt between 500 and 2000

-- 3
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id;


-- 4
select a.cust_name, a.city, b.name, b.commission
from customer a, salesman b
where a.salesman_id=b.salesman_id
and b.commission > 0.12

-- or 

select a.cust_name, a.city, b.name, b.commission
from customer a inner join salesman b
on a.salesman_id=b.salesman_id
where b.commission > 0.12

-- 5
select a.cust_name, a.city, b.name as "Salesman",
       b.city, b.commission
from customer a inner join salesman b
on a.salesman_id=b.salesman_id
where  b.commission>.12 and a.city <> b.city


-- 6
select a.ord_no, a.ord_date, a.purch_amt,
       b.cust_name as "Customer Name", b.grade,
       c.name as "Salesman", c.commission
from orders a inner join customer b
on a.customer_id=b.customer_id
inner join salesman c
on a.salesman_id=c.salesman_id

-- 7
select *
from orders
natural join customer
natural join salesman 


-- 8
select a.cust_name as "Customer Name", a.city as "Customer City", 
       a.grade, b.name as "Salesman", b.city as "Salesman City"
from customer a inner join salesman b
on a.salesman_id=b.salesman_id
order by a.customer_id asc

-- or
select a.cust_name as "Customer Name", a.city as "Customer City", 
       a.grade, b.name as "Salesman", b.city as "Salesman City"
from customer a left join salesman b
on a.salesman_id=b.salesman_id
order by a.customer_id asc

-- or
select a.cust_name as "Customer Name", a.city as "Customer City", 
       a.grade, b.name as "Salesman", b.city as "Salesman City"
from customer a right join salesman b
on a.salesman_id=b.salesman_id
order by a.customer_id asc

-- 9
select a.cust_name as "Customer Name", a.city as "Customer City", 
       a.grade, b.name as "Salesman", b.city as "Salesman City"
from customer a right join salesman b
on a.salesman_id=b.salesman_id
where a.grade < 300
order by a.customer_id asc

-- 10
select a.cust_name as "Customer Name", a.city as "Customer City",
       b.ord_no as "Order Number",
       b.ord_date as "Order Date", b.purch_amt as "Order Amount"
from customer a left join orders b
on a.customer_id=b.customer_id
order by b.ord_date asc

-- 11
select a.cust_name as "Customer Name", a.city as "Customer City",
       b.ord_no as "Order Number", b.ord_date as "Order Date", 
       b.purch_amt as "Order Amount", c.name as "Salesman Name", 
       c.commission as "Commission"
from customer a right join orders b
on a.customer_id = b.customer_id
right join salesman c
on a.salesman_id = c.salesman_id

-- 12
select b.cust_name,b.city,b.grade, 
       a.name AS "Salesman", a.city 
from salesman a right join customer b
on a.salesman_id = b.salesman_id
order by b.salesman_id

-- 13
select a.cust_name as "Customer Name", a.city, 
       a.grade, c.name as "Salesman", 
       b.ord_no as "Order Number", 
       b.ord_date as "Date", b.purch_amt as "Amount"
from customer a right join orders b
on a.customer_id = b.customer_id
right join salesman c
on b.salesman_id = c.salesman_id

-- 14
select a.cust_name as "Customer Name", a.city, 
       a.grade, c.name as "Salesman", 
       b.ord_no as "Order Number", 
       b.ord_date as "Date", b.purch_amt as "Amount"
from customer a left join orders b
on a.customer_id = b.customer_id
left join salesman c
on b.salesman_id = c.salesman_id
where a.grade is not null and b.purch_amt >= 2000

-- 15
select a.cust_name as "Customer Name", a.city, 
       a.grade, b.ord_no as "Order Number", 
       b.ord_date as "Date", b.purch_amt as "Amount"
from customer a left join orders b
on a.customer_id = b.customer_id


-- 16
select a.cust_name as "Customer Name", a.city as "Customer City",
       b.ord_no as "Order Number", b.ord_date as "Order Date",
       b.purch_amt as "Order Amount"
from customer a full outer join orders b
on a.customer_id = b.customer_id
where a.grade is not null

-- 17
select *
from salesman a  
cross join customer b

-- 18
select *
from salesman a  
cross join customer b
where a.city is not null

-- 19
select *
from salesman a  
cross join customer b
where a.city is not null
and b.grade is not null


-- 20
select *
from salesman a  
cross join customer b
where a.city <> b.city
and a.city is not null
and b.grade is not null


-- 21
select *
from company_mast a inner join item_mast b
on a.com_id = b.pro_com

-- 22
select b.pro_name, b.pro_price, a.com_name
from company_mast a inner join item_mast b
on a.com_id = b.pro_com

-- 23
select a.com_name, avg(b.pro_price) as "Average Price"
from company_mast a inner join item_mast b
on a.com_id = b.pro_com
group by a.com_name

-- 24
select a.com_name, avg(b.pro_price) as "Average Price"
from company_mast a inner join item_mast b
on a.com_id = b.pro_com
group by a.com_name
having avg(b.pro_price) >= 350

-- 25
select b.pro_name, a.com_name, b.pro_price
from company_mast a inner join item_mast b
on a.com_id = b.pro_com
and b.pro_price = (select max(b.pro_price)
                   from  item_mast b
                   where a.com_id = b.pro_com)
order by b.pro_price desc 

-- 26
select emp_idno, b.emp_fname AS "First Name", 
       emp_lname AS "Last Name", a.dpt_name AS "Department",
       emp_dept, dpt_code,  dpt_allotment
from emp_department a inner join emp_details b
on a.dpt_code = b.emp_dept

-- 27
select b.emp_fname as "First Name", b.emp_lname as "Last Name",
       a.dpt_name as "Department Name", a.dpt_allotment as "Sanction Amount"
from emp_department a inner join emp_details b
on a.dpt_code = b.emp_dept


-- 28
select b.emp_fname as "First Name", b.emp_lname as "Last Name",
       a.dpt_name as "Department Name", a.dpt_allotment as "Sanction Amount"
from emp_department a inner join emp_details b
on a.dpt_code = b.emp_dept
where a.dpt_allotment > 50000

-- 29
select a.dpt_name as "Department Name"
from emp_department a inner join emp_details b
on a.dpt_code = b.emp_dept
group by a.dpt_name
having count(*) > 2