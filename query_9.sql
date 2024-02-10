-- Знайти список курсів, які відвідує студент --
SELECT
  subjects.name
FROM subjects
JOIN students ON students.id = grades.student_id
JOIN groups ON groups.id = students.group_id
JOIN grades ON grades.subject_id = subjects.id
-- вказати ідентифікатор студента:	--
WHERE students.id = 30
ORDER BY subjects.name;