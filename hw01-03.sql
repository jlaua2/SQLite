.open chicago-red-light-cameras.db
SELECT Camera_ID, intersection, address
FROM cameras
WHERE intersection LIKE '%Roosevelt%'
ORDER BY Camera_ID ASC;