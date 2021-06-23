SELECT classes.name, classes.credits FROM classes WHERE credits > 3;

SELECT * FROM classes WHERE credits%2 = 0

SELECT * from enrollments WHERE student_id = 1 AND grade IS NULL;
 
-- Join
select first_name from enrollments inner join students  on enrollments.student_id = students.id where students.first_name = 'Tianna' and enrollments.grade is null

select * from students where (birthdate < Date('1986-01-01')) and (students.first_name ilike '%t%');
-- ilike = case insensitive/ like = case sensitive

