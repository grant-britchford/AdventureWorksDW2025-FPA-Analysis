CREATE VIEW vw_RollingForecast AS
SELECT
ScenarioName,
Year,
Month,
ScenarioRevenue,
SUM(ScenarioRevenue) OVER (PARTITION BY ScenarioName ORDER BY Year, Month
ROWS BETWEEN 11 PRECEDING AND CURRENT ROW) AS Rolling12M_Revenue
FROM dbo.vw_ScenarioModel;