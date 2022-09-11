/*Find the number of CS students enrolled in any course*/

/*filter first by CS major(dep), then count the number of students enrolled, use distinct to avoid multiple 
counting for multiple enrollments*/
SELECT COUNT(DISTINCT(enrolled.students_id))
FROM enrolled, majorsin
WHERE enrolled.students_id=majorsin.students_id AND majorsin.departments_id= (SELECT id FROM departments WHERE name="CSC")