SELECT ha.hacker_id, ha.name
FROM submissions su
INNER JOIN challenges c
ON su.challenge_id = c.challenge_id
INNER JOIN difficulty d
ON c.difficulty_level = d.difficulty_level
INNER JOIN hackers ha
ON su.hacker_id = ha.hacker_id
WHERE su.score = d.score and c.difficulty_level = d.difficulty_level
GROUP BY ha.hacker_id, ha.name
HAVING COUNT(su.hacker_id) > 1
ORDER BY COUNT(su.hacker_id) DESC, su.hacker_id;
