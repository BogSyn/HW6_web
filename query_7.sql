-- Знайти оцінки студентів у окремій групі з певного предмета --
SELECT
  students.fullname,
  grades.grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN groups ON groups.id = students.group_id
-- вказати ідентифікатор групи:
-- 1	Правління
-- 2	Штаб
-- 3	П'ятеро
WHERE groups.id = 3
-- вказати ідентифікатор предмету:
-- 1	Висіти
-- 2	Залучати
-- 3	Їсти
-- 4	Мати
-- 5	Вигнати
-- 6	Розлад
AND grades.subject_id = 5
ORDER BY students.fullname;