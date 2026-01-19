## GROUP BY CLAUSE: Groups rows that have the same values in specified columns.


use classess;
select * from sales1;
-- 1. Find items, categories with prices which are delivered to Pune


select product, category, price, city 
from sales1 
where city = 'Pune';

-- 2. Find City-wise highest price sold


select City, MAX(Price) AS HighestPrice
from sales1
group by City;

-- 3. Find out average discount of every product


select Product, 
avg(DiscountPercent) AS AvgDiscount
from sales1
group by Product;

-- 4. Find out total sale amount per product
-- Total_sale = price * quantity
-- Use sum() function to find out total

select * from sales1;

select Product, 
sum(Quantity * Price) as TotalSales
from sales1
group by Product;

-- 5. Find out total number of transacitons per city


select City, COUNT(TransactionID) AS TotalTransactions
from sales1
group by City;

-- 6. Find out total quantity sold per category
select * from sales1;


select Category, sum(Quantity) as TotalQuantity
from sales1
group by Category;

-- 7. Find out average price of product in each category
select * from sales1;


select Category, avg(Price) as AvgPrice
from sales1
group by Category;

-- 8. Find total revenue per payment method
-- Revenue = price * quantity. Use sum()
select * from sales1;


select PaymentMethod, 
sum(Quantity * Price) as Revenue
from sales1
group by PaymentMethod;

-- 9. Find out category-wise sales in each city.
-- Group by Multiple Columns: City and Category
select * from sales1;


select City, Category, 
sum(Quantity * Price) as TotalSales
from sales1
group by city, category;

-- 10. Find Monthly sales using GROUP BY on date
-- Month-wise sale calculaion
-- MonthlySale = price * quantity

select saledate from sales1;

select month(SaleDate) as SaleMonth,
sum(Quantity * Price) as MonthlySales
from sales1
group by month(SaleDate); -- Here it is ignoring year.


-- Group by YEAR and MONTH (More precise way)

SELECT YEAR(SaleDate) AS SaleYear,
       MONTH(SaleDate) AS SaleMonth,
       SUM(Quantity * Price) AS MonthlySales
FROM sales1
GROUP BY YEAR(SaleDate), MONTH(SaleDate); 
-- can add order by saleyear, salemonth in the end to sort it



use learndb;
select * from myemp;


## Mathematical Calculations
-- Consider salary column
-- apply 20% bonus on salary and display bonus of each employee
-- display total salary as salary + bonus



select emp_id, first_name, salary, 
(salary * 0.2)as bonus,
(salary + salary * 0.2) as total_salary
from myemp;

## Built-in function
-- monthname() of hire date
-- Refer Hire_Date column
-- Extract name of month from hire_date column 
-- and display it with employee name


select first_name, hire_date, 
monthname(hire_date) as month_name
from myemp;
