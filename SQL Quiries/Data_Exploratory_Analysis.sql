-- ======================================================
-- Data exploration analysis, understanding the dataset
-- Dataset: Laptop Sales 
-- ======================================================


-- 1. Count the total number of sales records.

SELECT *
	FROM Laptop_Sales

SELECT  COUNT(*) as [Total_Sales_Record]
	FROM Laptop_Sales

SELECT  COUNT(Total_Sales_per_Employee) as [Total_Sales_Record]
	FROM Laptop_Sales

-- 2. Count the number of sales per Continent.

SELECT Continent, COUNT(*) AS Sales_per_Continent
	FROM Laptop_Sales
	Group by Continent

-- 3. Count the number of sales per Country or State.

SELECT Country_or_State, COUNT(*) as Sales_per_Country_or_State
	FROM Laptop_Sales
	Group by Country_or_State

-- 4. List all distinct Shop Name values.

SELECT DISTINCT Shop_Name
	FROM Laptop_Sales

-- 5. Find the average Sale Price.

SELECT AVG(Sale_Price) as Average_sale_Price
	FROM Laptop_Sales

-- 6. Find the highest and lowest Sale Price.

SELECT MAX(Sale_Price) As Highest_SalePrice, MIN(Sale_Price) As Lowest_SalePrice
	FROM Laptop_Sales

-- 7. Count the number of sales by Payment Method.
SELECT Payment_method, COUNT(*) AS Sales_by_PaymentMethod
	FROM Laptop_Sales
	GROUP By Payment_Method

-- 8. Count the number of sales by Channel (Online vs Offline).

SELECT Channel, COUNT(*) AS Sales_by_Channel
	FROM Laptop_Sales
	GROUP By Channel

-- 9. Count the number of sales by Priority level.

SELECT Priority, COUNT(*) AS Sales_by_PriorityLevel
	FROM Laptop_Sales
	GROUP By Priority

-- 10. Count the number of distinct PC Make values.

SELECT COUNT(DISTINCT PC_Make) As PC_Make_Values
	FROM Laptop_Sales

