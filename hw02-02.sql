.open chicago-traffic-cameras.db
SELECT 
    strftime('%Y', rv.Violation_Date) AS Year,
    SUM(rv.Num_Violations) AS Total_Violations
FROM 
    SpeedViolations rv
JOIN 
    SpeedCameras rc ON rv.Camera_ID = rc.Camera_ID
WHERE 
    rc.Address = '2928 S HALSTED'
GROUP BY 
    Year
ORDER BY 
    Total_Violations ASC
LIMIT 5;
