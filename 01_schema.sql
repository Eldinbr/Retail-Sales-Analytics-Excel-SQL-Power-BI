CREATE DATABASE RetailSalesAnalytics;
GO
USE RetailSalesAnalytics;
GO
CREATE TABLE Sales (
    Order_ID VARCHAR(20) PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Customer_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Product_Name VARCHAR(150),
    Subcategory VARCHAR(100),
    Category VARCHAR(100),
    Region VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(12,2),
    Discount DECIMAL(5,2),
    Sales DECIMAL(14,2),
    Cost DECIMAL(14,2),
    Profit DECIMAL(14,2),
    Payment_Method VARCHAR(50)
);
GO
-- Import data/sales_data.csv into Sales using your SQL environment's CSV import tool.
