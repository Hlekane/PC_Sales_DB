-- ======================================================
-- Profit and revenue calculations - revenevue generation analaysis
-- Dataset: Laptop Sales 
-- ======================================================

-- 11. Calculate total revenue (SUM of Sale Price).

SELECT Top 2*
	FROM Laptop_Sales

SELECT SUM(Sale_Price) AS Total_Revenue
FROM Laptop_Sales

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

SELECT SUM(Sale_Price-Cost_Price) AS Total_Profit
	FROM Laptop_Sales
		
-- 13. Find the average Discount Amount.

SELECT AVG(Discount_Amount) AS Average_Discount_Amount
	FROM Laptop_Sales

-- 14. Calculate total Finance Amount issued.

SELECT SUM(CAST(Finance_Amount AS bigint)) AS Total_Financial_Amount
	FROM Laptop_Sales

-- 15. Find total revenue per PC Make.

SELECT PC_Make,SUM(Sale_Price) AS Total_Revenue
	FROM Laptop_Sales
	GROUP BY PC_Make

SELECT PC_Make,SUM(Sale_Price-Discount_Amount) AS Total_RevenueExcluding_Discount
	FROM Laptop_Sales
	GROUP BY PC_Make


-- 16. Find average Sale Price per Storage Type.

SELECT Storage_Type, AVG(Sale_Price) AS Sale_Per_StorageType
	FROM Laptop_Sales
	GROUP BY Storage_Type

-- 17. Calculate total revenue per Shop Name.

SELECT Shop_Name,SUM(Sale_Price) AS Total_Revenue_PerShop
	FROM Laptop_Sales
	GROUP BY Shop_Name

-- 18. Calculate total revenue per Sales Person Name.

SELECT Sales_Person_Name,SUM(Sale_Price) AS Total_PersonName
	FROM Laptop_Sales
	GROUP BY Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.

SELECT Payment_Method,AVG(Credit_Score) AS Average_Score_Payment_Method
	FROM Laptop_Sales
	GROUP BY Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.
-- 20. Calculate total Cost of Repairs per Sales Person Department.
Select top 2*
	From Laptop_Sales
Select Sales_Person_Department, SUM(CAST(Cost_of_Repairs AS Int)) As Total_Cost_repairs
	From Laptop_Sales
	Group by Sales_Person_Department
