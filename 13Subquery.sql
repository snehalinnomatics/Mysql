## SUBQUERY

-- A subquery in MySQL is simply a query written inside another SQL query.
-- Output of Inner query is given as an input to Outer query.
use learndb;
select * from myemp;
/* 
SUBQUERY:
 - It is a query within query. It's execution is slower than normal query so avoid using subquery.
 - 3 Types of subqueries:
 - 1. Single valued subquery: It returns a single value as output
   2. Multivalued subquery: It returns multiple values as output
   3. Correlated subquery: 
    In above 2 types we can separately execute inner or subquery and can get result
	
    But in case of Correlated subquery, 
    the subquery/inner query can not be executed separately
	It depends on some value from main query
    For eg.:
    -- Display employee whose salary > avg salary of department

    eg of correlated query: 
     
    select * from myemp e where salary >          -- This is main query
    (select avg(salary) from myemp where dep_id = e.dep_id) order by dep_id; -- this is subquery

*/

-- SINGLE VALUED SUBQUERY. Inner query returns single value i.e. 24000
select * from myemp where salary = (select max(salary) from myemp);

-- we can execute inner and outer queries separately
select max(salary) from myemp;

select * from myemp where salary = 24000;


-- In Learndb Add two tables: employees and offices

-- MULTI VALUED SUBQUERY
select * from employees; -- OfficeCode column refers offices table
select * from offices; -- For officecode 1,2,3 country is USA


-- Find people worked in USA.
-- First check officecodes for USA

select officecode from offices where country = 'USA'; -- Ans.: 1,2,3

-- MULTIVALUED SUBQUERY
-- Now find people from these 3 officecodes. This is multivalued subquery.

-- Inner Query
select officecode from offices where country = 'USA';

-- Outer/SubQuery
select * from employees where officecode in (1,2,3);

-- Multivalued Subquery
select * from employees where officecode in(select officecode from offices where country = 'USA');


-- Actually best way to solve the same problem statement is using Inner join.

select emp.lastname,emp.firstname,emp.officecode,off.country 
from employees as emp inner join offices as off 
on emp.officecode = off.officecode; -- will return you all common records

-- But we want people only from USA.
select emp.lastname,emp.firstname,emp.officecode,off.country 
from employees as emp inner join offices as off 
on emp.officecode = off.officecode and off.country = 'USA';



-- CORRELATED SUBQUERY
-- Here subquery or inner query can not be executed separately.
-- It depends on some value from main / outer query.


-- Find people who get salary above avg than their own department. (refer myemp table)
-- Display records in ascending order of dep_id

-- First Display department wise avg salalry 
-- and display in sorted order of dep_id
    
    select dep_id,avg(salary) from myemp group by dep_id order by dep_id;
   
-- display all employees from dep 10 only
   
select * from myemp where dep_id = 10;

select * from myemp e where salary > -- this is main/outer query
(select avg(salary) from myemp where dep_id = e.dep_id) order by dep_id;

/* When we say select * from myemp e, it refers the 1st record, 
then it checks dep_id = e.dep_id.
Now suppose for 1st record e.dep_id = 10
Then it will take avg of all salaries of dep_id = 10 only.
If Tom's salary > avg(salary) then only that record will be printed.
Then it will move to 2nd record.
Now suppose e.dep_id = 20
Then process will be repeated for all departments.
*/






use learndb;

select * from myemp;

-- Display employees with max salary


select * from myemp where salary = 
(select max(salary) from myemp);

-- show average salary with employee name and salary

SELECT AVG(salary) FROM myemp;

SELECT first_name,
       salary,
       (SELECT AVG(salary) FROM myemp) AS avg_salary FROM myemp;


-- Normal Query: 
-- In each department display count of employees, avg salary
-- sort by depid.


SELECT dep_id,
           COUNT(*) AS emp_count,
           AVG(salary) AS avg_salary
    FROM myemp
    GROUP BY dep_id 
    ORDER BY dep_id;

-- Sbquery: From above output display only those departments 
--          whose avg salary is more than 10000

