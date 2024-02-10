-- Знайти середній бал, який ставить певний викладач зі своїх предметів --
SELECT
  subjects.name,
  ROUND(AVG(grades.grade), 1) AS average_grade
FROM grades
JOIN subjects ON subjects.id = grades.subject_id
JOIN teachers ON teachers.id = subjects.teacher_id
-- вказати ідентифікатор викладача:
-- 1	пан Антон Карпа
-- 2	Тетяна Іщенко
-- 3	Марина Лемешко
WHERE teachers.id = 3
GROUP BY subjects.id;