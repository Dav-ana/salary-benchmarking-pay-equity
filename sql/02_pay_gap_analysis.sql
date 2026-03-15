-- Raw gender pay gap — average salary male vs female vs non-binary 
SELECT 
    Gender,
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary,
    COUNT (*) AS Headcount
FROM Employee_Data
GROUP BY Gender
ORDER BY Avg_Salary DESC;


-- Gender pay gap controlled by level
SELECT 
    Seniority_Level, 
    Gender, 
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary,
    COUNT (*) AS Headcount
FROM Employee_Data
GROUP BY Gender, Seniority_Level
ORDER BY 
CASE Seniority_Level 
WHEN 'Junior' THEN 1
WHEN 'Mid' THEN 2
WHEN 'Senior' THEN 3
WHEN 'Lead' THEN 4
END,
Gender;

-- Gender pay gap by department 
SELECT 
    Department, 
    Gender,
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary,
    COUNT (*) AS Headcount
FROM Employee_Data
GROUP BY Department, Gender
ORDER BY Department, Gender;
 
-- Ethnicity pay gap — average salary by ethnic group 
SELECT 
    Ethnicity, 
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary, 
    COUNT (*) AS Headcount FROM Employee_Data 
GROUP BY Ethnicity 
ORDER BY Avg_Salary DESC;

--Ethnicity pay gap controlled by level 
SELECT 
    Seniority_Level, 
    Ethnicity, 
    ROUND(AVG(CAST(Annual_Salary AS FLOAT)), 0) AS Avg_Salary,
    COUNT (*) AS Headcount
FROM Employee_Data
GROUP BY Ethnicity, Seniority_Level
ORDER BY 
CASE Seniority_Level 
WHEN 'Junior' THEN 1
WHEN 'Mid' THEN 2
WHEN 'Senior' THEN 3
WHEN 'Lead' THEN 4
END,
Ethnicity;