-- Average bonus by gender 
SELECT 
    Gender, 
    ROUND(AVG(CAST(Bonus AS FLOAT)), 0) AS Avg_Bonus,
    COUNT(*) AS Headcount
FROM Employee_Data 
GROUP BY Gender 
ORDER BY Avg_Bonus;

-- Average bonus by department 
SELECT 
    Department, 
    ROUND(AVG(CAST(Bonus AS FLOAT)), 0) AS Avg_Bonus,
    COUNT(*) AS Headcount
FROM Employee_Data 
GROUP BY Department 
ORDER BY Avg_Bonus;

-- Bonus as a percentage of salary by gender 
SELECT 
   Gender, 
   ROUND(AVG(CAST(Bonus AS FLOAT)) / AVG(CAST(Annual_Salary AS FLOAT)),3) AS Bonus_Percent, 
   COUNT(*) AS Headcount 
FROM Employee_Data GROUP BY Gender 
ORDER BY Bonus_Percent;

-- Employees who received zero bonus by performance rating and gender
SELECT Gender, Performance_Rating, COUNT (*) AS Headcount 
FROM Employee_Data 
WHERE Bonus = 0 
GROUP BY Gender, Performance_Rating 
ORDER BY Gender;