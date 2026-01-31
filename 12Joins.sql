use school;
show tables;

## 1. Inner Join - common records
-- show the students names from students table 
-- along with their class name from classes table 
-- Tables: students, classes

select * from students;
select * from classes;

select students.name, classes.class_name
from students
inner join classes
on students.class_id = classes.class_id;

-- Show name of students, their class_name 
-- and the branch they study in.


select * from students;
select * from classes;
select * from branches;

select students.name, classes.class_name, branches.branch_name
from students
inner join classes on students.class_id = classes.class_id
inner join branches on classes.branch_id = branches.branch_id;

-- Using Alias
select s.name, c.class_name, b.branch_name
from students s
inner join classes c on s.class_id = c.class_id
inner join branches b on c.branch_id = b.branch_id;

-- Show teacher name, their dept name 
-- and the class_name of the class they are teaching to

select * from teachers;
select * from department;
select * from teacher_class;
select * from classes;


select t.teacher_name, d.dept_name, c.class_name
from teachers t
join department d on t.dept_id = d.dept_id
join teacher_class tc on t.teacher_id = tc.teacher_id
join classes c on c.class_id = tc.class_id;


### LEFT Join 
-- List all the branches and show the classes available in each branch 
select * from branches;
select * from classes;



select b.branch_name, c.class_name
from branches b
left join classes c
on b.branch_id = c.branch_id;

-- list all branchs, classess in each branch, 
-- the student name in each class
select * from students;
select * from branches;
select * from classes;


select s.name,b.branch_name, c.class_name 
from branches b
left join classes c on b.branch_id = c.branch_id
left join students s on c.class_id = s.class_id; 

-- list all student names, their class names and the teacher teaching that class
select * from students;
select * from classes;
select * from teacher_class;
select * from teachers;


select s.name, c.class_name, t.teacher_name
from students s
left join classes c on s.class_id = c.class_id
left join teacher_class tc on c.class_id = tc.class_id
left join teachers t on tc.teacher_id = t.teacher_id;

## RIGHT JOIN 
-- Display all teachers & their respective depts 

select * from teachers;
select * from department;


select t.teacher_name , d.dept_name
from department d
right join teachers t on t.dept_id = d.dept_id;


-- list all Departments & respective teachers and 
-- check if they are employed with them or not

select * from teachers;
select * from employee;
select * from department;


select d.dept_name, t.teacher_name, e.emp_name
from department d
right join teachers t on t.dept_id = d.dept_id
right join employee e on t.emp_id = e.emp_id;


select d.dept_name, t.teacher_name, e.emp_name
from teachers t
right join department d on t.dept_id = d.dept_id
right join employee e on t.emp_id = e.emp_id;

-- Solve this using left join 

## Cross JOin 
use learndb;
select * from drinks;
select * from meals;

select mealname, drinkname, (meals.rate + drinks.rate) as total_bill
from meals
cross join drinks;


## SELF JOINs 
use learndb;

select * from myemp;

-- Display emp_id,first_name,last_name,mgr_fname,mgr_lname,mgr_id

select e.emp_id,e.first_name,e.last_name,
m.first_name as mgr_fname,m.last_name as mgr_lname, m.emp_id as mgr_id
from myemp as e
inner join myemp as m 
on e.mgr_id = m.emp_id; -- 105 records returned

-- Use left join to get all 106 records
select e.emp_id,e.first_name,e.last_name,
m.first_name as mgr_fname,m.last_name as mgr_lname, m.emp_id as mgr_id
from myemp as e
left join myemp as m 
on e.mgr_id = m.emp_id;



-- *************************************************************************************
-- Another example of JOIN

## JOINS IN SQL

use learndb;
-- switch to command prompt
select * from movies;
select * from members;

## FULL JOIN Not supported by MYSQL.
## UNION and UNION ALL

-- Use UNION for that including LEFT and RIGHT join
-- Returns all rows from both tables, including unmatched rows

SELECT *
FROM movies mv
LEFT JOIN members m
ON mv.id = m.movieid
UNION -- removes duplicates, 13 records received
SELECT *
FROM movies mv
RIGHT JOIN members m
ON mv.id = m.movieid;


