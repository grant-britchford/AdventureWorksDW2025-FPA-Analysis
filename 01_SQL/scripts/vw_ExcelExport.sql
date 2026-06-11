CREATE VIEW vw_ExcelExport AS
SELECT
f.Year,
f.Month,
h.EnglishProductCategoryName,
f.SalesAmount AS Revenue,
f.TotalProductCost AS Cost,
f.Profit
FROM dbo.vw_FactFinancials f
JOIN dbo.vw_ProductHierarchy h ON f.ProductKey = h.ProductKey;