SELECT
    Hackers.hacker_id, Hackers.name, SUM(Sub.score) AS total_score
FROM
    Hackers
JOIN (SELECT hacker_id, challenge_id, MAX(score) AS score
    FROM
        Submissions
    WHERE
        score > 0
    GROUP BY
        hacker_id, challenge_id) AS Sub
ON
    Hackers.hacker_id = Sub.hacker_id
GROUP BY
    Hackers.hacker_id, Hackers.name
ORDER BY
    total_score DESC, Hackers.hacker_id;