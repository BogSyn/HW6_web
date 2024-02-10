-- Оцінки студентів у певній групі з певного предмета на останньому занятті --
SELECT
  students.fullname,
  grades.grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN groups ON groups.id = students.group_id
JOIN subjects ON subjects.id = grades.subject_id
-- вказати ідентифікатор групи:
-- 1	Правління
-- 2	Штаб
-- 3	П'ятеро
WHERE groups.id = 1
-- вказати ідентифікатор предмету:
-- 1	Висіти
-- 2	Залучати
-- 3	Їсти
-- 4	Мати
-- 5	Вигнати
-- 6	Розлад
AND subjects.id = 6
ORDER BY grades.grade_date DESC
LIMIT 1;
