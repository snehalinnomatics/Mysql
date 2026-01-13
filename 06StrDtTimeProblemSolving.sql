## 1. String Functions
use classess;

select * from sales1;
-- Problem 1: Basic String Function
-- Task: Write a SQL query to extract the first 5 characters of the CustomerName column.


select customerName, 
left(customername, 5) as left_5 , 
substring(customername, 1,5) as substing_5
from sales1;


-- Problem 2: String Manipulation (Using UPPER, LOWER, and CONCAT)
-- Task: Write a query to display the CustomerName in uppercase, 
-- lowercase, and the concatenation of the CustomerName with the City 
-- (eg "Mekhala Krishna from Delhi")


select customername,
upper(customername) as upper_cust, 
lower(customername) as lower_cust,
concat(customername, ' from ',city) as city_cust
from sales1;

-- Problem 3: String Pattern Matching (LIKE)
-- Task: Write a SQL query to find all customers 
-- whose CustomerName starts with the letter "A".


select customername
from sales1
where customername like 'A%';

-- Task: Write a SQL query to find all customers 
-- whose Surname starts with the letter "A".


select customername
from sales1
where customername like '% A%';

-- Task: Write a SQL query to find all customers 
-- whose Surname starts with the letter "A" or "B".
-- Like and In are not supported


select customername
from sales1
where customername like '% A%' or customername like '% B%'; 


## 2. DateTime Functions
-- Problem 1: Basic Date Function (YEAR, MONTH, DAY)
-- Task: Write a SQL query to extract the Year, Month, and Day from the SaleDate column.


select saleDate, year(saleDate) as sale_Year, 
month(saleDate) as sale_month, 
day(saleDate) as sale_day
from sales1;

-- Problem 2: Date Calculation (Using DATEDIFF(greaterdate,smallerdate))
-- Task: Write a SQL query to calculate 
-- the number of days between the SaleDate and today's date. 
-- Display customer name also. Use datediff() 


select customername,SaleDate,
datediff(curdate(), saledate) as daysinpurchase
from sales1;


-- Problem 3: Date Formatting (Using DATE_FORMAT)
-- Task: Write a SQL query to display the SaleDate in the format "DD-MM-YY".
select customername, saledate, 
date_format(saledate, '%d-%m-%y') as new_date_format
from sales1;


## 3. Combining String and DateTime Functions
-- Task: Write a SQL query to concatenate the CustomerName with the year of purchase.
-- eg. "Mekhala Krishna - 2023")
select * from sales1;

select customername,saledate,
concat(customername,' - ',year(saledate)) 
as cust_year
from sales1;


-- Task: Write a query to find customers whose CustomerName starts "A" 
-- and their SaleDate is after January 1, 2024.
select * from sales1;


select customername, saledate
from sales1
where 
customername like 'A%' and saledate > '2024-01-01';


-- Problem 3: Format SaleDate and Check for Specific Year in CustomerName
-- Task: Write a SQL query to concatenate the CustomerName 
-- with the formatted SaleDate (in DD-MM-YY format), 
-- only for customers whose SaleDate is in 2023.
-- use date_format(date_column,"format specifier") function
-- eg. ("Mekhala Krishna - 20-12-23")


select customername, saledate,
concat(customername, ' - ',date_format(saledate, '%d-%m-%y')) as cust_purchase
from sales1
where year(saledate) = 2023;


-- Problem 4: String Replacement and Date Difference
-- Task: Write a SQL query to replace "Nike" with "Adidas" in the Product column 
-- and calculate the number of days since 
-- the purchase for products bought after March 2023. 
-- use daediff(curdate(),date_column)


select customername,saledate,product,
replace(Product, 'Nike', 'Adidas') as updatedprod,
datediff(curdate(), saledate) as dayssincepurchased
from sales1
where saledate > '2023-03-31';


## 4. Combining 3 or More Functions
-- Problem 1: Concatenate, Change Case, and Format Date
-- Task: Write a SQL query to concatenate the uppercase CustomerName 
-- and the formatted SaleDate (dd/mm/yy).


select concat(upper(customername) ,' - ', date_format(saledate, '%d/%m/%y')) as customer
from sales1;


-- Problem 2: Extract Year and Month, Format Date, and Perform String Matching
-- Task: Write a SQL query to extract the year and month from the SaleDate, 
-- format the SaleDate in DD-MM-YY format (eg. 20-12-23), 
-- and find all customers whose CustomerName contains the letter "M".



select * from sales1;

select customername,
year(saledate) as sale_year, 
month(saledate) as sale_month, 
date_format(saledate, '%d-%m-%y') as sale_date
from sales1
where customername like '%m%';

-- Problem 3: String and Date Combination in Filter Conditions
-- Task: Write a SQL query to display the CustomerName and SaleDate only for customers 
-- whose name starts with "S" and whose SaleDate is before June 2024.



select customername, saledate
from sales1
where customername like 'S%' and saledate < '2024-06-01';


-- Problem 4: Check for Specific Text in Product and Format Date
-- Task: Write a SQL query to check if the product name contains "Shoes", 
-- and format the SaleDate in MM-YYYY (eg.June-2023) format.


select product, date_format(saledate, '%M-%Y')
from sales1
where product like '%shoes%';

-- Problem 5: Combine String and Date Calculations in SELECT
-- Task: Write a SQL query to concatenate the CustomerName 
-- with the number of days since purchase and the productName as cust_details, 
-- but only for customers whose SaleDate is before August 2024 and whose name starts wit 'S'.



select concat(customername, ' - ', datediff(curdate(), saledate), ' - ',Product) 
as cust_details 
from sales1
where customername like 'S%' and saledate < '2024-08-01';

