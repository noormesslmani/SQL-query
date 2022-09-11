/*Find the number of CS students enrolled in CSC275*/

/*Check first in the 2nd query if the student is majoring in computer science becuase other majors may take this course, then filter according to course name and matching
id between enrolled, majorsin, and courses tables and count their numbers*/
SELECT COUNT(enrolled.courses_crn)
FROM enrolled, majorsin, courses
WHERE enrolled.students_id=majorsin.students_id AND enrolled.courses_crn=courses.crn AND courses.name="CSC275" AND majorsin.departments_id= (SELECT id FROM departments WHERE name="CSC")