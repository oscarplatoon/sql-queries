select * from classes;

select class_name, credits from classes
where credits > 3;

select * from classes 
where credits % 2 = 0;

select * from enrollments 
join students 
on enrollments.student_id = students.id 
where students.first_name = 'Tianna' 
AND enrollments.grade IS NULL;

select students.first_name, * from enrollments 
join students 
on enrollments.student_id = students.id 
where students.first_name = 'Tianna' 
AND enrollments.grade IS NULL;

select first_name, class_name from enrollments 
join students
on enrollments.student_id = students.id 
join classes
on enrollments.class_id = classes.id
where students.first_name = 'Tianna' 
AND enrollments.grade IS NULL;

select first_name, last_name from students
where first_name ilike('%t%') OR
last_name ilike('%t%') AND
birthdate < '1986-01-01'::date;

select avg(age(current_date, birthdate)) from students;

select first_name, last_name, line_1, city, state_name, zipcode from addresses
join students on students.address_id = addresses.id
where city ilike ('% %');

select avg(credits) from classes;

select first_name, last_name from students
join enrollments on
students.id = enrollments.student_id
where grade like 'A%';

select first_name, sum(credits) from students
join enrollments
on students.id = enrollments.student_id
join classes
on classes.id = enrollments.class_id
group by first_name;

select first_name, sum(credits) from students
join enrollments
on students.id = enrollments.student_id
join classes
on classes.id = enrollments.class_id
where grade is not null
group by first_name;

select first_name, class_name from students
join enrollments
on students.id = enrollments.student_id
join classes
on classes.id = enrollments.class_id
group by first_name, class_name
order by 2;

select first_name, last_name, birthdate from students
where birthdate >= '1982-01-01' AND
birthdate <= '1985-12-31';

--insert into enrollments (student_id, class_id)
-- (select student_id from enrollments
-- join students
-- on students.id = enrollments.student_id
-- where last_name = 'Rohan'
-- limit 1)
-- (select class_id from classes
-- join enrollments
-- on classes.id = enrollments.class_id
-- where class_name = 'PHYS 218');

-- --INSERT into enrollments (student_id, class_id)
-- SELECT student_id, class_id
-- FROM students, enrollments, classes 
-- WHERE students.last_name = 'Rohan'
--   AND classes.class_name = 'PHYS 218';