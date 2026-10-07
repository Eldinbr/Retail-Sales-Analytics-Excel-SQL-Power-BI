# Excel Workflow

Use the workbook as the first stage of the analytics pipeline.

1. Convert `Sales_Data` into an Excel Table.
2. Check duplicate Order IDs.
3. Check blank or invalid values.
4. Validate Quantity, Unit Price and Discount.
5. Validate Sales and Profit calculations.
6. Create PivotTables for Sales by Region, Category, Month and Product.
7. Use Power Query for repeatable cleaning where appropriate.
8. Load the cleaned dataset into SQL.

Useful formulas:

```excel
=[@Quantity]*[@Unit_Price]*(1-[@Discount])
```

```excel
=[@Sales]-[@Cost]
```

```excel
=IFERROR([@Profit]/[@Sales],0)
```
