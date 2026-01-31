## DATABASE CONSTRAINTS
/*
Database Constraints, Primary and Foreign Keys, Sequence Object

  Constraints: Restrictions that are applied on columns of a table.
  Two Types of Constraints: 
  1. DOMAIN Constraints
  2. KEY Constraints
  
  1. DOMAIN CONSTRAINTS:
  - UNIQUE: can't have duplicate values. sid can have only unique entries.
  - NOT NULL: value should be specified
  - DEFAULT: 
  - CHECK: allows you to put some conditions. eg. put age of only those people whose age > 18.
  2. KEY CONSTRAINTS:
  - There should be at least 1 column in a table which can uniquely identify records.

  - Key constraints are implemented using 'PRIMARY KEY'.
  - Primary key is used to enforce the constraint 
  - that it will uniquely identify the records in table.
  - By default a primary key is a column which is both Unique 
  - (no repeated values) and Not Null (you have to put some value).
  - While creating table, we can make a column as a Primary Key.
*/

create database admission;

use admission;

show tables;
-- Create a simple table students

create table students(sid integer,sname char(30),age integer,course char(30));
show tables;
desc students;
select * from students;

-- Insert records.
insert into students values (1,'Amit',25,'Mysql');
insert into students values (2,'Neha',24,'Mysql');
insert into students values (3,'Soham',27,'Mysql');
insert into students values (4,'Snehal',28,'Mysql'); 
select * from students;
show tables;

create table patients (pid integer, pname varchar(255), dob date, toa datetime);
show tables;
desc patients;
insert into patients values (1,'Harry','2000-05-26','2023-04-04 08:30:00');
insert into patients values (2,'Potter','2000-04-27','2023-04-04 08:30:00');
insert into patients values (3,'Jim','2000-05-26','2023-04-04 08:30:00');
insert into patients values (4,'Tom','2000-05-26','2023-04-04 08:30:00');


create table if not exists patients (pid integer, pname varchar(255), dob date, toa datetime);

create table test(id integer);
show tables;

-- DROP COMMAND
drop table test;
show tables;

-- ALTER COMMAND
-- Table name, Column name, data type, no. of columns can be changed.

-- ADD COLUMN 'marks' of integer data type with default value 0
-- when new column is added or changed we need to mention it's datatype

alter table students add column marks integer default 0;
select * from students;

-- DROP COLUMN 'age'

alter table students drop column age;
select * from students;


-- CHANGE COLUMN 'sid' with data type integer.
alter table students change column sid std_id integer;
select * from students;

desc students;

-- To change datatype of a column:
-- MODIFY COLUMN 'sname' with datatype

alter table students modify column sname varchar(30);
desc students;

-- RENAME COMMAND
-- To change table name: 
-- We can us RENAME with ALTER command
-- OR directly RENAME Command can be used

alter table students rename to myclass;
show tables;

-- Rename command
rename table myclass to students;
show tables;


-- CHANGE COLUMN 'std_id' with data type integer.
alter table students change column std_id sid integer;
select * from students;

-- -------------------------------------------------------------------------------------------
## DML: Data Manipulation Language Commands: INSERT, UPDATE, DELETE
-- DML INSERT Commands
select * from students;
desc students;
insert into students values(5,'John',null,50); -- Type 1 Insert
select * from students;

insert into students (sid,sname,marks) values (6,'Jim',60); -- Type 2 Insert
select * from students;

insert into students (sid,sname,course) values (7,'Tim','Mysql'); 
-- by default 0 will be filled in marks column
select * from students;


-- Adding Multiple Records at a time
-- Type 3 Insert: with single insert command we can add multiple records
insert into students values (8,'Potter','Mysql',78),(9,'Pat','Mysql',77),(10,'Albert','Mysql',88);
select * from students;

-- DML UPDATE Command
-- Change name of student to 'Natasha' whose sid is 10

update students
set sname = 'Natasha' 
where sid = 10;

-- If Error - type this command: 
set sql_safe_updates = 0;
select * from students;

-- Again try to Change name of student to 'Natasha' whose sid is 10

