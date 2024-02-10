-- Список курсів, які певному студенту читає певний викладач --
SELECT
  subjects.name
FROM subjects
JOIN teachers ON teachers.id = subjects.teacher_id
JOIN grades ON grades.subject_id = subjects.id
JOIN students ON students.id = grades.student_id
-- вказати ідентифікатор студента:	--
WHERE students.id = 3
-- вказати ідентифікатор викладача:
-- 1	пан Антон Карпа
-- 2	Тетяна Іщенко
-- 3	Марина Лемешко
AND teachers.id = 2;