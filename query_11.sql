-- Середній бал, який певний викладач ставить певному студентові --
SELECT
  ROUND(AVG(grades.grade), 1) AS average_grade
FROM grades
JOIN subjects ON subjects.id = grades.subject_id
JOIN teachers ON teachers.id = subjects.teacher_id
JOIN students ON students.id = grades.student_id
-- вказати ідентифікатор студента:	--
WHERE students.id = 5
-- вказати ідентифікатор викладача:
-- 1	пан Антон Карпа
-- 2	Тетяна Іщенко
-- 3	Марина Лемешко
AND teachers.id = 3;