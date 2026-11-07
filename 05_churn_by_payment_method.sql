USE [Telco Churn];
GO

-- 5. Churn by PaymentMethod
SELECT PaymentMethod,
       COUNT(*) AS TotalCustomers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
       CAST(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate_Percent
FROM dbo.TelcoChurn
GROUP BY PaymentMethod
ORDER BY ChurnRate_Percent DESC;