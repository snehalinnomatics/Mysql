-- DATA FILTERING
use classess;
show tables;
select * from students;

-- COMPARISON OPERATORS: <, >, <=, >=, =, != OR <>
-- Find students whose age is greater than 22
select *
from students
where age > 22;

-- Find students whose age is less than or equal to 22
select student_name,age
from students
where age <= 22;

-- list students who have qualification of 'MCA'
select *
from students
where qualification = 'mca';

select * from students where qualification = 'mtech'; -- should write correct spelling, case doesn't matter

-- LOGICAL OPERATORS: and, or, not
-- Find students who are either 20 year old or 25 year old
select student_name, age
from students
where age = 20 or age = 25;

-- age less than 25 and have enrolled in or after 2024
-- 2024-01-01
select student_name,age,enrolled_on
from students
where age < 25 and enrolled_on >= '2024-01-01';

select *
from students
where enrolled_on >= '2024-01-01' and age < 25;

-- find students whose qualication is not B.Sc
select * from students where not qualification ="B.Sc";

-- find students whose grad_year is not 2020
select *
from students
where not grad_year = 2020;


-- RANGE OPERATOR: BETWEEN
-- Checks if a value is greater than or equal to the lower limit
-- and less than or equal to the upper limit.
-- Both limits are inclusive.
-- list students whose grad_year is between 2020 - 2023
select *
from students
where grad_year between 2020 and 2023;

-- Find students who enrolled between January 2024 and June 2024
select *
from students
where enrolled_on between '2024-01-01' and '2024-06-30';

-- Find students born between 2000 and 2005
select *
from students
where dob between '2000-01-01' and '2005-12-31';


-- MEMBERSHIP OPERATOR
-- IN is simpler and more readable than multiple OR conditions
-- Checks if a value exists within a list, subquery, or range of values.
-- Find students who have qualification 'MCA','B.tech','B.SC'
select *
from students
where qualification in ('MCA','B.tech','B.SC');

-- Find students from 'Hyderabad', 'Pune'
select *
from students
where address in ('Hyderabad','Pune'); -- no records as we need to search entire string

select *
from students
where address in ('Hyderabad, Telangana','Pune, Maharashtra');

-- find student who are not in hyderabad or pune
select *
from students
where address not in ('Hyderabad, Telangana','Pune, Maharashtra');

## SEARCH OPERATOR: LIKE
/*
Pattern Matching: Instead of searching for exact value, you search for a pattern.
2 wild cards are used:
'%' >> match any number of characters (including zero characters)
'_' >> match exactly one character
*/

-- Find students whose name starts with letter 'A'
select *
from students
where student_name like 'A%';

-- Find all students in whose name 'a' is present (anywhere)
select *
from students
where student_name like '%A%';

-- Find all students whose name ends with 'a'
select *
from students
where student_name like '%A';
 
 -- Find all students whose name starts and ends with 'a'
select *
from students
where student_name like 'a%A';

-- Find students from 'Hyderabad' or 'Pune'
select *
from students
where address like 'Hy%' or address like 'Pu%';

select *
from students
where address like 'Hy%';

-- Find students from Maharashtra
select *
from students
where address like '%Maha%';



-- find students name whose email is with '@gmail.com'
select *
from students
where email like '%@gmail.com';

-- Find all students whose name does not start with A
select *
from students 
where student_name not like 'A%';


-- phone no ending with 00
select *
from students
where phone like '________00'; -- 8 underscores are given in the beginning
-- find students having only 3 characters in name and starts with 'S'
select * from students where student_name like 'S__';

-- 5 char before '@gmail.com'
select *
from students
where email like '_____@gmail.com'; -- 5 underscores are given in the beginning

-- Find student whose name starts with M, ends with a and having total 4 characters in the name
select *
from students
where student_name like 'M__a';

