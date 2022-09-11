SELECT DISTINCT students.name
FROM students, entrolled
WHERE students.id not in (SELECT students_id FROM entrolled);