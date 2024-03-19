USE PD_321

SELECT
		[������]				= group_name,
		[���������� ���������]	= COUNT(stud_id)	--COUNT() - ������� ������������
FROM	Students, Groups
WHERE	Students.[group] = Groups.group_id
GROUP BY group_name		--���� ���� ��������� ������� �������������, �� ����������� ����� ������� ����������� ������
HAVING COUNT(stud_id) < 10
ORDER BY [���������� ���������]	DESC	--Descending - � ������� ��������