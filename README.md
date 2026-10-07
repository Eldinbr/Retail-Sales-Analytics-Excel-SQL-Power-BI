# Retail Sales Analytics — Excel, SQL & Power BI

## Overview

Retail Sales Analytics is an end-to-end business intelligence project showing how **Excel, SQL and Power BI** can be combined to turn raw transactional data into actionable business insights.

```text
Raw Sales Data
      ↓
    Excel
Cleaning & Validation
      ↓
     SQL
Transformation & KPI Analysis
      ↓
   Power BI
Dashboard & Business Insights
```

## Preview

```text
Retail Sales Analytics
├── Excel Data Preparation
├── Data Validation
├── SQL Data Analysis
├── KPI Development
├── Power BI Data Model
├── DAX Measures
└── Interactive Dashboard
```

Add your Power BI screenshot as `docs/dashboard-preview.png` after building the report.

## Business Questions

1. What are total sales and profit?
2. What is the overall profit margin?
3. Which month has the highest sales?
4. Which region generates the most revenue?
5. Which products generate the most profit?
6. Which category has the strongest margin?
7. Which sales channel performs better?
8. How does discounting affect profitability?
9. Which customers contribute the most revenue?
10. Are sales improving over time?

## Learning Outcomes

- Excel Tables and PivotTables
- Data cleaning and validation
- SQL aggregation and reporting
- KPI development
- Power BI data modelling
- DAX measures
- Interactive dashboard design
- Business intelligence and data storytelling
- Git and GitHub

## Technologies

**Excel:** Tables, formulas, PivotTables, Power Query concepts

**SQL:** SQL Server-compatible SQL, aggregation, views, KPI queries

**Power BI:** Power Query, data modelling, DAX, measures, visuals and slicers

## Project Structure

```text
retail-sales-analytics/
├── data/
│   └── sales_data.csv
├── excel/
│   ├── retail_sales_data.xlsx
│   └── EXCEL_WORKFLOW.md
├── sql/
│   ├── 01_schema.sql
│   ├── 02_analysis.sql
│   └── 03_reporting_views.sql
├── powerbi/
│   └── POWER_BI_GUIDE.md
├── docs/
├── .github/workflows/
├── .gitignore
├── LICENSE
└── README.md
```

## Dataset

The included sample contains approximately 1,500 retail transactions across 2024–2025 with order, customer, product, region, channel, quantity, price, discount, sales, cost and profit fields.

## Excel Stage

Use Excel for initial validation, cleaning and exploratory analysis. Recommended checks include duplicate Order IDs, missing values, invalid quantities/discounts, and revenue/profit calculations.

## SQL Stage

SQL provides repeatable analysis for monthly, regional, product, channel, customer and discount performance.

Example:

```sql
SELECT Region,
       SUM(Sales) AS Sales,
       SUM(Profit) AS Profit,
       ROUND(SUM(Profit) * 100.0 / NULLIF(SUM(Sales),0), 2) AS Margin_Pct
FROM Sales
GROUP BY Region
ORDER BY Sales DESC;
```

## Power BI Stage

Recommended dashboard pages:

1. **Executive Overview** — KPIs and overall trends
2. **Product Performance** — top products and categories
3. **Regional Analysis** — sales and profitability by region
4. **Customer Analysis** — customer contribution
5. **Discount & Profitability** — discount impact and margins

## Core DAX

```DAX
Total Sales = SUM(Sales[Sales])
Total Profit = SUM(Sales[Profit])
Units Sold = SUM(Sales[Quantity])
Total Orders = DISTINCTCOUNT(Sales[Order_ID])
Unique Customers = DISTINCTCOUNT(Sales[Customer_ID])
Profit Margin = DIVIDE([Total Profit], [Total Sales])
Average Order Value = DIVIDE([Total Sales], [Total Orders])
```

## End-to-End Workflow

```text
             RAW DATA
                ↓
             EXCEL
     Cleaning & Validation
                ↓
              SQL
     Transformation & KPIs
                ↓
            POWER BI
      Data Model + DAX
                ↓
           DASHBOARD
                ↓
       BUSINESS INSIGHTS
```

## Business Value

The project demonstrates how management can use a single reporting workflow to understand revenue, profitability, products, regions, customers, channels and discount performance.

## Future Improvements

- Automated Excel-to-SQL pipeline
- SQL Server production database
- Scheduled Power BI refresh
- Customer segmentation / RFM
- Sales forecasting
- Inventory analysis
- Returns analysis
- Advanced star schema
- Row-level security
- Power BI Service deployment
- Python automation

## Portfolio Roles

This project is relevant to:

- **Data Analyst**
- **Business Intelligence Analyst**
- **Reporting Analyst**
- **Junior Data Analyst**
- **Power BI Developer**
- **SQL Analyst**
- **Business Analyst**

## Credits

**Developer:** Eldin

**Tools:** Microsoft Excel, SQL, Power BI, Git, GitHub

## License

MIT License

**Thanks for visiting! 📊**