-- Assume the output of above command is table t 
-- which contains 11 records and 3 columns
-- How will you write query on table t to find 

SELECT *
FROM (
    SELECT dep_id,
           COUNT(*) AS emp_count,
           AVG(salary) AS avg_salary
    FROM myemp
    GROUP BY dep_id
) as t
WHERE t.avg_salary > 10000;


-- Apply 20% bonus on salary 
-- (i.e. multiply salary with 0.2)
-- Display only those employees whose bonus is more than 2000


select first_name,salary, (salary * 0.2) as bonus
from myemp
where bonus > 2000;
-- GOT ERROR in above query 
-- because of sequence of query execution
-- First We Got Hungry So Ordered Lunch
-- From, Where, Group by, Having, Select, Distinct, Order by, Limit
-- Aliases/Derived columns cannot be used in WHERE, 
-- but can be used in ORDER BY and outer queries.

-- Why ERROR: Column aliases (bonus) are created 
-- after the WHERE clause is evaluated.
-- So at the time WHERE bonus > 2000 runs, 
-- bonus does not exist yet.

-- SOLUTION 1: REPEAT EXPRESSION
select first_name,salary, (salary * 0.2) as bonus
from myemp
where (salary * 0.2) > 2000;

-- SOLUTION 2: USE SUBQUERY: Inner query will be executed first
Select *
from (select FIRST_NAME,SALARY, (salary * 0.2) as bonus
from myemp) as s
where s.bonus > 2000;

-- ***********************************************************************************

-- Filter emp whose bonus > 2000
-- calculate the total salary (salary + bonus)
-- filter total salary > 20000
-- deduct 5% tax, (final_salary = total_salary - total_salary * 0.05)
-- filter final_salary > 20000


-- Part 1: Filter emp whose bonus > 2000


Select *
from (select FIRST_NAME,SALARY, (salary * 0.2) as bonus
from myemp) as s
where s.bonus > 2000;

-- Part 2: calculate the total salary (salary + bonus)
select *
from (Select *, salary + bonus as total_salary
from (select first_name,salary, (salary * 0.2) as bonus
from myemp) as s1
where bonus > 2000) as s2;

-- Part 3: filter total salary > 20000
select *
from (Select *, salary + bonus as total_salary
from (select first_name,salary, (salary * 0.2) as bonus
from myemp) as s1
where bonus > 2000) as s2
where total_salary > 20000;

-- Part 4: deduct 5% tax, 
-- (final_salary = total_salary - total_salary * 0.05)
select *
from (select *, total_salary - total_salary * 0.05 as final_salary
from (Select *, salary + bonus as total_salary
from (select first_name,salary, (salary * 0.2) as bonus
from myemp) as s1
where bonus > 2000) as s2
where total_salary > 20000) as s3;

-- Part 5: filter final_salary > 20000
select *
from (select *, total_salary - total_salary * 0.05 as final_salary
from (Select *, salary + bonus as total_salary
from (select first_name,salary, (salary * 0.2) as bonus
from myemp) as s1
where bonus > 2000) as s2
where total_salary > 20000) as s3
where final_salary >20000;





### CTE- Common Table Expression
/*
- CTE tells that instead of selecting from a table, you select from another select command

- eg.A) 
        "select * from (select fname,lname,salary,salary*0.2 as bonus from myemp) as cte 
        where cte.bonus > 3000;"
        
        In this query 1st internal query will be executed and its output will be stored in cte.
        Then we can give command as: 
        
        "select * from cte where cte.bonus > 3000;"
        
- So now instead of eg A) we can use following command:

		"with cte as (select fname,lname,salary,salary*0.2 as bonus from myemp)
        select * from cte where cte.bonus > 3000;" */        

with cte_1 as (select first_name,salary, (salary * 0.2) as bonus
from myemp),
cte_2 as (Select *, salary + bonus as total_salary
from cte_1
where bonus > 2000),
cte_3 as (select *, total_salary - total_salary * 0.05 as final_salary
from cte_2
where total_salary > 20000)

select * from cte_3
where final_salary > 21000;





