CREATE VIEW vw_VarianceAnalysis AS
SELECT
m.Year,
m.Month,
m.Revenue AS ActualRevenue,
f.ForecastRevenue, (m.Revenue - f.ForecastRevenue) AS Variance
FROM dbo.vw_MonthlyFinancials m
JOIN dbo.vw_Forecast f ON m.Year = f.Year AND m.Month = f.Month;