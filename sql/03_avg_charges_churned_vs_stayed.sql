USE [Telco Churn];
GO

-- 3. Average charges: Churned vs Stayed
SELECT Churn,
       COUNT(*) AS TotalCustomers,
       CAST(AVG(MonthlyCharges) AS DECIMAL(5,2)) AS AvgMonthlyCharges,
       CAST(AVG(TotalCharges) AS DECIMAL(10,2)) AS AvgTotalCharges,
       CAST(AVG(tenure) AS DECIMAL(5,1)) AS AvgTenure_Months
FROM dbo.TelcoChurn
GROUP BY Churn;