-- Using Union All
SELECT *
FROM movies mv
LEFT JOIN members m
ON mv.id = m.movieid
UNION ALL-- includes duplicates, 18 records received
SELECT *
FROM movies mv
RIGHT JOIN members m
ON mv.id = m.movieid;

-- check common columns in both tables: id in movies, movieid in members
-- common records in both tables: 1,2,5,8,10: 5 records

-- Display member and movie name who have watched movies.
-- Inner Join: Common records will be displayed
-- Display only those members who have watched a movie


SELECT m.memid,
       m.first_name,
       m.last_name,
       mv.title,
       mv.category
FROM members m
INNER JOIN movies mv
ON m.movieid = mv.id;


-- Display all members, even those who did not watch any movie
-- LEFT Join


SELECT m.memid,
       m.first_name,
       m.last_name,
       mv.title,
	   mv.category
FROM MEMBERS m
LEFT JOIN MOVIES mv
ON m.movieid = mv.id;

-- Display all movies, even if no member watched them
-- RIGHT JOIN


SELECT m.first_name,
       m.last_name,
       mv.title,
       mv.category
FROM members m
RIGHT JOIN movies mv
ON m.movieid = mv.id;


-- Display Members who have NOT watched any movie
-- LEFT Join where movie id is NULL


SELECT m.memid,
       m.first_name,
       m.last_name,
       m.movieid
FROM members m
LEFT JOIN movies mv
ON m.movieid = mv.id
WHERE mv.id IS NULL;


-- Display Movies that have NOT been watched by anyone
-- Movies table - 3,4,6,7,9 movie ids are not watched by anyone


SELECT mv.id,
       mv.title,
       mv.category
FROM movies mv
LEFT JOIN members m
ON m.movieid = mv.id
WHERE m.memid IS NULL;

-- OR same result with RIGHT JOIN

SELECT mv.id,
       mv.title,
       mv.category
FROM members m
RIGHT JOIN movies mv
ON m.movieid = mv.id
WHERE m.memid IS NULL;

-- Count how many members watched movies in each category
-- Animation movies watched by 2 members, Action - 1, 18+ - 1, Romance - 1


SELECT mv.category,
       COUNT(m.memid) AS total_rentals
FROM movies mv
LEFT JOIN members m
ON m.movieid = mv.id
GROUP BY mv.category;


-- Display members who watched 18+ movies
-- common people - who watched movie (18+) 

SELECT m.first_name,
       m.last_name,
       mv.title,
       mv.category
FROM members m
JOIN movies mv
ON m.movieid = mv.id
WHERE mv.category = '18+';
-- ***************************************************************************************

select * from authors;
select * from books;

-- Display authorid of authors and title of books
-- common records


select title, 
Name 
from authors inner join books 
on books.aid=authors.authorid; 

-- *********************************************************************
-- CROSS JOIN: Most simplest join, No common columns are needed
-- Here we have cartecian join or cartecian product
-- Say table T1 and T2 has 3 records each. It is just a blind join.
-- Every record in T1 will be connected to all records in T2.

select * from meals;
select * from meals cross join drinks; -- Output: 9 records

-- combination of Omlet with all 3 drinks from drinks table,
-- similarly combination of sausage and pancake with all 3 drinks.

-- Display Total Rate for each record if I order any of the above combinations
-- For eg. Display Total rate as 40.75 + 5 = 45.75 for each combination


select mealname,drinkname,
m.rate + d.rate as Total_Rate 
from meals m cross join drinks d;

-- *************************************************************
-- SELF JOIN: Connection with same table
-- Till now we established connection with different tables.

-- Refer myemp table
-- Find empid, firstname,lastname,mgrid from myemp table 
-- and disply top 20 records.
select * from myemp;


select emp_id,first_name,last_name,mgr_id from myemp limit 20;

-- Who is the manager of Neena? Values in mgr_id are coming from emp_id
-- For self join we assume there are 2 tables called myemp.
-- To find manager of every person use self join i.e. connection on single table only
-- Consider 1st myemp table as emp table and 2nd myemp table as mgr table.
-- we can write inner join here.



select emp.emp_id,emp.first_name,emp.last_name,
mgr.first_name as mgr_fname,mgr.last_name as mgr_lname
from myemp as emp join myemp as mgr on emp.mgr_id=mgr.emp_id; -- 105 rows
