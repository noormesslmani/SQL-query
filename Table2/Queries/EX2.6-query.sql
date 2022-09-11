SELECT COUNT(DISTINCT(enrolled.students_id))
FROM enrolled, majorsin
WHERE enrolled.students_id=majorsin.students_id AND majorsin.departments_id= (SELECT id FROM departments WHERE name="CSC")