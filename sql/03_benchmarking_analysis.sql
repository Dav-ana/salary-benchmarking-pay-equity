-- Average compa-ratio by department 
SELECT 
    Department, 
    ROUND(AVG(compa_ratio), 2) AS Avg_Compa_Ratio 
FROM Employee_Data 
GROUP BY Department 
ORDER BY Avg_Compa_Ratio;

-- Average compa-ratio by gender
SELECT 
    Gender, 
    ROUND(AVG(Compa_Ratio), 2) AS Avg_Compa_Ratio 
FROM Employee_Data 
GROUP BY Gender
ORDER BY Avg_Compa_Ratio;

-- Count of employees underpaid, at market, and overpaid 
SELECT 
    CASE 
        WHEN Compa_Ratio < 0.95 THEN 'Underpaid'
        WHEN Compa_Ratio > 1.05 THEN 'Overpaid'
        ELSE 'At Market'
    END AS Pay_Position,
    COUNT(*) AS Headcount
FROM Employee_Data
GROUP BY 
  CASE 
        WHEN Compa_Ratio < 0.95 THEN 'Underpaid'
        WHEN Compa_Ratio > 1.05 THEN 'Overpaid'
        ELSE 'At Market'
    END
ORDER BY Pay_Position;

-- Who is furthest below market — bottom 10 employees by compa-ratio 
SELECT TOP 10 
    Employee_ID,
    Department, 
    Job_Title, 
    Gender, 
    ROUND(Compa_Ratio, 2) AS Compa_Ratio
FROM Employee_Data 
ORDER BY Compa_Ratio;

SELECT 
    Department, 
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary, 
    ROUND(AVG(CAST(Market_Benchmark_Salary AS FLOAT)), 0) AS Avg_Market_Benchmark 
FROM Employee_Data 
GROUP BY Department 
ORDER BY Department;
