SELECT ha.hacker_id, ha.name, SUM(score) as total_score
FROM Hackers ha
INNER JOIN 
(SELECT hacker_id, MAX(score) AS score FROM Submissions 
 GROUP BY challenge_id, hacker_id) max_score
ON ha.hacker_id = max_score.hacker_id
GROUP BY ha.hacker_id, name
HAVING total_score > 0
ORDER BY total_score DESC, ha.hacker_id;
