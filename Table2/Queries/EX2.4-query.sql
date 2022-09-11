SELECT DISTINCT students.name
FROM students, enrolled
WHERE students.id not in (SELECT students_id FROM enrolled);