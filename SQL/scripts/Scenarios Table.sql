ALTER TABLE Scenarios(
ScenarioName NVARCHAR(20),
GrowthRate DECIMAL(5,2),
CostInflation DECIMAL(5,2));
GO

INSERT INTO Scenarios Values
('Base', 0.05, 0.03),
('Best', 0.10, 0.02),
('Worst', -0.02, 0.05);