SELECT majorsin.students_id, COUNT(majorsin.students_id)
FROM majorsin
GROUP BY students_id;