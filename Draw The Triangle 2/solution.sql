WITH RECURSIVE Numbers AS (
SELECT 1 AS number
UNION ALL
SELECT number + 1
FROM Numbers
WHERE number < 20
)

SELECT REPEAT('* ', n.number) AS Pattern FROM Numbers n
ORDER BY n.number;