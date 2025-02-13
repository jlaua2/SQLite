.open chicago-traffic-cameras.db
SELECT 
    rv.Camera_ID,
    rc.Address,
    SUM(rv.Num_Violations) AS Total_Violations
FROM 
    RedViolations rv
JOIN 
    RedCameras rc ON rv.Camera_ID = rc.Camera_ID
JOIN 
    Intersections i ON rc.Intersection_ID = i.Intersection_ID
GROUP BY 
    rv.Camera_ID, rc.Address
ORDER BY 
    Total_Violations DESC
LIMIT 10;
