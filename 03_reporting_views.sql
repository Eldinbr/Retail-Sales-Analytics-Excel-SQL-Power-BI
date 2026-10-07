CREATE VIEW vw_monthly_sales AS
SELECT YEAR(Order_Date) Sales_Year, MONTH(Order_Date) Sales_Month,
SUM(Sales) Total_Sales,SUM(Profit) Total_Profit,
SUM(Quantity) Units_Sold,COUNT(DISTINCT Order_ID) Orders
FROM Sales GROUP BY YEAR(Order_Date),MONTH(Order_Date);
GO

CREATE VIEW vw_product_performance AS
SELECT Product_ID,Product_Name,Category,Subcategory,
SUM(Quantity) Units_Sold,SUM(Sales) Total_Sales,SUM(Profit) Total_Profit,
SUM(Profit)*100.0/NULLIF(SUM(Sales),0) Profit_Margin
FROM Sales GROUP BY Product_ID,Product_Name,Category,Subcategory;
GO
