SELECT 
(CASE Gr.grade >= 8
WHEN TRUE
THEN St.name
ELSE NULL
END),
Gr.grade, St.marks
FROM Students St
INNER JOIN Grades Gr
ON St.marks BETWEEN Gr.Min_Mark AND Gr.Max_Mark
ORDER BY Gr.grade DESC, St.name, St.marks;
