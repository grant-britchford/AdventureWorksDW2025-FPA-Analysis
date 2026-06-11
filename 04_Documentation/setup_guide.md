# Setup Guide

## Overview

This guide explains how to rebuild the project from scratch.

## SQL Server

Steps:

1. Install SQL Server
2. Open SSMS
3. Restore database: AdventureWorksDW2025

## Create SQL Views

Create:

- vw_FactFinancials
- vw_MonthlyFinancials
- vw_ScenarioModel
- vw_TRollingForecast
- vw_ScenarioRollingExport

## Excel Setup

Import data:

- Actuals U+2192 vw_ExcelExport
- Scenarios U+2192 vw_ScenarioModel

## Build Tables

Convert to Exceltables:

- Actuals
- Scenarios

## Build Calculations Grid

Use:

=SUMIFS(Actuals[Revenue],Actuals[Year],A2,Actuals[Month],B2)

## Build Dashboard

- Pivot Tables
- Charts
- KPIs
- Slicers

Final Step:

Click: Data U+2192 Refresh All