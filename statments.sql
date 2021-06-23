--Select all rows from the classes table.
select * from classes;
--Select the name and credits from the classes table where the number of credits is greater than 3.
select name, credits from classes where classes.credits > 3;
--All rows from the classes table where credits is an even number.
select * from classes where classes.credits %2 = 0;
--All of Tianna's enrollments that she hasn't yet received a grade for.
select student_id, grade from enrollments
  JOIN students on enrollments.student_id=students.id
  where first_name = 'Tianna' and grade is NULL;  
--All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id
select first_name, grade from enrollments
  JOIN students on enrollments.student_id=students.id
  where first_name = 'Tianna' and grade is NULL; 
--All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id, with the class name included in the result set.
select first_name, classes.name, grade from enrollments
  JOIN students on enrollments.student_id=students.id
  JOIN classes on classes.id = enrollments.class_id
  where first_name = 'Tianna' and grade is NULL; 
--All students born before 1986 who have a 't' in their first or last name.

--The average age of all the students.

--Addresses that have a space in their city name.

--Students & their addresses that live in a city with more than one word in the city name.

--The average number of credits for classes offered at the school.

--The first and last name of all students who have received an 'A'.
 select first_name, last_name from students where students
--Each student's first name and the total credits they've enrolled in

--The total number of credits each student has received a grade for.

--All enrollments, including the class name.

--Students born between 1982-1985 (inclusive).

--Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.



