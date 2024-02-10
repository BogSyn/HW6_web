-- Знайти список студентів у певній групі --
SELECT
  students.fullname
FROM students
JOIN groups ON groups.id = students.group_id
-- вказати ідентифікатор групи:
-- 1	Правління
-- 2	Штаб
-- 3	П'ятеро
WHERE groups.id = 3
ORDER BY students.fullname;