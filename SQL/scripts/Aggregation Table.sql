SELECT Year(Date) AS Year, SUM(SalesAmount) AS Revenue
INTO agg_YearlyRevenue
FROM dbo.vw_FactFinancials
GROUP BY Year(Date);