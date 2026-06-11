CREATE VIEW vw_MonthlyFinancials AS
SELECT
Year,
Month,
SUM(SalesAmount) AS Revenue,
SUM(TotalProductCost) AS Cost,
SUM(Profit) AS Profit,
AVG(MarginPct) AS AvgMargin
FROM dbo.vw_FactFinancials
GROUP BY Year, Month;