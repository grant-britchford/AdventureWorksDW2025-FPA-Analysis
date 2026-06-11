CREATE VIEW vw_ExecutiveSummary AS
SELECT
SUM(SalesAmount) AS TotalRevenue,
SUM(TotalProductCost) AS TotalCost,
SUM(Profit) AS TotalProfit,
AVG(MarginPct) AS AvgMargin
FROM dbo.vw_FactFinancials;
GO
