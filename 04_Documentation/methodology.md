# FP&A Methodology

## Overview

This document explains the modelling logic used across SQL & Excel layers.

## SQL Layer

### Fact Layer

- Revenue
- Cost
- Profit

### Aggregation Layer

Monthly financial metrics:

- Year
- Month
- Revenue
- Cost
- Profit

## Scenario Modelling

Each scenario applies:

- Revenue * (1 + GrowthRate)
- Cost * (1 + CostInflation)

### Scenarios

| Scenario | Description |

| Base | Expected performance |
| Best | Optimistic |
| Worst | Conservative |

## Rolling Forecast

- 12-month rolling revenue
- Uses SQL window functions

## Excel Calculations

Core logic:

- Actual Revenue U+2192 SUMIFS(Actuals)
- Scenario Revenue U+2192 SUMIFS(Scenarios)
- Cost U+2192 Scenario based
- Profit U+2192 Revenue - Cost
- Variance U+2192 Scenario - Actual

## Variance Analysis

Variance = Scenario Revenue - Actual Revenue Variance % = Variance / Actual Revenue

## Design Principles

- No hardcoding
- Fully dynamic
- Structured layers
- Excel drives from SQL