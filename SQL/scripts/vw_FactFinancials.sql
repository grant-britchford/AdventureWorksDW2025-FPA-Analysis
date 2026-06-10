CREATE VIEW vw_FactFinancials AS
SELECT
d.FullDateAlternateKey AS Date,
Year(d.FullDateAlternateKey) AS Year,
MONTH(d.FullDateAlternateKey) AS Month,
p.EnglishProductName,
p.ProductSubcategoryKey,
f.SalesAmount,
f.TotalProductCost,
(f.SalesAmount - f.TotalProductCost) AS Profit,
CASE
WHEN f.SalesAmount = 0 THEN 0
ELSE (f.SalesAmount - f.TotalProductCost) / f.SalesAmount
END AS MarginPct
FROM dbo.FactInternetSales f
JOIN DimDate d ON f.OrderDateKey = d.DateKey
JOIN DimProduct ON f.ProductKey = p.ProductKey;