SELECT x, y, z,
    (CASE WHEN x + y <= z OR x + z <= y OR z + y <= x THEN 'No'
    ELSE 'Yes' END) as triangle
FROM Triangle