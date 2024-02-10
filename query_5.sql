-- Знайти які курси читає певний викладач --
SELECT
  subjects.name
FROM subjects
JOIN teachers ON teachers.id = subjects.teacher_id
-- вказати ідентифікатор викладача:
-- 1	пан Антон Карпа
-- 2	Тетяна Іщенко
-- 3	Марина Лемешко
WHERE teachers.id = 3; 