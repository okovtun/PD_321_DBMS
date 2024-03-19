USE PD_321

--SELECT
--		[�.�.�. ��������]		= FORMATMESSAGE('%s, %s, %s', last_name, first_name, middle_name),
--		[���������� ��������]	= direction_name
--FROM	Students, Groups, Directions
--WHERE	Students.[group] = Groups.group_id
--AND		Groups.direction = Directions.direction_id

SELECT
		[�.�.�. ��������]		= FORMATMESSAGE('%s %s %s', last_name, first_name, middle_name),
		[������]				= Groups.group_name,
		[����������� �������]	= direction_name
FROM	Students
JOIN	Groups		ON (Students.[group] = Groups.group_id)
RIGHT OUTER JOIN	Directions	ON (Groups.direction = Directions.direction_id)