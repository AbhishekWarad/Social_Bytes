SELECT
    p1.X AS Point1_X,
    p1.Y AS Point1_Y,
    p2.X AS Point2_X,
    p2.Y AS Point2_Y,
    SQRT(POW(p2.X - p1.X, 2) + POW(p2.Y - p1.Y, 2)) AS Distance
FROM
    Points p1
JOIN
    Points p2 ON p1.X != p2.X OR p1.Y != p2.Y
ORDER BY
    Distance
LIMIT 1;
