-- Знайти студента із найвищим середнім балом з певного предмета --
SELECT
  students.fullname,
  AVG(grades.grade) AS average_grade
FROM grades
JOIN students ON students.id = grades.student_id
-- вказати ідентифікатор предмету:
-- 1	Висіти
-- 2	Залучати
-- 3	Їсти
-- 4	Мати
-- 5	Вигнати
-- 6	Розлад
WHERE grades.subject_id = 6
GROUP BY students.id
ORDER BY average_grade DESC
LIMIT 1;