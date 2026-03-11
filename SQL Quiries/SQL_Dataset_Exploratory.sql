USE [PC_DATA_DB]
GO

/****** Object:  Table [dbo].[PC_sales]    Script Date: 2026/03/11 14:53:47 ******/
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Laptop_Sales](
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Payment_Method] [nvarchar](50) NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Channel] [nvarchar](50) NOT NULL,
	[Priority] [nvarchar](50) NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


