
-- ======================================================
-- Sales Analysis, determine which the most profitable products and performance
-- Dataset: PC Sales
-- ======================================================


-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

Select Shop_Name, SUM(Sale_Price-Discount_Amount) as Profit_Per_Shop_Name
	From Laptop_Sales
	Group by Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
Select SUM(Sale_Price - Cost_Price / Sale_Price) as Profit_Margin_Per_Sale
	From Laptop_Sales
-- 23. Determine which Continent has the highest total revenue.

Select distinct top 1 Continent, MAX(Sale_Price-Discount_Amount) as Continent_with_Highest_Revenue
	From Laptop_Sales
	Group by Continent

-- 24. Calculate average Sale Price per RAM size.

Select RAM, AVG(Sale_Price) as Avg_sale_per_ramsize
	From Laptop_Sales
	Group by RAM
	Order by Avg_sale_per_ramsize 

-- 25. Find the PC Model with the highest Sale Price.

Select Distinct Top 100 PC_Model, MAX(Sale_Price) as PC_model_with_max_saleprice
	From Laptop_Sales
	Group by PC_Model
	Order by PC_model_with_max_saleprice desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

Select Sum(Convert(Purchase_date - Ship_Date) Date)
	From Laptop_Sales

DATEDIFF(day, MIN(Purchase_Date), max(Ship_Date)) / nullif(Total-1,0) as Avg_Days
	From Laptop_Sales

-- 27. Determine which Sales Person Department generates the highest revenue.

Select Top 1 Sales_Person_Department, MAX(Sale_Price) as Highest_Rev_generation
	From Laptop_Sales
	Group by Sales_Person_Department
	Order by Highest_Rev_generation desc
	
-- 28. Calculate total revenue per Storage Capacity.

Select Storage_Capacity, SUM(Sale_Price-Discount_Amount) as Total_revenue_Storage
	From Laptop_Sales
	Group by Storage_Capacity
-- 29. Identify sales where Sale Price is lower than PC Market Price.

Select 
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

