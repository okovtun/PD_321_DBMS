USE PD_321

--SELECT
--			[Дисциплина]				= discipline_name,
--			[Количество преподавателей]	= COUNT(teacher_id)
--FROM		Teachers, Disciplines, TeachersDisciplinesRelation
--WHERE		TeachersDisciplinesRelation.teacher		= Teachers.teacher_id
--AND			TeachersDisciplinesRelation.discipline	= Disciplines.discipline_id
--GROUP BY	discipline_name

--									JOIN
-- INNER JOIN
-- OUTER JOIN
-- LEFT  OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL OUTER JOIN
-- CROSS JOIN

SELECT
			[Дисциплина]				= discipline_name,
			[Количество преподавателей]	= COUNT(teacher_id)
FROM		Teachers
JOIN		TeachersDisciplinesRelation ON (teacher = teacher_id)
RIGHT JOIN	Disciplines					ON (discipline = discipline_id)
GROUP BY	discipline_name
HAVING		COUNT(teacher_id)>1 AND COUNT(teacher_id)<=3
ORDER BY	COUNT(teacher_id)
--ORDER BY	[Количество преподавателей]