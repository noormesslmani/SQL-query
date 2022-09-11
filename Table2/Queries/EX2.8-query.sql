SELECT departments.name, COUNT(majorsin.students_id)
FROM departments, majorsin
WHERE departments.id=majorsin.departments_id 
GROUP BY departments.name
HAVING COUNT(majorsin.students_id)>1
