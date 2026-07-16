-- ====================================================================
-- DECODE LABS DATA ANALYTICS - PROJECT 3: SQL DATA ANALYSIS
-- Submitted By: Khushi Sharma (B.Tech Computer Science and Engineering)
-- Platform: DecodeLabs Data Analytics Internship Portfolio
-- Target Table Name: orders (Contains 1,200 Transactional Records)
-- ====================================================================

-- --------------------------------------------------------------------
-- TASK 1: FOUNDATIONAL VIEW & DATA INGESTION VERIFICATION
-- Objective: To verify that all 1,200 rows are successfully ingested into the schema.
-- --------------------------------------------------------------------
SELECT * FROM orders;


-- --------------------------------------------------------------------
-- TASK 2: BASIC ATTRIBUTE SELECTION (PROJECTION LAYER)
-- Objective: Projecting specific business attributes for active monitoring.
-- --------------------------------------------------------------------
SELECT OrderID, CustomerID, Product, TotalPrice 
FROM orders;


-- --------------------------------------------------------------------
-- TASK 3: ROW-LEVEL FILTERING WITH BASIC EQUALITY (`WHERE`)
-- Objective: Extracting all transaction logs exclusively for 'Laptop' orders.
-- --------------------------------------------------------------------
SELECT * FROM orders 
WHERE Product = 'Laptop';


-- --------------------------------------------------------------------
-- TASK 4: MULTI-LEVEL LOGICAL FILTERING (`WHERE` + `AND`)
-- Objective: Isolate high-priority orders that are 'Delivered' via 'Credit Card'.
-- --------------------------------------------------------------------
SELECT OrderID, CustomerID, Product, TotalPrice, OrderStatus, PaymentMethod
FROM orders 
WHERE OrderStatus = 'Delivered' AND PaymentMethod = 'Credit Card';


-- --------------------------------------------------------------------
-- TASK 5: CONTINUOUS VARIABLE FINANCIAL AGGREGATION (`SUM`)
-- Objective: Calculate the Overall Gross Revenue generated across all 1,200 records.
-- --------------------------------------------------------------------
SELECT SUM(TotalPrice) AS Total_Overall_Sales 
FROM orders;


-- --------------------------------------------------------------------
-- TASK 6: MULTI-METRIC STATISTICAL AGGREGATION (`COUNT` & `AVG`)
-- Objective: Evaluating overall volume scale and the Average Transaction Value (ATV).
-- --------------------------------------------------------------------
SELECT 
    COUNT(OrderID) AS Total_Orders_Placed,
    AVG(TotalPrice) AS Average_Transaction_Value
FROM orders;


-- --------------------------------------------------------------------
-- TASK 7: DIMENSIONAL GROUPING & CATEGORICAL ANALYSIS (`GROUP BY` + `ORDER BY`)
-- Objective: Identify which Product segment drives the highest volumetric and monetary value.
-- --------------------------------------------------------------------
SELECT 
    Product, 
    SUM(Quantity) AS Total_Quantity_Sold, 
    SUM(TotalPrice) AS Total_Revenue
FROM orders
GROUP BY Product
ORDER BY Total_Revenue DESC;


-- --------------------------------------------------------------------
-- TASK 8: OPERATIONAL LOGISTICS AUDIT (`GROUP BY`)
-- Objective: Categorizing bucket metrics to analyze Order Status distribution volumes.
-- --------------------------------------------------------------------
SELECT 
    OrderStatus, 
    COUNT(OrderID) AS Number_of_Orders
FROM orders
GROUP BY OrderStatus
ORDER BY Number_of_Orders DESC;


-- --------------------------------------------------------------------
-- TASK 9: MARKETING & LEADS CONVERSION METRICS (`GROUP BY` + AGGREGATION)
-- Objective: Map customer acquisition streams (Instagram, Facebook, Google) to revenue drivers.
-- --------------------------------------------------------------------
SELECT 
    ReferralSource, 
    COUNT(OrderID) AS Total_Leads, 
    SUM(TotalPrice) AS Revenue_Generated
FROM orders
GROUP BY ReferralSource
ORDER BY Revenue_Generated DESC;


-- --------------------------------------------------------------------
-- TASK 10: HIGH-VALUE REVENUE SEGMENTATION WITH SORTING (`WHERE` + `ORDER BY`)
-- Objective: Isolate and evaluate high-value bulk purchases crossing the $1,000 threshold.
-- --------------------------------------------------------------------
SELECT OrderID, CustomerID, Product, TotalPrice
FROM orders
WHERE TotalPrice > 1000
ORDER BY TotalPrice DESC;