SET @rowindex := -1;

WITH i AS(
    SELECT
    @rowindex := @rowindex + 1 AS rowindex, LAT_N
    FROM STATION
    ORDER BY LAT_N
)

SELECT
    ROUND(AVG(LAT_N), 4)
FROM
    i
WHERE i.rowindex IN(FLOOR(@rowindex/2), CEIL(@rowindex/2));
