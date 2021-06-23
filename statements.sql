select * from classes;

select name, credits from classes 
where credits > '3';

select * from classes
where mod(credits::int,2) = 0;


select first_name, name from enrollments
join students on enrollments.student_id = students.id
join classes on enrollments.class_id = classes.id
where first_name = 'Tianna'
and grade is null;

select * from students
where birthdate < '1986-01-01'
and (first_name ilike '%t%' or last_name ilike '%t%');

select avg(age(birthdate,now())) from students;

select * from addresses
where city like '% %';

select first_name, last_name, line_1, city,state,zipcode 
from addresses
join students on students.address_id=addresses.id
where city like '% %';

select avg(credits::int) from classes;

select * from enrollments
join students on enrollments.student_id=students.id
where grade = 'A';

select first_name, sum(credits::int) from enrollments
join students on enrollments.student_id=students.id
join classes on enrollments.class_id = classes.id
group by first_name;


select first_name, sum(credits::int) from enrollments
join students on enrollments.student_id=students.id
join classes on enrollments.class_id = classes.id
where grade is not null
group by first_name;

select enrollments.*, name from enrollments
join classes on enrollments.class_id = classes.id;

select * from students
where birthdate>='1982-01-01'
and birthdate<='1985-12-31';

insert into enrollments(student_id,class_id,grade)
values('5','4','A');

select * from enrollments
join classes on enrollments.class_id = classes.id
join students on enrollments.student_id=students.id;


