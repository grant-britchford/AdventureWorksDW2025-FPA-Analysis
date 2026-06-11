# AdventureWorksDW2025-FPA-Analysis

## Project Overview

This project delivers a full Financial Planning & Analysis (FP&A) workflow using the AdventureWorksDW2025 data warehouse.

 It demonstrates how to:
 - Transform raw SQL Server data into a structured financial model
 - Build scenario-based forecasting (Base / Best / Worst)
 - Perform variance analysis between actuals & projections
 - Develop an interactive Excel dashboard for decision-making
   
## Objectives

The primary objective of this project is to simulate the work of an FP&A Analyst by:
- Creating a structured financial dataset from a data warehouse
- Applying scenario-based forecasting techniques
- Measuring performance using variance analysis
- Delivering insights through a professional Excel dashboard

## Project Architecture

SQL Server (AdventureWorksDW2025)

          ⬇️

Data Modelling (SSMS Views)

          ⬇️

Scenario & Forecast Layer

          ⬇️

Excel Model (Calculations)

          ⬇️

Interactive Dashboard

## Tools & Technology

- **SQL Server** - Data storage & transformation
- **SSMS** - Data modelling & view creation
- **Excel** - Financial modelling & dashboard
- **GitHub** - Version control & project documentation

## Data Source

The project uses:
- AdventureWorksDW2025.bak (Microsoft sample data warehouse)

[Data Source Link](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)

### Key Datasets

- Fact tables (Sales Transactions)
- Dimension tables (Date, Product, Customer)

## Data Modelling (SQL Layer)

The SQL phase includes:

### Fact View

- **vw_FactFinancials**
- Revenue
- Cost
- Profit
- Margin

### Aggregation Layer

- **vw_MonthlyFinancials**
- Year
- Month
- Revenue
- Cost
- Profit

### Scenario Model

- **vw_ScenarioModel**
- Scenario Revenue
- Scenario Cost
- Scenario Profit

Scenario logic:

Revenue * (1 + GrowthRate)
<br>
Cost * (1 + CostInflation)

### Rolling Forecast

- **vw_RollingForecast**

Provides

- Rolling 12-month revenue projection

### Final Export

- **vw_ExcelExport**
- **vw_ScenarioModel**

These were the datasets used in Excel

## Excel Model Structure

### Raw_Data

- Imported from vw_ExcelExport
- Contains the actual financial data

### Scenario_Data

- Imported from vw_ScenarioModel
- Contains the scenario forecasts

## Calculations

Core FP&A engine with:

**Metric**                **Formula**
Actual Revenue           SUMIFS from Actuals
Scenario Revenue         SUMIFS from Scenario table
Cost                     Scenario-based
Profit                   Revenue-Cost
Variance                 Scenario-Actual
Variance %               Variance/Actual

## Dashboard

Interactive report layer including:

- KPI Cards
- Revenue Trend
- Scenario Comparison
- Variance Analysis
- Slicers (Year, Month, Scenario)

## Key Features

### Scenario Modelling

Supports:

- Base Case
- Best Case
- Worst Case

### Variance Analysis

Measures:

- Difference between actual & forecast
- Performance tracking by period

### Rolling Forecast

Provides:

- 12-month forward-looking trend
- Long-term planning capability

### Interactive Dashboard

Includes:

- Pivot tables
- Charts
- Slicers

## Key Insights Delivered

This model enables users to:

- Compare actual vs forecasted revenue
- Identify over/under performance
- Evaluate financial outcomes under different scenarios
- Analyze monthly performance trends
- Monitor long-term revenue trajectory

## Validation & Quality Checks

The following were performed:

- Total Excel revenue = SQL revenue
- Scenario outputs align with assumptions
- Variance calculations verified
- Pivot tables & slicers linked correctly

## Workbook Controls

The final workbook includes:

- Workbook protected

## How to Use

1. Open Excel file
2. Click: Data ➡️ Refresh All
3. Use slicers:
- Select Year
- Select Month
- Select Scenario
4. Review:
- KPIs
- Charts
- Variance analysis

## Example Use Cases

This model can be applied to:

- Budget bs actual analysis
- Scenario planning
- Financial forecasting
- Performance tracking
- Management reporting

## Skills Demonstrated

This project demonstrates:

- Data modelling (SQL Server)
- Financial modelling (Excel)
- Scenario analysis (FP&A)
- Data transformation
- Dashboard design
- Business insight generation

## Final Outcome

This project delivers a complete FP&A solution:

- Structured data pipeline
- Dynamic forecasting model
- Interactive report dashboard
- Professional, portfolio-ready output

## Author

**Name**: Grant Britchford
<br>
**Role**: Data Analyst
<br>
**Date**: 11th June 2026
