SELECT (Months * Salary) AS Earnings, COUNT(*) FROM Employee
GROUP BY Earnings
ORDER BY Earnings DESC
LIMIT 1;
