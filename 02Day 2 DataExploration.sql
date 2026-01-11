use classess;
show tables;
select * from students;

-- DATA EXPLORATION
-- see all columns and structure of table
desc students;

-- select only particular columns from the table
select student_Name, age, qualification, grad_year from students;
/*
check output panel - 40 rows returned.
LIMIT0, 1000 - This is NOT written by you.
It is automatically added by the MySQL client / GUI tool (such as MySQL Workbench).
It means - “Show records starting from row 0 and display maximum 1000 rows.”
It prevents freezing if table has millions of rows and makes faster execution
*/
-- Count no of rows in table
select * from students;

select count(*) from students;
select count(*) as count_of_students from students;


select count(student_name) as cnt from students;
select count(age) as total_rows from students;

-- Check null vlaues in age of students
select count(*) from students where age is null;
select count(*) from students where age is  not null;

-- Extract data depending on certain conditions
-- Check uniques of Grad-year
select distinct(grad_year) from students;

select count(distinct(grad_year)) from students;
select count(distinct(grad_year)) as gradyr_total from students;

-- How many students in grad_year?
select count(*) as pass_20 from students where grad_year = 2020;
select count(*) as pass_21 from students where grad_year = 2021;
select count(*) as pass_22 from students where grad_year = 2022;
select count(*) as pass_23 from students where grad_year = 2023;
select count(*) as pass_24 from students where grad_year = 2024;

/*
Find what all qualiications are availabe.
Find count of all qualifications.
Find in each qualification how many students are there.
*/
select distinct(qualification) from students;
select count(distinct(qualification)) from students;
select count(*) as BSc from students where qualification = 'b.Sc';
select count(*) as BTech from students where qualification = "B.Tech";
select count(*) as MTech from students where qualification = 'M.Tech';
select count(*) as BCA from students where qualification = 'BCA';
select count(*) as MCA from students where qualification = 'MCA';
select count(*) as BE from students where qualification = 'BE';


-- GROUP BY: 
/*
Row Level Functions - will give 1 output for each row
Group Level Functions - will take a set of rows/records 
					    and give you 1 output for each group
                        Aggregate functions (min, max, avg, count) for age
Restriction: Here we can select only those columns which are part of our group by command
*/

select min(age) as min_age from students;
select max(age) as max_age from students;
select avg(age) as avg_age from students;

select * from students;
select student_id,student_name from students;
-- Find the total number of students in every year
select grad_year, count(*) as total from students group by grad_year;

-- Find average age of students yearwise.
select grad_year, avg(age) as avg_age from students group by grad_year;

-- VIEW PARTICULAR ROWS ONLY
-- limit n --> only n number of records will be displayed
-- offset n --> display records excluding first n number of recods
-- First 5 rows
select * from students; -- will show all records
select * from students limit 15; -- top 5 records only displayed

-- view only 8th row
select * from students limit 1 offset 7;

-- display only 20th row
select * from students limit 1 offset 19;

-- display 8th row onwards 5 rows i.e. 8,9,10,11,12
select * from students limit 5 offset 7;

-- view 25th row onwards 6 rows i.e 25,26,27,28,29,30 
select * from students limit 6 offset 24;

-- VIEW PARTICULAR COLUMNS ONLY
desc students;
select student_id, student_name, email, phone, address from students; -- got 40 records

-- same command with limited records (last 5 records)
select student_id, student_name, phone, address from students limit 5 offset 35;

-- we can calculate any mathematical expression and display it with heading
select 5 * 5 as Result;

select 5 = 5 as Result; -- 1 indicates True, 0 indicates Flase

select 5 != 5 as Answer;

select 5 + null as Result; -- anything added to null is always null

select 5 = null as Result;


