.open chicago-red-light-cameras.db
SELECT Camera_ID, SUM(Num_Violations) AS Violation_Date
FROM violations
GROUP BY Camera_ID
ORDER BY Violation_Date DESC
LIMIT 1;