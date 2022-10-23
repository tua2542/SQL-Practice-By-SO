-- SQL Exercises, Practice, Solution - Retrieve data from tables

-- References: https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php#SQLEDITOR

-- 19.
select year, subject, winner, country, category
from nobel_win
where (subject = 'Physics' and year = '1970')
or (subject = 'Economics' and year = '1971')

-- 20.
select *
from nobel_win
where year = 1970
except
select *
from nobel_win
where subject in ('Physiology', 'Economics')

-- 21.
select *
from nobel_win
where (year < 1971 or year >= 1974) and 
subject in ('Physiology', 'Peace') 

-- 22.
select *
from nobel_win
where winner in ('Johannes Georg Bednorz')

-- 23.
select *
from nobel_win
where subject like 'P%%'

-- 24.
select *
from nobel_win
where subject not in ('Chemistry', 'Economics')
order by subject asc

-- 25.
select *
from item_mast
where pro_price
between 200.00 and 600.00

-- 26.
select avg(pro_price) as average_price
from item_mast
where pro_com = 16

-- 27.
select pro_name as "Item Name",
       pro_price as "Price in Rs."
from item_mast

-- 28.
select avg(PRO_PRICE) as "average price",
       PRO_COM as "company code"
from item_mast
select pro_name, pro_price
from item_mast
where pro_price >= 500
order by pro_name asc

-- 29.
select avg(pro_price), pro_com
from item_mast
group by pro_com


-- 30.
select avg(pro_price), pro_com
from item_mast
group by pro_com

-- 31.
select distinct emp_lname
from emp_details

-- 32.
select *
from emp_details
where emp_lname = 'Snares'

-- 33.
select *
from emp_details
where emp_dept = 57