/*Find the number of majors that each student has declared*/

/*count the occurence of each student id in majorsin table using Group by*/
SELECT majorsin.students_id, COUNT(majorsin.students_id)
FROM majorsin
GROUP BY students_id;