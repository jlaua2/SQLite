.open chicago-traffic-cameras.db
SELECT 
    i.Intersection_ID, 
    i.Intersection, 
    COUNT(sc.Camera_ID) AS num_speed_cameras
FROM 
    Intersections i
LEFT JOIN 
    SpeedCameras sc ON i.Intersection_ID = sc.Intersection_ID
GROUP BY 
    i.Intersection_ID, i.Intersection
ORDER BY 
    num_speed_cameras DESC, 
    i.Intersection_ID ASC
limit 104;