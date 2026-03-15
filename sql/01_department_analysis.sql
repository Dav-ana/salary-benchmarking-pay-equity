
SELECT COUNT(*) AS Total_Rows FROM Employee_Data;

-- Headcount and Average Salary by Department
SELECT 
    Department,
    COUNT(*) AS Headcount,
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary,
    ROUND(MIN(Annual_Salary), 0) AS Min_Salary,
    ROUND(MAX(Annual_Salary), 0) AS Max_Salary
FROM Employee_Data
GROUP BY Department
ORDER BY Avg_Salary DESC;

-- Average salary by department and seniority level
SELECT 
    Department,
    Seniority_Level,
    COUNT(*) AS Headcount,
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary
FROM Employee_Data
GROUP BY Department, Seniority_Level
ORDER BY Department, 
    CASE Seniority_Level 
        WHEN 'Junior' THEN 1 
        WHEN 'Mid' THEN 2 
        WHEN 'Senior' THEN 3 
        WHEN 'Lead' THEN 4 
    END;

-- Average salary by location
SELECT 
    Location, 
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)),0) AS Avg_Salary 
FROM Employee_Data 
GROUP BY Location 
Order By Avg_Salary DESC;

-- Headcount by gender per department 
SELECT 
    Gender, 
    Department, 
    Count (Gender) AS Headcount 
FROM Employee_Data 
GROUP BY Department, Gender 
ORDER BY Department;

