## CONDITIONAL STATEMENT / CASE STATEMENT
/*
CASE is an expression in MYSQL
CASE is used for:
1. Conditional logic inside SQL
2. Categorizing data
3. Replacing multiple IF() conditions
4. Creating derived columns

Syntax of SIMPLE CASE:
CASE col_name
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE result
END AS short_name
FROM table_name;

Simple CASE only supports equality checks. So here we have to write Expression after CASE
*/
-- Refer Job_ID column
-- if value is 'IT_PROG' display 'Programmer'
-- if 'HR_REP'  display 'HR Executive'
-- if 'SA_MAN'  display 'Sales Manager'
-- else 'Other Job'

select * from myemp;

SELECT FIRST_NAME, JOB_ID,
       CASE JOB_ID
           WHEN 'IT_PROG' THEN 'Programmer'
           WHEN 'HR_REP'  THEN 'HR Executive'
           WHEN 'SA_MAN'  THEN 'Sales Manager'
           ELSE 'Other Job'
       END AS job_description
FROM myemp;


-- Refer Gender column
-- if F THEN 'Female'
-- if M THEN 'Male'
-- ELSE 'None of These'

select * from peopledata;


select name, gender,
CASE gender
	When 'M' Then 'Male'
    When 'F' Then 'Female'
    Else 'None of these'
End as M_f
From peopledata;

-- SEARCHED CASE
-- When we write BOOLEAN Conditions (which returns either True or False)
-- in front of When keyword expression is not required.
-- eg  WHEN salary > 18000 THEN 'HighPaid' 

-- SOLVE:
-- Refer myemp table
-- Categorize salaries in low, high and avg pay
-- Below are the boolean conditions which will return either True or False
-- if salary > 18000 -> HighPaid
-- if salary 10000 - 17999 -> AvgPaid
-- remaining Lowpaid


select first_name, salary,
case 
when salary > 18000 then 'HighPaid'
when salary between 10000 and 17999 then 'AvgPaid'
else 'LowPaid'
end as category 
from myemp;

-- Refer Peopledata Table
-- Find sum of male & Female
-- ** Use case statments only

-- Only for Male
select 
sum(case 
	when gender = 'M' then 1 else 0 
end) as Male 
    from peopledata;
 
 
 -- Only for Female
select 
sum(case 
	when gender = 'F' then 1 else 0 
end) as Female 
    from peopledata;


-- For both Male and Female
select * from peopledata;

select 
sum(case
	when gender = 'M' then 1 else 0 
    end) as Male,
sum(case
    when gender = 'F' then 1 else 0 
    end) as Female
from peopledata;



-- Same problem statement using Group by and Count()


SELECT gender, COUNT(*) AS total
FROM peopledata
GROUP BY gender;

-- CASE is Best when you want counts as columns

-- -------------------------------------------------------------------------------------

use learndb;

## SELECT, FROM and WHERE

-- Find the length of only those book titles 
-- whose authorid are 1 or 5, Refer table Books from learndb
 
select * from books;

select *, 
length(title) as title_len
from books; -- Here we got lenth of all book titles

select *, 
length(title) as title_len
from books
where authorid in (1,5);


-- Use myemp table 
-- Find out employees whose first_name starting from vowels
-- a,e,i,o,u

select * from myemp;

select distinct first_name
from myemp
where
first_name like 'A%' or
first_name like 'E%' or
first_name like 'I%' or
first_name like 'O%' or
first_name like 'U%';

-- same problem statement using substring()

select distinct first_name
from myemp
where substring(first_name,1,1) in ('a','e','i','o','u');

-- Same problem statement using left()

SELECT distinct first_name
FROM myemp
WHERE LEFT(first_name, 1) IN ('A', 'E', 'I', 'O', 'U');

-- ---------------------------------------------------------------------------------------------

## GROUP BY & HAVING

select * from books;

-- Find how many books are written by author
-- i.e. authorid wise we need to take count of books


select AuthorId, count(*) as bookswritten
from books
group by authorid;



-- Implement having
-- Find out authors who have written books >= 3


select AuthorId, count(*) as bookswritten
from books
group by authorid
having bookswritten >= 3;


-- Find out Authors who have written exactly 2 books


select AuthorId, COUNT(*) as total_books
from Books
group by AuthorId
having total_books = 2;



-- Refer myemp table.
-- Find out department wise avg salary
select * from myemp;


select dep_id, avg(salary) as avg_salary
from myemp
group by dep_id;

-- Find out which departments are having 
-- more than 8000 average salary.

select * from myemp;


select dep_id, avg(salary) as avg_salary
from myemp
group by dep_id
having avg_salary > 8000;


-- Refer movies table.
-- Find out the count of no of movies in each category
select * from movies;


select category, count(*) as total
from movies
group by category;


-- Find out the count of no of movies in each category
-- where count is more than 2

select category, count(*) as total
from movies
group by category
having total > 2; 

-- instead of total alias we can use function also.
-- we will get same answer

select category, count(*) as total
from movies
group by category
having count(*) > 2; 

-- ----------------------------------------------------------------------------

## ORDER BY - Sorts in ascending or descending order
-- Sequence wise ORDER BY is always last (before LIMIT)

-- Refer students table
-- Order students by name (A → Z)

use classess;
select * from students;

SELECT *
FROM students
ORDER BY student_name ASC;

-- OR - writing ASC is optional. By default it is ASC

SELECT *
FROM students
ORDER BY student_name;

-- Order students by name (Z → A)

SELECT *
FROM students
ORDER BY student_name DESC;

-- Order students by age (youngest to oldest)

SELECT student_name, age
FROM students
ORDER BY age;

-- Order by multiple columns
-- Sort First by qualification, then by student_name
-- Carefully observe the output


SELECT student_name, qualification
FROM students
ORDER BY qualification, student_name;


-- Order students by age, but show youngest 5 only



SELECT student_name, age
FROM students
ORDER BY age
LIMIT 5;


-- Order students by DOB (oldest student first)
-- (Older DOB = earlier date)
select * from students;

SELECT student_name, dob
FROM students
ORDER BY dob;


-- Order students by age: Oldest students should be displayed first
-- Then order them by name is ascending order


SELECT student_name, age
FROM students
ORDER BY age DESC, student_name;

-- Order students by length of name


SELECT student_name,length(student_name) as name_len
FROM students
ORDER BY LENGTH(student_name) DESC;

-- OR
SELECT student_name,length(student_name) as name_len
FROM students
ORDER BY name_len DESC;


-- Display only BCA students and display oldest student first


SELECT student_name, age,qualification
FROM students
WHERE qualification = 'BCA'
ORDER BY age DESC;

-- Refer myemp table
use learndb;
select * from myemp;

-- List out all departments in myemp table in ascending order
-- Display total employees in each department

select dep_id, count(*) as totoal_emp
from myemp
group by dep_id
order by dep_id;

-- Sort 1st by dep_id and then by mgr_id
select * from myemp;

select dep_id, mgr_id
from myemp
order by dep_id, mgr_id;

-- Arrange records based on dep_id
-- and in each department display first junior most employees


select first_name, hire_date, dep_id
from myemp
order by dep_id, hire_date desc;


-- Arrange records based on dep_id
-- and in each department display first senior most employees


select first_name, hire_date, dep_id
from myemp
order by dep_id, hire_date;