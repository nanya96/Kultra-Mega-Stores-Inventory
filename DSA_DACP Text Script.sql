---- Created by Ikeakor Rejoice Ifunanya----
---- Created 

Create Database DSA_DSCP_DB

Select * from [dbo].[KMS Sql Case Study]



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


Select * from [dbo].[KMS Sql Case Study]

Alter table [dbo].[KMS Sql Case Study]
Alter column Sales Float not null

Alter table [dbo].[KMS Sql Case Study]
Alter column Order_Quantity Float not null

----4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers------

------Bottom 10 Customers in terms of sales----
Select Top 10 
Order_ID, Order_Date, Order_Priority, Order_Quantity, Sales, Discount, Shipping_Cost, Region, Product_Sub_Category, Product_Container, Ship_Date
From [dbo].[KMS Sql Case Study]
Order by Sales asc

----- For KMS to increase the revenue from the bottom 10 customers, they should do the following recommendations
---1. Improve Engagement and Communication by Reaching out directly to understand their purchasing patterns and constraints. 
----For those with “Critical” priority: offer dedicated account management or priority handling services to reinforce the relationship.
---2.Offer Incentives for Larger Orders because from the query the orders were small and they can do this by Design volume-based discounts or bundling offers to encourage higher order quantities.
--- also, introduce loyalty points for repeat purchases.
----3. Clarify Order Priority & Needs For customers with “Not Specified” or “Low” priority by Following up to understand their urgency and how your services can be made more valuable.
----Consider prompting for priority selection during ordering to tailor service.
----4.Use email campaigns or targeted ads to highlight relevant offerings.
----5. Set KPIs such as increase in average order size, frequency of orders, and customer satisfaction scores.
----Track changes over the next 3–6 months to evaluate the impact of these strategies.

------5. KMS incurred the most shipping cost using which shipping method?
Select * from [dbo].[KMS Sql Case Study]

SELECT Top 1 Ship_Mode, SUM(Shipping_Cost) AS TotalShippingCost
FROM [dbo].[KMS Sql Case Study]
GROUP BY Ship_Mode
ORDER BY TotalShippingCost DESC;

Alter table [dbo].[KMS Sql Case Study]
Alter column Shipping_Cost Float not null

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

Select * from [dbo].[KMS Sql Case Study]

-------9. Which consumer customer was the most profitable one?

SELECT TOP 1 Customer_Name, Customer_Segment, SUM(Profit) AS TotalProfit
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name, Customer_Segment
ORDER BY TotalProfit DESC;

Alter table [dbo].[KMS Sql Case Study]
Alter column Profit Float not null

------10. Which customers returned items, and what segment do they belong to?
Select * from [dbo].[KMS Sql Case Study]

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
On [dbo].[Order_Status].Order_ID = [dbo].[KMS Sql Case Study].Order_ID


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

--Based on the analysis in SQL Server, the company did not appropriately align shipping costs with order priorities. 
--The Delivery Truck while considered economical, incurred the highest total shipping cost and was used across all 
--priority levels, including Critical, which undermines timely delivery. Furthermore, all shipments were packed 
--in Jumbo packaging, regardless of urgency, amplifying the cost. This suggests a lack of strategic alignment between 
--shipping method, order priority, and packaging choices. The company should consider refining its shipping policy to:
--Match faster shipping methods with high-priority orders, use economical options for low-priority orders,re-evaluate packaging 
--efficiency.


---------- End of Analysis-------
