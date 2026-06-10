CREATE VIEW vw_ProductHierarchy AS
SELECT
p.ProductKey,
p.EnglishProductName,
sc.EnglishProductSubcategoryName,
c.EnglishProductCategoryName
FROM dbo.DimProduct p
JOIN DimProductSubcategory sc ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
JOIN DimproductCategory c ON sc.ProductCategoryKey = c.ProductCategoryKey;