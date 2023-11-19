SELECT
    CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM
    OCCUPATIONS
ORDER BY
    Name;

SELECT
    CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.' ) AS sentence
FROM
    OCCUPATIONS
GROUP BY
    Occupation
ORDER BY
    sentence;