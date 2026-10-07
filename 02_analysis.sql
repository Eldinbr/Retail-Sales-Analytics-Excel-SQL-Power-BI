-- Overall KPIs
SELECT SUM(Sales) Total_Sales, SUM(Profit) Total_Profit,
SUM(Quantity) Units_Sold, COUNT(DISTINCT Order_ID) Total_Orders,
COUNT(DISTINCT Customer_ID) Unique_Customers,
ROUND(SUM(Profit)*100.0/NULLIF(SUM(Sales),0),2) Profit_Margin_Pct
FROM Sales;

-- Monthly performance
SELECT YEAR(Order_Date) Sales_Year, MONTH(Order_Date) Sales_Month,
SUM(Sales) Sales, SUM(Profit) Profit, SUM(Quantity) Units
FROM Sales GROUP BY YEAR(Order_Date),MONTH(Order_Date)
ORDER BY Sales_Year,Sales_Month;

-- Regional performance
SELECT Region,SUM(Sales) Sales,SUM(Profit) Profit,
ROUND(SUM(Profit)*100.0/NULLIF(SUM(Sales),0),2) Margin_Pct
FROM Sales GROUP BY Region ORDER BY Sales DESC;

-- Top products
SELECT TOP 10 Product_Name,Category,SUM(Quantity) Units_Sold,
SUM(Sales) Sales,SUM(Profit) Profit
FROM Sales GROUP BY Product_Name,Category ORDER BY Sales DESC;

-- Channel performance
SELECT Sales_Channel,COUNT(DISTINCT Order_ID) Orders,SUM(Sales) Sales,
SUM(Profit) Profit,ROUND(SUM(Profit)*100.0/NULLIF(SUM(Sales),0),2) Margin_Pct
FROM Sales GROUP BY Sales_Channel ORDER BY Sales DESC;

-- Top customers
SELECT TOP 20 Customer_ID,COUNT(DISTINCT Order_ID) Orders,
SUM(Sales) Sales,SUM(Profit) Profit
FROM Sales GROUP BY Customer_ID ORDER BY Sales DESC;

-- Discount analysis
SELECT Discount,COUNT(*) Order_Lines,SUM(Sales) Sales,SUM(Profit) Profit,
ROUND(SUM(Profit)*100.0/NULLIF(SUM(Sales),0),2) Margin_Pct
FROM Sales GROUP BY Discount ORDER BY Discount;
