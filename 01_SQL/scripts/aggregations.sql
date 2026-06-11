SELECT Year(Date) AS Year, SUM(SalesAmount) AS Revenue
FROM vw_FactRevenue
GROUP BY Year(Date);