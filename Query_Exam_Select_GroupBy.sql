SELECT studentid, AVG(grade)
FROM exam 
GROUP BY studentid
HAVING AVG(grade) > 8