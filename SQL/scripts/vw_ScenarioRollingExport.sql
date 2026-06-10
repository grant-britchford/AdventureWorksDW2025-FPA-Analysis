CREATE VIEW vw_ScenarioRollingExport AS
SELECT
ScenarioName,
Year,
Month,
ScenarioRevenue AS Revenue,
Rolling12M_Revenue
FROM dbo.vw_RollingForecast;