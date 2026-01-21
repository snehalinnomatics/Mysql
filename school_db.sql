-- Design school database 

-- Branches accross cities
-- classes [arts, commerce, science]
-- students
-- Teachers
-- fees
-- depts
-- employees

-- create database 
create database school;
-- drop database school;
use school;

-- 1. Branches 
create table if not exists branches (
branch_id tinyint auto_increment primary key,
branch_name varchar(100) not null,
city varchar(100) not null); 

-- 2. Classes
create table classes(
class_id varchar(50)  primary key,
branch_id tinyint,
class_name varchar(100),
foreign key(branch_id) references branches(branch_id)
on update cascade
on delete cascade);

-- 3. Students
create table students(
student_id int auto_increment primary key,
name varchar(100) not null,
age int,
phone varchar(50),
email varchar(100) not null,
address varchar(200),
class_id varchar(50),
foreign key(class_id) references classes(class_id)
on update cascade
on delete cascade );

-- 4. Departments
create table department(
dept_id int auto_increment primary key,
dept_name varchar(50) not null);

-- 5. Employee table
create table employee(
emp_id int auto_increment primary key,
emp_name varchar(100) not null,
qualification varchar(100),
designation varchar(50),
phone varchar(50),
email varchar(100) not null,
address varchar(200),
dept_id int,
foreign key(dept_id) references department(dept_id)
on update cascade
on delete cascade);

-- 6. Teachers
create table teachers(
teacher_id int auto_increment primary key,
teacher_name varchar(200) not null,
qualification varchar(100),
designation varchar(50),
phone varchar(50),
email varchar(100) not null,
emp_id int,
dept_id int,
foreign key (emp_id) references employee(emp_id)
on update cascade
on delete cascade,
foreign key (dept_id) references department(dept_id)
on update cascade
on delete cascade);


-- 7. Teacher_class

create table teacher_class(
teacher_id int,
class_id varchar(50),
foreign key(teacher_id) references teachers(teacher_id)
on update cascade
on delete cascade,
foreign key(class_id) references classes(class_id)
on update cascade
on delete cascade);

-- 8. Fees 
create table fees(
fees_id int primary key auto_increment,
student_id int,
total_amt decimal not null,
amount_paid decimal not null,
payment_date date not null,
check (amount_paid <= total_amt),
foreign key(student_id) references Students(student_id)
on update cascade
on delete cascade);





