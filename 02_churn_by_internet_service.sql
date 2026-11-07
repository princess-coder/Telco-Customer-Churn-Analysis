USE [Telco Churn];
GO

-- 2. Churn by InternetService
SELECT InternetService,
       COUNT(*) AS TotalCustomers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
       CAST(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate_Percent
FROM dbo.TelcoChurn
GROUP BY InternetService
ORDER BY ChurnRate_Percent DESC;