update students
set sname = 'Natasha' 
where sid = 10;

select * from students;
-- set marks = null wherever marks are 0.

update students
set marks = null 
where marks = 0;

select * from students;

-- change values of 2 columns at the same time

update students
set course = 'DA', marks = 85 
where sid = 9;

select * from students;

update students set course = 'Mysql'; 

-- all values of course will be updated
select * from students;

-- DML DELETE Command
-- Syntax: delect from students where <condition>;
-- delete record for sid=2

delete from students where sid = 2;

select * from students;

/* -- delete all records which don't have any marks.
If you give following query: */

delete from students where marks = null;
select * from students;

/* 0 rows affected. Because we can't do any comparisons with null
 So correct query is as follows: */
 
delete from students
where marks is null; -- Only operator you can use with Null is: 'is null' or 'is not null'

select * from students;

-- To delete all records from table:
delete from students;

select * from students; 
-- only records are deleted. structure remains the same


-- Insert 3 records in students table:
insert into students values(1,'Ritesh','Mysql',70);
insert into students values(2,'Natasha','Mysql',90);
insert into students values(3,'Saloni','Mysql',95);
select * from students;

-- DDL DRCAT - TRUNCATE Command
truncate students; -- all records are deleted 

select * from students;
/* What is the difference between a DML command: 'delete from students' 
 and DDL command: 'truncate students'?
 Internally when truncate is executed it deals with table structure.
 Truncate will: 1st: delete tabel with which all records will be deleted and 2nd: it will automatically create empty table again. 
 Delete will: will delete all records and empty table will remain as it is.
 So End Results of both commands are same.
 
 How Truncate creates table automatically?
 Look for 'information_schema' in which 
 all information about all tables is stored.
 It is data about data. 
 Mysql refers that information to create table again. */
 
 show databases;
 show create table students;
 show create table patients;

-- -----------------------------------------------------------------------------------------

-- Apply CONSTRAINTS 

use admission;
  show tables;
  select * from students; -- empty set
  
  desc students; -- no constraints
  
  insert into students values(1,'Tommy','Mysql',45);
  insert into students values(1,'Tom','Mysql',45);
  
  select * from students;
  -- both records with same id will be entered in table without any error
  -- As there are no constraints on this table
  -- Let us drop students table and recreate it with some constraints.
  
  drop table students;
  select * from students;
  show tables;

  create table students(
  sid integer UNIQUE,
  sname varchar(20) NOT NULL,
  age integer CHECK (age > 18),
  course varchar(20));
 
  desc students;
  
 
  -- Insert some records in students table
  insert into students values(1,'Tom',19,'Mysql');

 select * from students; 
  -- try to insert duplicate sid: error will be raised

 insert into students values(1,'Tammy',19,'Mysql'); 
 insert into students values(2,'Tammy',19,'Mysql'); 
  select * from students;
  
  -- check if sid allows NULL values
  insert into students values(NULL,'John',22,'Analytics'); -- it allows us
  
  -- check if sid allows multiple NULL values
   insert into students values(NULL,'Jim',32,'Mysql'); -- it allows us as NULL is not comparable
   
   select * from students;
   
   -- add a student whose age<18
    insert into students values(5,'Jack',17,'Mysql'); -- error
    

    
    desc students;
  select * from students;
  -- insert record by explicitly writing Null in place of sname
  
  insert into students values(5,Null,25,'Mysql'); -- read error: sname can not be null
  
  insert into students (sid,age,course) values(5,25,'Mysql'); -- error
  -- different error: sname doesn't have a default value.
  -- i.e. it is trying to put null but can't put null because of NOT NULL constraint.
  
  
  -- change default value of sname to "Smith" using default constraint
  -- Either you can give default constant value while creating table OR
  -- After creating table use ALTER command to add default constant
  
  alter table students modify column sname varchar(20) NOT NULL DEFAULT "Smith";
  desc students;
  
  -- now try to insert record without giving sname. 
  -- Check whether it inserts default value or not
  
  select * from students;
  
  insert into students values(5,NULL,25,'Mysql'); -- error
  
  insert into students (sid,age,course) values (5,25,'Mysql'); -- record inserted
  select * from students;
  
  -- Is it possible to have multiple constraints on same column? YES
  -- sid integer NOT NULL UNIQUE
  
  
  
  
  -- Let us create one table Students2 with multiple constraings
  
