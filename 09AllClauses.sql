## Basic SQL Queries (Single Clause)
use classess;
-- 1. List all distinct cities from the Sales1 table.
select * from sales1;


select distinct City
FROM Sales1;

-- 2. Display the names of customers who purchased a 'Kurti'.

SELECT CustomerName, Product
FROM Sales1
WHERE Product = 'Kurti';


-- 3. Find the total number of transactions made using the 'Wallet' payment method.


SELECT PaymentMethod, 
COUNT(*) AS Wallet_Transactions
FROM Sales1
WHERE PaymentMethod = 'Wallet';

SELECT PaymentMethod
FROM Sales1
WHERE PaymentMethod = 'Wallet';

## Intermediate Queries (2–3 Clauses)

-- 1. List the top 5 highest discounted transactions.


SELECT *
FROM Sales1
ORDER BY DiscountPercent DESC
LIMIT 5;

-- 2. Find total quantity sold for each product category.


SELECT Category, SUM(Quantity) AS TotalQuantity
FROM Sales1
GROUP BY Category;

-- Show above output of TotalQuantity in descending order


SELECT Category, SUM(Quantity) AS TotalQuantity
FROM Sales1
GROUP BY Category
order by TotalQuantity desc;

-- 3. Show the average discount for each city where the average discount is more than 25%.
SELECT City, AVG(DiscountPercent) AS AvgDiscount
FROM Sales1
GROUP BY City
HAVING AVG(DiscountPercent) > 25;

-- OR: instead of aggregation function we can use derived column name

SELECT City, AVG(DiscountPercent) AS AvgDiscount
FROM Sales1
GROUP BY City
HAVING AvgDiscount > 25;

## Complex Queries (Filtering + Multiple Clauses + Functions)

-- 1. Find all customers who bought products in June or July 2024 and used 'Card' as a payment method.
select * from sales1;

SELECT DISTINCT CustomerName
FROM Sales1
WHERE PaymentMethod = 'Card'
  AND YEAR(SaleDate) = 2024
  AND MONTH(SaleDate) IN (6, 7);
-- Suppose in output Nisha Biswas is appearing for 2 times then
-- because of DISTINCT it will be taken for once only.


-- 2. Top 3 cities with the highest number of transactions


SELECT City, COUNT(*) AS TotalTransactions
FROM Sales1
GROUP BY City
ORDER BY TotalTransactions DESC
LIMIT 3;

-- 3. Show sales where payment method is NOT COD AND discount > 30%


SELECT PaymentMethod, DiscountPercent
FROM Sales1
WHERE PaymentMethod <> 'COD'
AND DiscountPercent > 30;

-- 4. List customers whose email domain is example.org.


SELECT CustomerName, CustomerEmail
FROM Sales1
WHERE CustomerEmail LIKE '%@example.org';

-- 5. List customers whose email domain is not example.org.


SELECT CustomerName, CustomerEmail
FROM Sales1
WHERE CustomerEmail NOT LIKE '%@example.org';

-- 6. Show number of sales for each month in 2024


SELECT MONTH(SaleDate) AS SaleMonth,
       COUNT(*) AS TotalSales
FROM Sales1
WHERE YEAR(SaleDate) = 2024
GROUP BY MONTH(SaleDate)
ORDER BY SaleMonth;