SELECT name
FROM courses
Where start_time IN (SELECT MIN(start_time) FROM courses);