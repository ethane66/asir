----------------
---Ejercicios---
----------------

-- Ejercicio 1

select avg (numeric_grade) from grade;

--Ejercicio 2

select avg (final_grade) from enrollment;

--Ejercicio 3

select (description) from grade_type;

--Ejercicio 4

select avg (numeric_grade) from grade where grade_type_code like 'FI';

--Ejercicio 5

select count (student_id) from student;

--Ejercicio 6

select count (salutation) from student where salutation like 'Ms.';

--Ejercicio 7

select count (salutation) from student where salutation like 'Ms.' or salutation  like 'Mr.';

--Ejercicio 8

select count (salutation) from student where salutation not like 'Ms.' and salutation not like 'Mr.';

--Ejercicio 9

select count (distinct salutation) from student;

--Ejercicio 10

select distinct salutation from student;

--Ejercicio 11

select * from student where last_name like 'A%' or last_name like 'a%';

--Ejercicio 12

select * from student where first_name like '____';

--Ejercicio 13

select max (numeric_grade) from grade where section_id = 86;

--Ejercicio 14

select max (numeric_grade) from grade where student_id = 102;

--Ejercicio 15

select (student_id) from grade where numeric_grade=(select min(numeric_grade) from grade where section_id like 86) 
and section_id=86;

--Ejercicio 16

select (course_no) from course where prerequisite like 20;

--Ejercicio 17

select * from course where prerequisite in(20,130) or prerequisite is null and course_no not in (20,130);

--Ejercicio 18

select min(start_date_time) from section;

--Ejercicio 19

select min(start_date_time) from section where start_date_time > to_date ('1-06-2007','DD-MM-YYYY');

--Ejercicio 22

select distinct(trunc(start_date_time)) from section order by 1;

--Ejercicio 23

select * from student order by last_name;

--Ejercicio 24

Select last_name, count (*) from student group by last_name order by 1; --Coje las filas y hace grupos para no tener 3 veces el mismo dato

--Ejercicio 25

select last_name,min(registration_date) from student group by last_name;

--Ejercicio 26

select location from section group by location;

--Ejercicio 27

select ;

--Ejercicio 52

select count(section_id),course_no from section group by course_no;

--Ejercicio 53


