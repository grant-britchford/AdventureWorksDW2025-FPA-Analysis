CREATE VIEW vw_Forecast AS
SELECT
m.Year,
m.Month,
m.Revenue * (1 + a.GrowthRate) AS ForecastRevenue,
m.Cost * (1 + a.CostInflation) AS ForecastCost
FROM dbo.vw_MonthlyFinancials m
JOIN dbo.Assumptions a ON m.Year = a.Year;