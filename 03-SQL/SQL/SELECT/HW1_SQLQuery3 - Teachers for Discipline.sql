USE PD_321

SELECT
		[Преподаватель] = FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
		[Дисциплина]	= discipline_name
FROM	Teachers, Disciplines, TeachersDisciplinesRelation
WHERE	TeachersDisciplinesRelation.teacher		= Teachers.teacher_id
AND		TeachersDisciplinesRelation.discipline	= Disciplines.discipline_id
--AND		Disciplines.discipline_name NOT LIKE ('%C#%')
--AND		Disciplines.discipline_name LIKE ('%C__')
AND		Disciplines.discipline_name NOT LIKE ('%[A-Z]%')