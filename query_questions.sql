-- Select all rows from the classes table.
SELECT * FROM classes;

-- Select the name and credits from the classes table where the number of credits is greater than 3.
SELECT * FROM classes WHERE credits > 3 ORDER BY name;

-- All rows from the classes table where credits is an even number.
SELECT * FROM classes WHERE credits % 2 = 0 ORDER BY name DESC;

-- All of Tianna's enrollments that she hasn't yet received a grade for.

-- All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id

-- All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id, with the class name included in the result set.

-- All students born before 1986 who have a 't' in their first or last name.

-- The average age of all the students.

-- Addresses that have a space in their city name.

-- Students & their addresses that live in a city with more than one word in the city name.

-- The average number of credits for classes offered at the school.

-- The first and last name of all students who have received an 'A'.

-- Each student's first name and the total credits they've enrolled in

-- The total number of credits each student has received a grade for.

-- All enrollments, including the class name.

-- Students born between 1982-1985 (inclusive).

-- Insert a new enrollment recording that Andre Rohan took PHYS 218 and got an A.