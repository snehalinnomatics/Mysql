## STRING OPERATIONS
/*
 Check Documentation: 14.1 Built-In Function and Operator Reference
Link is: https://dev.mysql.com/doc/refman/8.4/en/built-in-function-reference.html
Click on function: STR_TO_DATE()
*/
use calssess;

## STR_TO_DATE(STR,FORMAT) FUNCTION: It takes a string and a format string and returns date in yyyy-mm-dd format.
-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html#function_str-to-date
select STR_TO_DATE('07,1,2026','%d,%m,%Y') as Date; 

/*
here we are telling that in the given string 07 is date so %d, 
1 is month so %m and 2026 is year so %Y

Common Format Specifiers
%Y: Year, numeric, four digits eg 2026
%y	Year (2 digits)	eg 26

%m: Month, numeric (00..12) eg 01
%c	Month (1–12)	1
%M	Month name	January
%b	Abbreviated month	Jan

%d: Day of the month, numeric (00..31) eg 21
%e	Day of month (1–31)	6

%H: Hour (00..23)
%i: Minutes, numeric (00..59)
%s: Seconds, numeric (00..59)
%p: AM or PM
*/
select STR_TO_DATE('January 26, 2026','%M %d,%Y') as date;

select STR_TO_DATE('January 26, 26','%M %d,%y') as date;

select DATE_FORMAT('2023-12-01', '%W, %M %e, %Y') as date;

select STR_TO_DATE('2026-January-06 18:45:30', '%Y-%M-%d %H:%i:%s') as date;

## REGEXP_REPLACE(string,old,new) Function 
-- It can replace multiple patterns at once using rules.
-- If in a date in a column is 27th January 2026,
-- '27th January 2026' cannot be converted directly 
-- because of the ordinal suffix th (st, nd, rd, th).
-- So we must remove the suffix first, then convert.

-- convert String '27th January 2026' to the date 27 January 2026. 
SELECT REGEXP_REPLACE('27th January 2026', '(st|nd|rd|th)', '');

-- Once it is converted it date format we can covert it in YYYY-MM-DD format

select STR_TO_DATE(
		REGEXP_REPLACE('27th January 2026', '(st|nd|rd|th)', ''),
		'%d %M %Y') as date;


-- SUBSTRING(str, pos) FUNCTION: It is used to extract a part of a string.
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_substring

-- extracts substring from position 5 onwards

select substring('DataScience',5) as Result; 

-- writing from keyword is optional
select substring('DataScience' from 4) as Result;

-- If 3 parameters are passed, they are: string,position,no_of_characters
-- from 5th position select only 4 characters
select substring('DataScience',5,4) as Result; 

-- Negative positional index starts counting from last character to 1st character
select substring('DataScience',-5) as Result; -- ience
select substring('DataScience',-7) as Result; -- Science

-- start from 7th char from last and select only 3 characters
select substring('DataScience',-7,3) as Result; -- Sci


-- TRIM() FUNCTION: It is used to remove unwanted spaces or characters from a string.
-- https://dev.mysql.com/doc/refman/8.4/en/string-functions.html#function_trim

-- Remove spaces from both sides (most common)
select trim('   Hello World   ') as Result; 

-- Remove leading spaces only
select trim(leading from '   Hello World   ') as Result;

-- Remove trailing spaces only
select trim(trailing from '     Hello World   ') as Result;

-- Remove specific character from both ends
select trim('*' from '***Data Science***') as Result;



select * from students;

-- DERIVED COLUMN
-- make student_name upper and lower using UPPER() and LOWER()

select student_name, 
lower(student_name) as name_lower, 
upper(student_name) as name_upper
from students;

-- find length of name of students using Length()

select student_name,
length(student_name) as  name_length
from students;

-- concat(), combine 2 strings student_name and their respective qualification
select student_name,qualification from students;


select student_name,qualification,
concat(student_name,' - ', qualification) as name_qualify
from students;


-- Extract first 3 char from name. Use substring()


select student_name, 
substring(student_name, 1,3) as short_name
from students;


-- Extract last 3 char from name. Use substring()

select student_name, 
substring(student_name, -3) as short_name
from students;

-- replace(col,old_value,new_value)
-- Replace existing email_id to new email_id using replace()


select student_name,email, 
replace(email,'@gmail.com', '@innomatics.com') as new_email
from students;


-- get 4 left characters (1st 4 char) and 4 right characters (last 4 char)
-- use left() and right() functions


select student_name, 
left(student_name, 4) as left_, 
right(student_name, 4) as right_
from students;

-- reverse student names, use reverse()

select student_name, 
reverse(student_name) as rev_name
from students;


## DATETIME 
-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html
-- check timestampdiff() function
-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html#function_timestampdiff

use classess;
-- To find today's date i.e. Current date

select current_date() as today;

-- calculate students age from dob: use timestampdiff() function


select * from students;
select student_name, dob, timestampdiff(year,dob,curdate())  as cal_age
from students;

-- Check students born in July, month()


select student_name,dob
from students
where month(dob) = 7;

-- Find month of birth of every student: use month() function


select student_name, dob, month(dob) as Month_dob from students;

-- Find year of birth of every student: use year() function


select student_name, dob, year(dob) as Year_dob from students;

-- Find day of birth of every student: use month() function


select student_name, dob, day(dob) as Day_dob from students;


-- Solve: Exract day, month and year from Enrolled_on column with student_name and enrolled_on column


select student_name,enrolled_on,
year(enrolled_on) as Year,
month(enrolled_on) as Month,
day(enrolled_on) as Day from students;

