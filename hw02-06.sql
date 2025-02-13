.open chicago-traffic-cameras.db
SELECT 
    sc.Camera_ID,
    sc.Address,
    SUM(sv.Num_Violations) AS num_violations
FROM 
    SpeedViolations sv
JOIN 
    SpeedCameras sc ON sv.Camera_ID = sc.Camera_ID
JOIN 
    Intersections i ON sc.Intersection_ID = i.Intersection_ID
WHERE 
    i.Intersection LIKE '%Pulaski%55th%'
GROUP BY 
    i.Intersection, sc.Camera_ID, sc.Address
ORDER BY 
    num_violations DESC
Limit 1;