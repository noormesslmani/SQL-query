/*For each department with more than one majoring student, print the
department’s name and the number of majoring students*/

/*count the number of students majoring in each depratment grouped by name, having count of students
majoring in more than 1*/
SELECT departments.name, COUNT(majorsin.students_id)
FROM departments, majorsin
WHERE departments.id=majorsin.departments_id 
GROUP BY departments.name
HAVING COUNT(majorsin.students_id)>1
