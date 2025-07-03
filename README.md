# Kultra-Mega-Stores-Inventory Analysis

- [Project Overview](#project-overview)
- [Data Source](#data-source)
- [Goal](#goal)
- [Tool Used](#tool-used)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Skills](#skills)
- [Conclusions](#conclusions)
- [Recommendations](#recommendations)
- [Acknowledgement](#acknowledgement)
- [Files](#files)
  
## Project Overview 
Kultra Mega Stores (KMS) is shopping store headquartered in Lagos which specialises in office supplies and furniture. Its customer base includes individual consumers, small businesses (retail), and large corporate clients (wholesale) across Lagos, Nigeria. This project is focused on analyzing an order data at Kultra Mega Stores (KMS) and the Dataset is a csv.file containing order data from 2009 to 2012. This is done to gain an understanding of the customer base and to analyze the data, present key insights and findings.


## Data Source
The primary source of the data used here is KMS Sql case study.csv, which was gotten from Incubator Hub for the DSA Data Analysis Capstone Project.


## Goal
To extract relevant insights and findings into revenue patterns, and to optimize order strategies. Key tasks included data importing, database creation, SQL queries execution, and performance optimization.


## Tool Used
Sql Server [Sql Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)


## Exploratory Data Analysis
EDA involved the exploring of the Data to answer some questions about the Data such as;
- Case Scenario I
1. Which product category had the highest sales?
2. What are the Top 3 and Bottom 3 regions in terms of sales?
3. What were the total sales of appliances in Ontario?
4. Advise the management of KMS on what to do to increase the revenue from the bottom
10 customers
5. KMS incurred the most shipping cost using which shipping method?

- Case Scenario II
6. Who are the most valuable customers, and what products or services do they typically
purchase?
7. Which small business customer had the highest sales?
8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
9. Which consumer customer was the most profitable one?
10. Which customer returned items, and what segment do they belong to?
11. If the delivery truck is the most economical but the slowest shipping method and
Express Air is the fastest but the most expensive one, do you think the company
appropriately spent shipping costs based on the Order Priority? Explain your answer


## Skills 
- Data importing. 
- Database management. 
- SQL querying. 
- Data analysis. 
- Reporting.


## Conclusion
Based on the analysis in SQL Server, the company did not appropriately align shipping costs with order priorities. The Delivery Truck while considered economical, incurred the highest total shipping cost and was used across all priority levels, including "Critical", which undermines timely delivery. Furthermore, all shipments for the truck delivery were packed in Jumbo packaging, regardless of urgency, amplifying the cost. This suggests a lack of strategic alignment between shipping method, order priority, and packaging choices. 


## Recommendation
1. The company should consider refining its shipping policy to; Match faster shipping methods with high-priority orders, use         economical options for low-priority orders,re-evaluate packaging efficiency.
2. Improve engagement and communication by reaching out directly to understand their purchasing patterns and constraints. 
   For those with “Critical” priority: offer dedicated account management or priority handling services to reinforce the             relationship.
3. Offer incentives for larger orders because from the query the orders were small and they can do this by design volume-based       discounts or bundling offers to encourage higher order quantities. Also, introduce loyalty points for repeat purchases.
4. Clarify order priority and needs for customers with “Not Specified” or “Low” priority by Following up to understand their         urgency and how your services can be made more valuable. Also, They should consider prompting for priority selection during       ordering to tailor service.
5. Use email campaigns or targeted ads to highlight relevant offerings.
6. Set KPIs such as increase in average order size, frequency of orders, and customer satisfaction scores. Track changes over the    next 3–6 months to evaluate the impact of these strategies.

## Files
**`DSA_DACP Text Script.sql`:** This SQL file is where all the querying happened to gain an understanding and insights from the database, and answer the questions asked. <br>
**`KMS Sql Case Study.csv`:**  This csv.file contains order data from 2009 to 2012 which was imported in the new database created in the Sql server. <br>


## Acknowledgement
I would like to thank Incubator_Hub for providing me with the opportunity to work on my SQL skills.





