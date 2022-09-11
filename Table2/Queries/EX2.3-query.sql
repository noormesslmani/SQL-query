/*Find all courses taken by BIF majors*/

/*filter by course names according to first 3 Characters being match with BIF	*/
SELECT name
FROM courses
WHERE left(name,3)="BIF";