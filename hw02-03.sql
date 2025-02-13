.open chicago-traffic-cameras.db
SELECT 
    rc.Camera_ID,
    rc.Address
FROM 
    RedCameras rc
JOIN 
    Intersections i ON rc.Intersection_ID = i.Intersection_ID
WHERE 
    i.Intersection LIKE '%Damen%' AND i.Intersection LIKE '%Diversey%'
ORDER BY 
    rc.Camera_ID ASC;
