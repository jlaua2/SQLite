.open chicago-red-light-cameras.db
SELECT 
    Violation_Date,
    SUM(Num_Violations) AS Total_Violations
FROM 
    Violations
WHERE 
    Violation_Date LIKE '07/04/%'
GROUP BY 
    Violation_Date
ORDER BY 
    Violation_Date ASC;
