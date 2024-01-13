--Retrieve all columns and rows from the supermarket_salesSheet1 table:--
SELECT * FROM supermarket_salesSheet1;
--Retrieve the first 5 rows from the supermarket_salesSheet1 table:--
SELECT * FROM supermarket_salesSheet1 LIMIT 5;
--Calculate the total sales (sum of column c10):--
SELECT SUM(c10) AS total_sales
FROM supermarket_salesSheet1;
--Calculate the average rating (average of column c17):--
SELECT AVG(c17) AS avg_rating
FROM supermarket_salesSheet1;
--Count the number of sales transactions for each branch (column c2):--
SELECT c2, COUNT(*) AS num_sales
FROM supermarket_salesSheet1
GROUP BY c2;
--Identify the product line (c6) with the highest total sales:--
SELECT c6, SUM(c10) AS total_sales
FROM supermarket_salesSheet1
GROUP BY c6
ORDER BY total_sales DESC
LIMIT 1;
--How many sales transactions are recorded in the dataset?--
-- Count the number of sales transactions
SELECT COUNT(*) AS total_transactions
FROM supermarket_salesSheet1;
--What is the total revenue from all transactions?--
-- Calculate total revenue
SELECT SUM(c10) AS total_revenue
FROM supermarket_salesSheet1;
--What is the average rating given by customers?--
-- Calculate average rating
SELECT AVG(c17) AS average_rating
FROM supermarket_salesSheet1;
--How many transactions were made by each customer type (Member and Normal)?--
-- Count transactions by customer type
SELECT "Customer type", COUNT(*) AS transaction_count
FROM supermarket_salesSheet1
GROUP BY "Customer type";
--What is the total gross income for each branch?--
-- Calculate total gross income by branch
SELECT c2, SUM("gross income") AS total_gross_income
FROM supermarket_salesSheet1
GROUP BY c2;
--Which product line has the highest average unit price?--
-- Identify product line with highest average unit price
SELECT "Product line", AVG("Unit price") AS avg_unit_price
FROM supermarket_salesSheet1
GROUP BY "Product line"
ORDER BY avg_unit_price DESC
LIMIT 1;