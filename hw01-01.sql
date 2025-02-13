.open chicago-red-light-cameras.db
SELECT COUNT(DISTINCT intersection) AS unique_intersections
FROM cameras;