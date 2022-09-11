/*Find the course or courses with the earliest start time*/

/*get the minimun start time, the query all courses with the min start time */

SELECT name
FROM courses
Where start_time IN (SELECT MIN(start_time) FROM courses);