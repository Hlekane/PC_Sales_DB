
-- ======================================================
-- Sales Analysis, determine which the most profitable products and performance
-- Dataset: PC Sales
-- ======================================================


-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

Select Shop_Name, SUM(Sale_Price-Cost_Price) as Profit_Per_Shop_Name
	From Laptop_Sales
	Group by Shop_Name;

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

Select AVG((Sale_Price - Cost_Price / Sale_Price)) * 100 as Profit_Margin_Per_Sale
	From Laptop_Sales;

-- 23. Determine which Continent has the highest total revenue.

Select distinct top 1 Continent, SUM(Sale_Price - Discount_Amount) as Total_revenue
	From Laptop_Sales
	Group by Continent
	Order by Total_revenue desc;

-- 24. Calculate average Sale Price per RAM size.

Select RAM, AVG(Sale_Price) as Avg_sale_per_ramsize
	From Laptop_Sales
	Group by RAM
	Order by Avg_sale_per_ramsize desc;

-- 25. Find the PC Model with the highest Sale Price.

Select Distinct Top 1 PC_Model, MAX(Sale_Price) as Highest_Sale_Price
	From Laptop_Sales
	Group by PC_Model
	Order by Highest_Sale_Price desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date.

Select 
	AVG(DATEDIFF(DAY, 
	Try_Cast(Purchase_Date As datetime), 
	Try_Cast(Ship_Date As datetime))) As Days_between_PD_SD
	From Laptop_Sales
	Where Purchase_Date is not Null and Ship_Date is not Null

-- 27. Determine which Sales Person Department generates the highest revenue.

Select Top 1 Sales_Person_Department, SUM(Isnull (Sale_Price,0)) as Total_Revenue
	From Laptop_Sales
	Group by Sales_Person_Department
	Order by Total_Revenue desc
	
-- 28. Calculate total revenue per Storage Capacity.

Select Storage_Capacity, SUM(Sale_Price-Discount_Amount) as Total_revenue_Storage
	From Laptop_Sales
	Group by Storage_Capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.

Select Sale_Price, PC_Market_Price
	From Laptop_Sales
	Where Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
-- The ranking window provide rankings of rows within a partition based on specific criteria (W3schools)

Select *,
       Rank() over (order by Total_Sales desc) As Sales_Rank
From (
    Select
        Sales_Person_Name,
        Avg(Sale_Price) As Total_Sales
    From Laptop_Sales
    Group by Sales_Person_Name
) t;

