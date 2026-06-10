
CREATE VIEW vw_FinancialsByProduct AS
SELECT
h.EnglishProductCategoryName,
h.EnglishProductSubcategoryName,
h.EnglishProductName,
f.SalesAmount,
f.TotalProductCost,
f.Profit
FROM vw_FactFinancials f
JOIN vw_ProductHierarchy h ON f.ProductKey = h.ProductKey;
