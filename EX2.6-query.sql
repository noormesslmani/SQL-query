SELECT COUNT(majorsin.students_id)
FROM majorsin, departments
WHERE departments.name="CSC" AND majorsin.departments_id=departments.id AND majorsin.students_id IN (
SELECT students_id FROM entrolled);