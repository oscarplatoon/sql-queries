-- Select all rows from the classes table.
SELECT * FROM classes;

-- Select the name and credits from the classes table where the number of credits is greater than 3.
SELECT * FROM classes WHERE credits > 3 ORDER BY name;

-- All rows from the classes table where credits is an even number.
SELECT * FROM classes WHERE credits % 2 = 0 ORDER BY name DESC;

-- All of Tianna's enrollments that she hasn't yet received a grade for.
SELECT * 
FROM enrollments AS E 
WHERE E.student_id = 1
AND E.grade IS NULL;

-- All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id
SELECT * 
FROM enrollments AS E 
JOIN students as S ON E.student_id = S.id
WHERE S.first_name = 'Tianna'
AND E.grade IS NULL;

-- All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id, with the class name included in the result set.
SELECT S.id AS "STUDENT_ID", S.first_name, E.grade, C.name 
FROM enrollments AS E 
JOIN students as S ON E.student_id = S.id
JOIN classes AS C ON E.class_id = C.id
WHERE S.first_name = 'Tianna'
AND E.grade IS NULL;

-- All students born before 1986 who have a 't' in their first or last name.
SELECT first_name, last_name, S.birthdate
FROM students AS S
WHERE S.birthdate < '1986-01-01'
    AND (first_name ILIKE '%t%'
        OR last_name ILIKE '%t%');

-- The average age of all the students.
SELECT AVG(AGE(current_date, birthdate))
FROM students;

-- Addresses that have a space in their city name.
SELECT *
FROM addresses
WHERE city ILIKE '% %';

-- Students & their addresses that live in a city with more than one word in the city name.

-- The average number of credits for classes offered at the school.
SELECT AVG(credits)
FROM classes;

-- The first and last name of all students who have received an 'A'.

-- Each student's first name and the total credits they've enrolled in
SELECT first_name, SUM(C.credits) AS "total credits"
FROM students AS S
JOIN enrollments AS E ON S.id = E.student_id
JOIN classes AS C on E.class_id = C.id
GROUP BY S.id;

-- The total number of credits each student has received a grade for.

-- All enrollments, including the class name.

-- Students born between 1982-1985 (inclusive).


-- Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.
