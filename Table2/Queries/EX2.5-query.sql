SELECT COUNT(enrolled.courses_crn)
FROM enrolled, majorsin, courses
WHERE enrolled.students_id=majorsin.students_id AND enrolled.courses_crn=courses.crn AND courses.name="CSC275" AND majorsin.departments_id= (SELECT id FROM departments WHERE name="CSC")