create table students2(
sid tinyint primary key auto_increment,
name varchar(100) not null,
age tinyint check(age > 18),
gender enum('male','female'),
email varchar(100) unique not null,
phone_num char(10) unique,
address varchar(100) default 'Unknown');

select * from students2;

describe students2;

## Alter Command
-- Change table by adding column 'abouts'
alter table students2 add column abouts varchar(200);

-- change the datatypes, varchar(200) -> text
alter table students2 modify column abouts text;

-- rename column sid -> Student_id
alter table students2 change column sid student_id tinyint;

-- DROP 
-- drop column
alter table students2 drop column abouts;

-- drop table 
drop table students2;

-- ---------------------------------------------------------------------------

/* 3.  Referential Integrity Constraint
  Mysql is called a relational database 
  because you can create tables and then you can define connection 
  or relation between tables.
  
  Foreign Key:
  - A Foreign Key can only point to a Primary Key in some other table. 
  - It can not point to any other column.
  - Table that contains Foreign Key is called Child Table.
  - Table to which Foreign Key is pointing is called Parent Table.
  - Student Table - sid is Primary Key, cid is Foreign key, so it is CHILD Table.
  - Course Table - id is Primary key, so it is PARENT Table.
  - You can add more than one Foreign Keys in a table.
  
  Students Table (CHILD)						Course Table (PARENT)
  sid	sname	age		cid				cid		cname	duration	Fees
  
  1		Tom		20		C10				C10		Mysql	2wk			$100
  2		Tim		25		C10				C20		DA		6wk			$200
  3		Mary	20		C20				C30		DS		6mon		$500
  
  
  If someone try to delete say C20 record from parent (Course table) table, 
  related 3rd record (C20) in child (students table) table will become orphan. 

  So Mysql will not allow to delete record.
  - NO Deletion of Parent record
  - NO Updation in Parent record. (Can't change C10 to C100)
  - Child table can give permission for parent to be deleted provided, 
    you delete corresponding records from students table also. It uses following keywords:
  
  - ON DELETE CASCADE or ON UPDATE CASCADE are the optional permissions which may or may not be given.
  - Cascade means: propagate i.e. whataever changes you are doing in parent table, 
    you propagate it to child table also.
  - While creating, Parent table should be created first
  - While dropping, Child table should be dropped first.*/
  use learndb;
  show tables;
  select * from authors; -- Parent table as only Primary Key is present
  select * from books; -- Child Table - contains Primary and Foreign Key

  -- if we try to delete authors(parent) table, error will be raised
  -- delete table authors
  desc authors; -- Parent table - has only Primary key
  desc books; -- Child table - has Primary and Foreign key
  
  
  -- Check ER DIAGRAM of Learndb for books and authors table
  -- Go to Database Menu - Reverse Engineer - Next - Enter password - 
  -- Next - Select Database Learndb - Next - Next - Execute - Next - Finish
  
  
  drop table authors; -- Parent Table, read the error 
  select * from books;
  
  -- delete table books
  drop table books; -- successfully deleted
  select * from books;
  
  -- Now delete authors again.
  drop table authors; -- Child Table - successfully deleted
  select * from authors;
  
  -- create both the tables again
  
  create table authors(authorid integer PRIMARY KEY, name varchar(100));
  
  desc authors;
  -- whe we define primary key, authorid automatically becomes UNIQUE and NOT NULL
  
  create table books(bookid integer PRIMARY KEY,
  title varchar(255),
  aid integer,
  FOREIGN KEY(aid) REFERENCES authors(authorid)
  ON DELETE CASCADE   -- allows to delete records from parent table directly
  ON UPDATE CASCADE); -- allows to update records from parent table directly 
					  -- provided changes are propagated to child table automatically
  
  desc books;
  -- MUL represents a FOREIGN KEY
  -- open sql script from File Menu - Practicetables
  -- Selece insert into authors (8 commands) and click on lightning icon to execute
  -- select inset into books (14 commands) and execute it

insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');
  
  select * from authors;
  select * from books;
  
insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);

insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);

insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);

  select * from books;
  
  -- We have given ON DELETE CASCADE & ON UPDATE CASCADE
  -- i.e. Now if you delete a record from parent(authors) table,
  -- corresponding records will be deleted from child(books) table automatically
  
  -- 1st check records authors table
  select * from authors;
  -- authorid=1 is J K Rowling
  -- Now check how many books are written by J K Rowling i.e. aid=1
  
  select * from books;
  -- There are 1st four records where aid=1
    
  -- Delete authorid=1 from authors table only. Then check directly in books table
  
  delete from authors where authorid=1; -- In authors only 1 row is affected
  
  select * from authors; -- now only 7 records are available
  select * from books; -- now only 10 records are available. aid=1 are deleted automatically
  
  -- Let us see ON UPDATE CASCADE
  select * from authors;
  -- In authors table whereever authorid=8 set it to 88
  
  
  update authors set authorid=88 where authorid=8;
  -- now check both the tables 
  select * from authors;
  select * from books;
  -- changes are automatically propagated to child table
  
  -- --------------------------------------------------------------------------------------------
  
  /* 
 DATABASE OBJECTS			| Programming Consturcts like
 1.Table					| 5.Stored Procedures
 2.Sequence					| 6.Functions
 3.Views					| 7.Triggers
 4.Indexes					 
 */
  
/*
The way we create tables, views, indexes, stored procedures, function and triggers are created.
eg.
create table<table_name> ... some details are needed to create a table
create view<view_name>... some details are needed to create a view
create index<index_name>... some details are needed to create an index
create procedure<procedure_name>... some details are needed to create a procedure
create function<function_name>... some details are needed to create a function
and
create trigger<trigger_name>... some details are needed to create a trigger.

SEQUENCE is special in MySQL.

  /* SEQUENCE: AUTO INCREMENT
  - It is a special object in mysql
  - In Oracle we can say 'create sequence <sequence> .....' but Mysql does not support it.
  - In Mysql you have to use "Auto Increment" option
  - We don't have that much flexibility in sequence in Mysql like you have in Oracle and all
  - But you still have basic functionality in Mysql
  - Sequence is a list of numbers like 0,1,2,3,4,....
  - We use sequence when we create Primary Keys because primary keys are unique and not null, 
    and sequence elements are always unique.
  - Sequence will automatically update values of id (Primary key) column. 
    No need to manually remember last id entered.
    */
  
  use classess;
  show tables;
  -- create a simple table test
  create table test(
  id integer PRIMARY KEY AUTO_INCREMENT,
  name varchar(20),
  age integer);
  
  desc test;
  
  desc test;
  -- insert few records in test without mentioning id values
  
  insert into test (name,age) values('Tom',22);
  insert into test (name,age) values('Tim',20),('Jim',25);
  
  select * from test; -- check id column
  -- delete all records from test
  
  -- if error, type following command
  set sql_safe_updates = 0;
  
  delete from test; -- DML Command
  select * from test; -- no records are there
  -- if new record is again inserted in test, what will be it's id?
  -- add a record
  
  
  insert into test (name,age) values('Tom',22);
  select * from test;
  -- sequence is unaffected by delete
  -- now try to delete records with truncate which is a DDL command
  
  truncate test;
  select * from test;
  -- if new record is again inserted in test, what will be it's id?
  -- add a record
  
  
  insert into test (name,age) values('Tom',22);
  select * from test; -- now id is reset to 1.
  
  -- Truncate: deletes all records from table
  -- Recreates table with index 1
  -- Rules: Auto_increment sequence can be attached only to Primary Key.
  --        Sequence can generate only integer values (C1 C2 C3 ... will not work)
  -- If you want to start sequence from 100 you can alter table
  
  alter table test auto_increment=100;
  
  insert into test (name,age) values('Tim',23);
  select * from test;
  insert into test (name,age) values('Jim',25);
  select * from test;
  

