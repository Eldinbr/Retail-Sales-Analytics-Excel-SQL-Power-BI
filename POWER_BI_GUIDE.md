# Power BI Dashboard Guide

## Data Source
Import `data/sales_data.csv`, or connect Power BI to the SQL `Sales` table/views.

## Date Table

```DAX
DateTable =
ADDCOLUMNS(
    CALENDAR(MIN(Sales[Order_Date]), MAX(Sales[Order_Date])),
    "Year", YEAR([Date]),
    "Month Number", MONTH([Date]),
    "Month", FORMAT([Date], "MMM"),
    "Year Month", FORMAT([Date], "YYYY-MM"),
    "Quarter", "Q" & FORMAT([Date], "Q")
)
```

Create a relationship from `DateTable[Date]` to `Sales[Order_Date]`.

## Core Measures

```DAX
Total Sales = SUM(Sales[Sales])
Total Profit = SUM(Sales[Profit])
Units Sold = SUM(Sales[Quantity])
Total Orders = DISTINCTCOUNT(Sales[Order_ID])
Unique Customers = DISTINCTCOUNT(Sales[Customer_ID])
Profit Margin = DIVIDE([Total Profit], [Total Sales])
Average Order Value = DIVIDE([Total Sales], [Total Orders])
```

## Dashboard Pages

### Executive Overview
KPI cards for Sales, Profit, Margin, Orders, Units and AOV.
Add monthly sales, sales by region, category and channel.

### Product Performance
Top products by sales/profit, category analysis, units sold and Sales-vs-Profit.

### Regional Analysis
Sales, profit and margin by region with monthly trend and slicers.

### Customer Analysis
Top customers, customer sales/profit and orders per customer.

### Discount & Profitability
Discount vs margin, discount vs sales, profit by discount and channel profitability.

## Business Questions
1. Which region generates the most revenue?
2. Which products generate the most profit?
3. Which channel performs better?
4. How does discounting affect profitability?
5. Which customers contribute the most revenue?
6. Are sales growing over time?
7. Which categories have weak margins?
