USE PD_321

SELECT
		[����������� ��������]	= direction_name,
		[���������� ���������]	= COUNT(stud_id)
FROM	Students, Groups, Directions
WHERE	Students.[group] = Groups.group_id
AND		Groups.direction = Directions.direction_id
GROUP BY direction_name