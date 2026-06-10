
CREATE VIEW vw_FactFinancials AS
SELECT
d.FullDateAlternateKey AS Date,
YEAR(d.FullDateAlternateKey) AS Year,
MONTH(d.FullDateAlternateKey) AS Month,
p.ProductKey,
p.EnglishProductName,
p.ProductSubcategoryKey,
f.SalesAmount,
f.TotalProductCost,
(f.SalesAmount - f.TotalProductCost) AS Profit,
CASE 
WHEN f.SalesAmount = 0 THEN 0
ELSE (f.SalesAmount - f.TotalProductCost) / f.SalesAmount 
END AS MarginPct
FROM FactInternetSales f
JOIN DimDate d ON f.OrderDateKey = d.DateKey
JOIN DimProduct p ON f.ProductKey = p.ProductKey;
