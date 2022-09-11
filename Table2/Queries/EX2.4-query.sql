/*Create a list of all students who are not enrolled in a course*/

/*select students-id from enrolled table in the second query, then filter according to non-enrolled students id, finially select distinct students names  */
SELECT DISTINCT students.name
FROM students, enrolled
WHERE students.id not in (SELECT students_id FROM enrolled);