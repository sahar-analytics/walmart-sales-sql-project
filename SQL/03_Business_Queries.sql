-- =====================================================
-- Walmart SQL Project
-- Phase 1 - Data Exploration
-- Author: Sahar
-- =====================================================

-- =====================================================
-- Question 1
-- Business Question:
-- How many stores does Walmart have?
-- =====================================================

SELECT COUNT(*) AS Total_Stores
FROM Stores;


-- =====================================================
-- Question 2
-- Business Question:
-- How many sales records are in the Sales table?
-- =====================================================

SELECT COUNT(*) AS Total_Sales_Records
FROM Sales;


-- =====================================================
-- Question 3
-- Business Question:
-- List all the different store types Walmart has.
-- =====================================================

SELECT DISTINCT Type
FROM Stores
ORDER BY Type ASC;


-- =====================================================
-- Question 4
-- Business Question:
-- Find the earliest and latest sales dates.
-- =====================================================

SELECT
    MIN(Date) AS First_Sale_Date,
    MAX(Date) AS Last_Sale_Date
FROM Sales;


-- =====================================================
-- Question 5
-- Business Question:
-- How many different departments are there?
-- =====================================================

SELECT COUNT(DISTINCT Dept) AS Total_Departments
FROM Sales;


-- =====================================================
-- Question 6
-- Business Question:
-- Show the 10 largest stores.
-- =====================================================

SELECT Store,
       Size
FROM Stores
ORDER BY Size DESC
LIMIT 10;


-- =====================================================
-- Question 7
-- Business Question:
-- Show the 5 smallest stores.
-- =====================================================

SELECT Store,
       Size
FROM Stores
ORDER BY Size ASC
LIMIT 5;


-- =====================================================
-- Question 8
-- Business Question:
-- Show all Type A stores.
-- =====================================================

SELECT Store,
       Type,
       Size
FROM Stores
WHERE Type = 'A'
ORDER BY Store ASC;


-- =====================================================
-- Question 9
-- Business Question:
-- Show all Type B stores with Size greater than 150000.
-- =====================================================

SELECT Store,
       Type,
       Size
FROM Stores
WHERE Type = 'B'
  AND Size > 150000
ORDER BY Size DESC;


-- =====================================================
-- Question 10
-- Business Question:
-- Show all stores that are NOT Type A.
-- =====================================================

SELECT Store,
       Type
FROM Stores
WHERE Type <> 'A'
ORDER BY Store ASC;
