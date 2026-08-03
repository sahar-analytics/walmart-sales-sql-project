-- =====================================================
-- Walmart SQL Project
-- Phase 2 - Store Performance Analysis
-- Author: Sahar
-- =====================================================

-- =====================================================
-- Question 1
-- Business Question:
-- Which stores generated the highest total sales?
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM Sales
GROUP BY Store
ORDER BY Total_Sales DESC;


-- =====================================================
-- Question 2
-- Business Question:
-- What is the average weekly sales for each store?
-- =====================================================

SELECT Store,
       AVG(Weekly_Sales) AS Average_Weekly_Sales
FROM Sales
GROUP BY Store
ORDER BY Average_Weekly_Sales DESC;


-- =====================================================
-- Question 3
-- Business Question:
-- How many sales records does each store have?
-- =====================================================

SELECT Store,
       COUNT(*) AS Number_of_Sales_Records
FROM Sales
GROUP BY Store
ORDER BY Number_of_Sales_Records DESC;


-- =====================================================
-- Question 4
-- Business Question:
-- Find the highest weekly sale ever recorded for each store.
-- =====================================================

SELECT Store,
       MAX(Weekly_Sales) AS Highest_Weekly_Sale
FROM Sales
GROUP BY Store
ORDER BY Highest_Weekly_Sale DESC;


-- =====================================================
-- Question 5
-- Business Question:
-- Find stores whose total sales exceed $100,000,000.
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM Sales
GROUP BY Store
HAVING SUM(Weekly_Sales) > 100000000
ORDER BY Total_Sales DESC;


-- =====================================================
-- Question 6
-- Business Question:
-- Find the store with the lowest total sales.
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM Sales
GROUP BY Store
ORDER BY Total_Sales ASC
LIMIT 1;


-- =====================================================
-- Question 7
-- Business Question:
-- Find the top 5 stores by total sales.
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM Sales
GROUP BY Store
ORDER BY Total_Sales DESC
LIMIT 5;


-- =====================================================
-- Question 8
-- Business Question:
-- Find the bottom 5 stores by total sales.
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales
FROM Sales
GROUP BY Store
ORDER BY Total_Sales ASC
LIMIT 5;


-- =====================================================
-- Question 9
-- Business Question:
-- Show stores whose average weekly sales exceed $20,000.
-- =====================================================

SELECT Store,
       AVG(Weekly_Sales) AS Average_Weekly_Sales
FROM Sales
GROUP BY Store
HAVING AVG(Weekly_Sales) > 20000
ORDER BY Average_Weekly_Sales DESC;


-- =====================================================
-- Question 10
-- Business Question:
-- Create a KPI report for every store.
-- Show:
--   • Total Sales
--   • Average Weekly Sales
--   • Highest Weekly Sale
--   • Lowest Weekly Sale
--   • Number of Sales Records
-- =====================================================

SELECT Store,
       SUM(Weekly_Sales) AS Total_Sales,
       AVG(Weekly_Sales) AS Average_Weekly_Sales,
       MAX(Weekly_Sales) AS Highest_Weekly_Sale,
       MIN(Weekly_Sales) AS Lowest_Weekly_Sale,
       COUNT(*) AS Number_of_Sales_Records
FROM Sales
GROUP BY Store
ORDER BY Total_Sales DESC;

