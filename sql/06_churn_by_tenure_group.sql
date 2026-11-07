USE [Telco Churn];
GO

-- 4. Churn by Tenure Group
SELECT 
  CASE 
    WHEN tenure <= 6 THEN '0-6 months (New)'
    WHEN tenure <= 12 THEN '7-12 months'
    WHEN tenure <= 24 THEN '13-24 months'
    ELSE '25+ months (Loyal)'
  END AS TenureGroup,
  COUNT(*) AS TotalCustomers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned,
  CAST(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS ChurnRate_Percent
FROM dbo.TelcoChurn
GROUP BY 
  CASE 
    WHEN tenure <= 6 THEN '0-6 months (New)'
    WHEN tenure <= 12 THEN '7-12 months'
    WHEN tenure <= 24 THEN '13-24 months'
    ELSE '25+ months (Loyal)'
  END
ORDER BY ChurnRate_Percent DESC;
