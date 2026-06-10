CREATE VIEW vw_FactRevenue AS
SELECT
d.FullDateAlternateKey AS Date,
p.EnglishProductName,
f.SalesAmount,
f.TotalProductCost
FROM dbo.FactInternetSales f
JOIN DimDate d ON f.OrderDateKey = d.DateKey
JOIN DimProduct p ON f.ProductKey = p.ProductKey;