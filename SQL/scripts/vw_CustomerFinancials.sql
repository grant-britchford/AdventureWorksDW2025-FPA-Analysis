CREATE VIEW vw_CustomerFinancials AS
SELECT
c.CustomerKey,
g.City,
g.EnglishCountryRegionName,
SUM(f.SalesAmount) AS Revenue,
SUM(f.TotalproductCost) AS Cost,
SUM(f.SalesAmount - f.TotalProductCost) AS Profit
FROM dbo.FactInternetSales f
JOIN dbo.DimCustomer c ON f.CustomerKey = c.CustomerKey
JOIN dbo.DimGeography g ON c.GeographyKey = g.GeographyKey
GROUP BY c.CustomerKey, g.City, g.EnglishCountryRegionName;