
CREATE VIEW vw_ScenarioModel AS
SELECT
    s.ScenarioName,
    
    m.Year,
    m.Month,
    
    m.Revenue AS ActualRevenue,
    m.Cost AS ActualCost,
    
    -- Scenario Adjusted Values
    m.Revenue * (1 + s.GrowthRate) AS ScenarioRevenue,
    m.Cost * (1 + s.CostInflation) AS ScenarioCost,
    
    -- Profit Calculations
    (m.Revenue * (1 + s.GrowthRate))
    - (m.Cost * (1 + s.CostInflation)) AS ScenarioProfit

FROM vw_MonthlyFinancials m
CROSS JOIN dbo.Scenarios s;
