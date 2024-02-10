-- Знайти середній бал у групах з певного предмета --
SELECT
  groups.name,
  AVG(grades.grade) AS average_grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN groups ON groups.id = students.group_id
-- вказати ідентифікатор предмету:
-- 1	Висіти
-- 2	Залучати
-- 3	Їсти
-- 4	Мати
-- 5	Вигнати
-- 6	Розлад
WHERE grades.subject_id = 4 
GROUP BY groups.id;