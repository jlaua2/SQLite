.open chicago-traffic-cameras.db
SELECT 
    strftime('%Y', rv.Violation_Date) AS year, 
    SUM(rv.Num_Violations) AS red_light_violations
FROM 
    RedViolations rv
JOIN 
    RedCameras rc ON rv.Camera_ID = rc.Camera_ID
JOIN 
    Intersections i ON rc.Intersection_ID = i.Intersection_ID
WHERE 
    i.Intersection LIKE '%Cicero%I55%'
GROUP BY 
    strftime('%Y', rv.Violation_Date)
ORDER BY 
    year ASC;