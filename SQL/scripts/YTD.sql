SELECT
Year,
Month,
SUM(Revenue) OVER (PARTITION BY Year ORDER BY Month) AS YTD_Revenue
FROM dbo.vw_MonthlyFinancials;