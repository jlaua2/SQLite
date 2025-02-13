.open chicago-red-light-cameras.db
SELECT SUM(Num_Violations) AS Total_Violations
  FROM Violations
 WHERE (Camera_ID) IN (
           SELECT (Camera_ID) 
             FROM Cameras
            WHERE Intersection LIKE '%Roosevelt and Halsted%'
       )
AND 
       SUBSTR(Violation_Date, -4) = '2020';
       
.open chicago-red-light-cameras.db
SELECT SUM(Num_Violations) AS Total_Violations
  FROM Violations
 WHERE (Camera_ID) IN (
           SELECT (Camera_ID)
             FROM Cameras
            WHERE Intersection LIKE '%Roosevelt and Halsted%'
       )
AND 
       SUBSTR(Violation_Date, -4) = '2023';

