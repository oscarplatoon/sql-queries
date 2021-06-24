### Select all rows from the `classes` table.
  SELECT * FROM classes;

### Select the `name` and `credits` from the `classes` table where the number of credits is greater than 3.
  SELECT * FROM classes where credits>3;

### All rows from the `classes` table where credits is an even number.
  SELECT * FROM classes where credits%2=0;

### All of Tianna's enrollments that she hasn't yet received a grade for.
SELECT students.id, students.first_name, students.last_name, enrollments.class_id, enrollments.grade FROM students INNER JOIN enrollments ON students.id = enrollments.student_id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;

### All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her `student.id`
SELECT students.id, students.first_name, students.last_name, enrollments.class_id, enrollments.grade FROM students INNER JOIN enrollments ON students.id = enrollments.student_id WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;

### All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her `student.id`, with the class name included in the result set.
SELECT students.id, 
  students.first_name, 
  students.last_name, 
  enrollments.class_id, 
  enrollments.grade,
  classes.name

FROM enrollments
INNER JOIN students 
  ON enrollments.student_id = students.id
INNER JOIN classes
  ON enrollments.class_id = classes.id
WHERE students.first_name = 'Tianna' AND enrollments.grade IS NULL;

### All students born before 1986 who have a 't' in their first or last name.
SELECT * FROM students 
WHERE 
  first_name LIKE '%T%' 
  OR last_name LIKE '%T%'
  AND birthdate < '1986-01-01'::date;

### The average age of all the students.
SELECT avg(age(current_date, birthdate)) FROM students;

### Addresses that have a space in their city name.
SELECT * FROM addresses WHERE city LIKE '% %';

### Students & their addresses that live in a city with more than one word in the city name.
SELECT 
  first_name, 
  last_name, 
  line_1, city, 
  state, 
  zipcode 
FROM addresses
JOIN students ON students.id = addresses.id
WHERE city LIKE '% %';

### The average number of credits for classes offered at the school.
SELECT avg(credits) FROM classes;

### The first and last name of all students who have received an 'A'.
SELECT 
  first_name,
  Last_name
FROM students
JOIN enrollments ON students.id = enrollments.student_id
WHERE grade like 'A%';

### Each student's first name and the total credits they've enrolled in
SELECT first_name, sum(credits) FROM students 
JOIN enrollments ON students.id = enrollments.student_id 
JOIN classes ON enrollments.class_id = classes.id
group by first_name;


### The total number of credits each student has received a grade for.
SELECT first_name, sum(credits) from students
JOIN enrollments ON students.id = enrollments.student_id
JOIN classes ON enrollments.class_id = classes.id
WHERE grade IS NOT NULL
group by first_name;

### All enrollments, including the class name.
SELECT enrollments.*, classes.name FROM enrollments
JOIN classes on enrollments.class_id = classes.id;


### Students born between 1982-1985 (inclusive).
SELECT * FROM students
WHERE birthdate>='1982-01-01'
AND birthdate<='1985-12-31';

### Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
INSERT INTO enrollments(student_id,class_id,grade)
values('5','4','A');
