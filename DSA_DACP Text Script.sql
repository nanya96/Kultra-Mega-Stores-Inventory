---- Created by Ikeakor Rejoice Ifunanya----
---- Created on June 24th, 2025----
--I created a new Database---
Create Database DSA_DSCP_DB

--- I imported the Csv. File (KMS Sql Case Study) and introduced the table---
Select * from [dbo].[KMS Sql Case Study]

--- For this SQL project i will be answering 11 question from this data set----

--- 1. Which product category had the highest sales?---

Select Top 1 
Row_ID, Order_ID, Product_Category, Sales
From [dbo].[KMS Sql Case Study]
Order by Sales Desc;

---- 2. What are the Top 3 and Bottom 3 regions in terms of sales?---

----Top 3 regions in terms of sales---
Select Top 3 
Row_ID, Order_ID, Region, Sales
From [dbo].[KMS Sql Case Study]
Order by Sales Desc;

------Bottom 3 regions in terms of sales----
Select Top 3 
Row_ID, Order_ID, Region, Sales
From [dbo].[KMS Sql Case Study]
Order by Sales asc;

----- 3. What were the total sales of appliances in Ontario?------
select Region, SUM(Sales) AS [Total sales]
from  [dbo].[KMS Sql Case Study]
Where Region = 'Ontario' and Product_Sub_Category = 'Appliances'
Group by Region
order by [Total sales] desc;

----4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers------

------Bottom 10 Customers in terms of sales----
Select Top 10 
Order_ID, Order_Date, Order_Priority, Order_Quantity, Sales, Discount, Shipping_Cost, Region, Product_Sub_Category, Product_Container, Ship_Date
From [dbo].[KMS Sql Case Study]
Order by Sales asc

------5. KMS incurred the most shipping cost using which shipping method?

SELECT Top 1 Ship_Mode, SUM(Shipping_Cost) AS TotalShippingCost
FROM [dbo].[KMS Sql Case Study]
GROUP BY Ship_Mode
ORDER BY TotalShippingCost DESC;

-----6. Who are the most valuable customers, and what products or services do they typically purchase?

SELECT Top 5 Order_ID, Customer_Name, Product_Category, Product_Sub_Category, Product_Name,
SUM(Sales) AS TotalRevenue
FROM [dbo].[KMS Sql Case Study] 
GROUP BY Order_ID,Customer_Name, Product_Category, Product_Sub_Category, Product_Name
ORDER BY TotalRevenue DESC;

-----7. Which small business customer had the highest sales?

Select Top 1 Customer_Name, Customer_Segment, Sum(Sales) as HighestSales
From [dbo].[KMS Sql Case Study] 
Where Customer_Segment ='Small Business'
Group By Customer_Name, Customer_Segment
Order By HighestSales Desc;


-------8. Which Corporate Customer placed the most number of orders in 2009 – 2012?

Select Top 1 Customer_Name, Customer_Segment, Order_Date, Count(distinct Order_Quantity) as TotalOrders
From [dbo].[KMS Sql Case Study]
Where Customer_Segment ='Corporate' 
      AND Order_Date BETWEEN '2009-01-01' AND '2012-12-31'
Group by Customer_Name, Customer_Segment, Order_Date
Order by Totalorders Desc;

-------9. Which consumer customer was the most profitable one?

SELECT TOP 1 Customer_Name, Customer_Segment, SUM(Profit) AS TotalProfit
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name, Customer_Segment
ORDER BY TotalProfit DESC;

------10. Which customers returned items, and what segment do they belong to?
Select * from [dbo].[KMS Sql Case Study]

---- I imported and introduced the table Order_Status------
Select * from [dbo].[Order_Status]

Select 
       [dbo].[KMS Sql Case Study].Order_ID,
       [dbo].[KMS Sql Case Study].Customer_Name,
	   [dbo].[KMS Sql Case Study].Customer_Segment,
	   [dbo].[KMS Sql Case Study].Product_Name,
	   [dbo].[Order_Status].Order_ID,
	   [dbo].[Order_Status].[Status]
From [dbo].[KMS Sql Case Study]
Join [dbo].[Order_Status]
On [dbo].[Order_Status].Order_ID = [dbo].[KMS Sql Case Study].Order_ID;


-------11. If the delivery truck is the most economical but the slowest shipping method and Express Air 
-----------is the fastest but the most expensive one, do you think the company appropriately spent 
-----------shipping costs based on the Order Priority? Explain your answer

SELECT 
    Order_Priority,
    Ship_Mode,
	Product_Container,
    COUNT(Order_ID) AS TotalOrders,
    SUM(Shipping_Cost) AS TotalShippingCost
FROM 
    [dbo].[KMS Sql Case Study]
GROUP BY 
    Order_Priority, Ship_Mode, Product_Container
ORDER BY 
    Order_Priority, TotalShippingCost DESC;
