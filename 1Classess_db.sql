-- Create the database
create database if not exists classess;
use classess;

-- Drop database if needed (uncomment to use)
-- DROP DATABASE classess;

-- Create table
create table students (
    student_id int auto_increment primary key,
    student_name varchar(200) not null,
    email varchar(255) not null unique,
    phone varchar(15) not null unique,
    qualification varchar(200) not null,
    grad_year year,
    dob date,
    enrolled_on date,
    age tinyint check (age >= 18),
    address text
);